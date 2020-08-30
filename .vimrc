" plugins
let need_to_install_plugins = 0
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    let need_to_install_plugins = 1
endif

syntax on

" Editing behavior:
set showmode                    " always show editor mode
set noerrorbells
set autoindent
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab 
set smartindent
set nu                          " show line numbers
set nowrap                      " dont wrap lines
set noswapfile
set encoding=utf8
set guifont=3720\ 11

set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch                   " show search matches as you type
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if seach pattern is all lowercase, case sensitive otherwise

set colorcolumn=80

set mouse=a                     " enable using the mouse if supports
set shortmess+=I                " hide launch screen
set clipboard=unnamed           " normal OS clipboard interaction 

" Dracula color scheme for vim
" https://draculatheme.com/vim
" with modification from: crusoexia/vim-dracula
packadd! dracula
syntax enable
colorscheme dracula
filetype on
filetype plugin indent on

let g:dracula_italic = 1


call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'   " devicons for nerdtree
Plug 'itchyny/lightline.vim'    " a powerline alternative
Plug 'airblade/vim-gitgutter'     
Plug 'terryma/vim-multiple-cursors'
Plug 'ycm-core/YouCompleteMe'
Plug 'dense-analysis/ale'
call plug#end()

autocmd vimenter * NERDTree     "  open a NERDTree automatically when vim starts up

" modify lightline color scheme
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" always show status bar
set laststatus=2

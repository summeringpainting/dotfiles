set nocompatible              " required
filetype off                  " required

" line numbering
set nu

" copy to system clipboard
set clipboard=unnamed

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

Plugin 'tmhedberg/SimpylFold'

Plugin 'tpope/vim-fugitive'
 
Plugin 'nvie/vim-flake8'

Plugin 'vim-syntastic/syntastic'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'jnurmine/Zenburn'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

let g:SimpylFold_docstring_preview=1

Plugin 'kien/ctrlp.vim'

" let g:powerline_pycmd="py3"

set laststatus=2

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

Bundle 'Valloric/YouCompleteMe'

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

set rtp+=/usr/lib/python3.7/site-packages/powerline/bindings/vim

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF



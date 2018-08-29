set encoding=utf-8
scriptencoding utf-8
set fileencodings=utf-8,cp932,sjis,utf-16le
set fileformats=unix,dos

" If you want to add pathogen, run command line below. 
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" For jedi-vim
" python3 -m pip install jedi
" git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.vim/bundle/jedi-vim

"install dein vim
"curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
"# For example, we just use `~/.cache/dein` as installation directory
"sh ./installer.sh ~/.cache/dein

"dein Scripts-----------------------------
if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/xxnmxx/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/xxnmxx/.cache/dein')
 call dein#begin('/home/xxnmxx/.cache/dein')

" Let dein manage dein
" Required:
 call dein#add('/home/xxnmxx/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here:
 call dein#add('davidhalter/jedi-vim.git')
 call dein#add('Shougo/neosnippet.vim')
 call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
 call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

" Required:
 call dein#end()
 call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

"End dein Scripts-------------------------

" execute pathogen#infect()
" execute pathogen#helptags()
" syntax enable
" filetype plugin indent on

colorscheme slate
set laststatus=2
set ruler
set showmode
set showcmd
set number
set hidden
set wildmenu
set iminsert=0
set hlsearch
set autoindent

set noundofile
set backup
set noswapfile
if(has('win32')||has('win64'))
	set backupdir=$TEMP
else
	set backupdir=/tmp
endif

set shiftwidth=0 softtabstop=0 tabstop=4 expandtab
let g:vim_indent_cont=8
set textwidth=0

augroup vimrc
	autocmd!
	autocmd FileType vim setlocal keywordprg=:help
augroup END

nnoremap <Leader>ev : e ~/dotfiles/.vimrc<CR>
nnoremap <Leader>cv : e ~/dotfiles/vim.txt<CR>

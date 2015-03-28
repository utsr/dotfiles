""""""""""""""""""""""""""""""""""""""""""""
" プラグインのセットアップ
""""""""""""""""""""""""""""""""""""""""""""
if has('vim_starting')
  set nocompatible  " Be iMproved
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'
" Gitを便利に使う
NeoBundle 'tpope/vim-fugitive'
" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}
" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'
" インデントに色を付けて見やすくする
NeoBundle 'nathanaelkane/vim-indent-guides'
" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
let g:indent_guides_enable_on_vim_startup = 1
" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'
" 行末の半角スペースを可視化
NeoBundle 'bronson/vim-trailing-whitespace'
" 補完プラグイン
NeoBundle 'Shougo/neocomplete'
NeoBundle 'w0ng/vim-hybrid'
" スニペット補完プラグイン
NeoBundle 'Shougo/neosnippet'
" 各種スニペット
NeoBundle 'Shougo/neosnippet-snippets'
" Coloro-Schem
NeoBundle 'nanotech/jellybeans.vim'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

""""""""""""""""""""""""""""""""""""""""""""
" 設定追加用
""""""""""""""""""""""""""""""""""""""""""""
" TABキーを押した際にタブ文字の代わりにスペースを入れる
set expandtab     "タブ入力を複数の空白入力に置き換える
set tabstop=2     "画面上でタブ文字が占める幅
set shiftwidth=2  "自動インデントでずれる幅
set softtabstop=2 "連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent    "改行時に前の行のインデントを継続する
set smartindent   "改行時に入力された行の末尾に合わせて次の行のインデントを増減する
colorscheme hybrid
" シンタックスハイライト
syntax on
" エンコード
set encoding=utf8
" ファイルエンコード
set fileencoding=utf-8
" swapファイルを作らない
set noswapfile
" バックアップファイルを作らない
set nowritebackup
" バックアップをしない
set nobackup
" undoファイルを作成しない
set noundofile
" OSのクリップボードを使う
set clipboard+=unnamed,autoselect
" 不可視文字を表示
"set list
" 行番号を表示
set number
" 右下に表示される行・列の番号を表示する
set ruler
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
"""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
"""""""""""""""""""""""""""""""

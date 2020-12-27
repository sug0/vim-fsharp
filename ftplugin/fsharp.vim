" Vim filetype plugin
" Language:     F#
" Last Change:  Sun 25 Jun 2017
" Maintainer:   Gregor Uhlenheuer <kongo2002@googlemail.com>

if exists('b:did_ftplugin')
    finish
endif
let b:did_ftplugin = 1

"set some defaults
if !exists('g:fsharp_only_check_errors_on_write')
    let g:fsharp_only_check_errors_on_write = 0
endif
if !exists('g:fsharp_completion_helptext')
    let g:fsharp_completion_helptext = 1
endif
if !exists('g:fsharp_helptext_comments')
    let g:fsharp_helptext_comments= 0
endif
" Enable checker by default
if !exists('g:syntastic_fsharp_checkers')
    let g:syntastic_fsharp_checkers = ['syntax']
endif

let s:cpo_save = &cpo
set cpo&vim

" enable syntax based folding
setl fdm=syntax

" comment settings
setl formatoptions=croql
setl commentstring=(*%s*)
setl comments=s0:*\ -,m0:*\ \ ,ex0:*),s1:(*,mb:*,ex:*),:\/\/\/,:\/\/

" make ftplugin undo-able
let b:undo_ftplugin = 'setl fo< cms< com< fdm<'

let &cpo = s:cpo_save

" vim: sw=4 et sts=4

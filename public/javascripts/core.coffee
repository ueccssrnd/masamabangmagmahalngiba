$('body').niceScroll(
    cursorborder: "0"
    cursorcolor:"#000"
    zindex: 1
    horizrailenabled:false
  )
$('.branding').find('.slide').list_ticker()
$("#navigation").sticky({topSpacing:0})

$root = $('html, body');
$('#navigation').find('a').on 'click', (e)->
  href = $.attr(this, 'href')
  $root.animate(
    {scrollTop: $(href).offset().top - 80}
    500
    , () ->
      window.location.hash = href
  )
  return false

$.stellar()
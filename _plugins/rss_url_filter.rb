module Jekyll
  module RSSURLFilter
    def relative_urls_to_absolute(input)
      url = Jekyll.configuration({})['url'] || 'https://blog.youngbeom.com/'
      input.gsub('src="/assets/', 'src="' + url + '/assets/').gsub('href="/assets/', 'href="' + url + '/assets/')
    end
  end
end

Liquid::Template.register_filter(Jekyll::RSSURLFilter)

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BDF524022B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736788554; cv=none; b=iLlc63T2gRCI1+iA5ciue9CiiWeD0PE+dhSJEWmZi89EIfI1HUfDiNf2odYDd0Hbs6ufp3BIUNWymwWe6OPQR23txCNUQxJiUalcu5MXNUvqijh7x8JWFvVAuRV98XwlfzJ7t03SYR9qoEdTpI7fqbrT13MKhnCFOI4E5m6Cmd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736788554; c=relaxed/simple;
	bh=GIiEOeTB93Lo2UpAJ4C/mCV/55VbdPEjlXWgMyfh8jY=;
	h=To:Subject:From:Message-Id:Date; b=ESozOwZSFJvLZ4yaQmx84OJHnBwBGYKY7qMMLpmbHzhqVqsuljsaJejasoH8i3KaOB6LbIxsUg0ZtYHaVxu62SmkyVEO2Id+kvjtwWHXaL6sJo6xdE1nqorpfrN7kHAxvr8tkEABrqkEWk6UwVJ7rfNJ3jH4e1Vg8q5pgcvgzJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIf/mGGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIf/mGGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB6FC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736788553;
	bh=GIiEOeTB93Lo2UpAJ4C/mCV/55VbdPEjlXWgMyfh8jY=;
	h=To:Subject:From:Date:From;
	b=gIf/mGGYl5gBM+kZQAgU9INLWzn4AANj/0YvwNM/E83ZjJqBktQ76TOK5fgWY31oG
	 HvsngFdKYnu34fXEe/sRR3W7UUtYLmTGDWFN9AHWpUo4lOuTv+jB8WYct6ibGzQLeO
	 sxwswahp0U3sXsij0WtjV3/T/2sKeWBiWjz16sWRulGN5EmTpeAL+MdXSe0hrpoGgu
	 OJwAFxwqI7LmcNjDdJlBVgAhL7uWXCInsLssD2qxhjqdKYr1xpwZSg4TiQ2jc1fOKC
	 X+ngX6RezLSrz/SOdMJSjV/BajUr7TMGJYIY88iRCz+uI5FCDp3iK28P/Gn67g4DmN
	 8yBsk9eLBfQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F195C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678855362.13017.12732871820721547873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e8ca37949ca3fd250a07aed93b826569114ef1940cb1fbbd4dd5d01b794909
Date: Mon, 13 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736788553

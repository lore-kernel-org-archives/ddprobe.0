Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FA7238152
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750336195; cv=none; b=klI/qIH3LZPRIMHC+8prZKMZ+beVbekOpiSIM1GzrA9QgTOk+jjwXRAELrGbvbQayUBP7TW6+c6NOTXLqYQkwm7MFGfauGWCmrF3gxswUJnDyfLvUqlzdOryU+9/zoD54xwX/FT1PnkhrQNIh2vNkpfTuUzpJoS2mctw0UDN2Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750336195; c=relaxed/simple;
	bh=rQkBF+zvp7jtjwP4zE1DXJ0dO1pwBNusJy4nTyqXZQs=;
	h=To:Subject:From:Message-Id:Date; b=FhlH8CHaJkHdcgXG0Zz5zGP4Gopml1+RPwUI9G1EyrsFeYAeoiZ+WD3aKFri58AISfxpnQQsr7RTsgiL0Q7og9pBEal93M+xh23MzZcX2MrFCprQ5n/gwNsqdiqS6Cew7OulWgc7PlphddPGVGCGTeXKyYGSyQ3332s6igGDsAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoQhbWJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UoQhbWJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B981EC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750336193;
	bh=rQkBF+zvp7jtjwP4zE1DXJ0dO1pwBNusJy4nTyqXZQs=;
	h=To:Subject:From:Date:From;
	b=UoQhbWJLfRqqjXxQzZ5H2QovMFc6dFfBQ1120eMrLj+kWgBvQbS1VwOa0dtGc6i6Z
	 N6DYvnB9Z/Mpc9w+ThOITLoiWTjgosdYs4NjxELRK0dxvGg6VV9wShQXy27hPjB2oE
	 XON6J4nycP0V49SvIoaFCUnCh2MYhzzH8C2BqRhgycct4vqWjAldoEHLvwwSVA8Jq0
	 QrFaDYohpPD/Hd9LjNLyfJjdyQ43X2eBIXmxYkLxtp5sAbpter50g2cbh+TJ8F/cyH
	 oNTIZRmaeyssQLLgkM8jQWf+jMw71SzoimyJyEUNVMAQA7bYi9Xq+Zy7JjJ6W9t5Re
	 2vAnIH9yAt7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0206C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175033619363.13931.14761489770201846594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48882daec2bfefb5fe8fbc67b97e8a42d160839fec911cd93224e7509d7d219f
Date: Thu, 19 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750336193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162F528C866
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751321394; cv=none; b=PEbEp+g0akBI1hHk6MoC7eUJzTdD6Kc/rJXPH7HeWkzA0l/qTRroz8bivCoQRJdiwWlyi9xWxbuAk6fiLvqqtNVilGpj4Yi4x6wIQJbUc8WhEPq/sbhFxzbjYdD5NnUlzHlBEARFp9d8d2Z0rLqOZZWggzpjJ4lyx3XKLxxQMJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751321394; c=relaxed/simple;
	bh=Bx3bH6J/qAz40fvnwQLwLdSelELs5WDfkEhpwOd9/N0=;
	h=To:Subject:From:Message-Id:Date; b=jLqvWPDQwD9du1H/yjcEpMb7Aty/e1+YXmTkduE2b/pgVvBKK9kig0JaEOwX7vfIOZIOCYnlFlGPkpFwnEgP+BMct7sGTTW3dzRAoO7kJzmUmpCqECZNu+aLnQAtHpSuAl91pdlFyjGRipbR2WrzjTooytsezhZmXN/16q60mys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUVJZXcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUVJZXcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCA5C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751321393;
	bh=Bx3bH6J/qAz40fvnwQLwLdSelELs5WDfkEhpwOd9/N0=;
	h=To:Subject:From:Date:From;
	b=NUVJZXcSw6Dbu/NXd7UIWEshaF2l5J0AAWETFrlJxMH0y0aWi+2JxKXeyqXAA4h9q
	 eBeYQTLej/y/HyN8ndx2pUqqXf612ynk5qOyQxQl4lf9UecU1XXSVaHCkj67nqc6Fm
	 +0WFw5VfY+It+T0s35zkEfepqNcDxmzwIFugIkSe/SED/GRDDog7hUFUcV2iZML1sE
	 AQrXqOoaVViFbRw5jR5rUTv9bLW/Yak62+uArw89D8wKbBXAQu3c9G0FULx/py3rLi
	 GA4l1a81etWb3vq1Wb6EJRHKs1aMYAQg1h/JU7mMHllOdDlAeY7YMp6/ARmwtrAgWF
	 zlJCtrHWvGoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A4C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132139357.19235.15505679746612276447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a5b06eaee8ce92f8f2abf5c49e31315ea78517a033430277e171312993fff1f
Date: Mon, 30 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751321393

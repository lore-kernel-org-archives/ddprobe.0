Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B371CAA79
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762723194; cv=none; b=YHiqu2wMVZne87E3lk6GNAD/aqJlRDU8as0YKgBxavI471yyVGDM1Rh9gJSIbJ0aGsk8JxK6FLZz2Rr2xYnD6evPoIogSaR778W2r+9f9mqG4GFUgNtaeq9i1evEKjHncyys44Yf+O8c9IsHUgLIZJ9+AvJfoaG6//K2pTXJg2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762723194; c=relaxed/simple;
	bh=XnQJAqwssWTZs/KtH2pgmap3Oke9SE7ew0czfbnwD8A=;
	h=To:Subject:From:Message-Id:Date; b=hlkjiLcqKZMMwtQ6VIfX5dsBaEV7pCxicOhISokxQFJdUdzqKs5OycOI6WxTRFcUbGrafrAe3kLck05lwEO4gxGNxf/IhcxYO66Amb40yOs2R9ZVkdPZv2V2o/+l2d8ZZT28NrPoXDaw4eeIbfEwTDD51Wi9eBRst+WFFfl/Oqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZy3wU28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZy3wU28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7749C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762723193;
	bh=XnQJAqwssWTZs/KtH2pgmap3Oke9SE7ew0czfbnwD8A=;
	h=To:Subject:From:Date:From;
	b=SZy3wU28jvGLf4vLRKq5TZBV+kfO+5PhTX+TAFVOIxM40TuE3QxjGjLnuBB/zrI5C
	 9oEndQJzYtgbK5pLbVxvoIgrcLBNSMkGqhQZrl0mnkHjWFMp9Dk/q5YnEFJcxUFzul
	 eHUC35ZFmEwZ4Bb5ar+dbL3LNj531boFeH4GAc+ktb/43A9V/opoC1j8IcrtTThfOb
	 2g252tIwyfMuB3IThUg7JZXrmANCSdO/D67s9yjiQPtWa5Qa2CcLLkSXMbx1MbVPX0
	 Pf63023Ckhh+qkDI3lGt9N6xVMLV6e2GgMuGF79snZeEQBaVI+4EsRitbPVjp1pgVM
	 mr/o7ontr+/EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9679FCCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176272319358.26643.9043745085319869334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5ae27b61cc3138225440d417bdbd769a0c731a868b977f43bdcb1da7bc3b5d
Date: Sun, 09 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762723193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FE22E6D33
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750252794; cv=none; b=WlNzvg3eUXdzuGdCKZS63WWiwu61B+jb1kMrExZgiLqeG9XQBBkNom0787CX5bMG8baw5jip3WwYtY9ZWFq9jV4L+1VJPuLrHXD4Gz5FmE/xy4v839X2zLDJyPnL/eme4s66TpXrumFOPPfTNOGHaxgrBT8io2S4s41zEKwJHqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750252794; c=relaxed/simple;
	bh=sF/L7o2tTaYGB+ntxPSU3eb2vutY0XE6lAUiB/Hes3k=;
	h=To:Subject:From:Message-Id:Date; b=K1C9kti4fqRUpWANUGml2OZY9gbhplry4y0zgZGPrBf4wP1ZLqBfye/U+bKRgFdQSQBJLA605mFADGXYdAwLrp5eGdQ2QH46PU7Zj+alJn7pqZp5YUsexLMOmqw+yyYrSVpg7/Y65bk9BlP5wqmXggq7kqxZeBU17i1yldgK8Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oof1Z04u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oof1Z04u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0072C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750252793;
	bh=sF/L7o2tTaYGB+ntxPSU3eb2vutY0XE6lAUiB/Hes3k=;
	h=To:Subject:From:Date:From;
	b=oof1Z04u++62G1dqDLaw5HnHAzTeZDX37NsQSUb/5ghcI+cf4B+CysrhydoSiDomq
	 TSX1Sa0+vcbyddvKcTWiGUFpOoUNgIayhEr3gPVydWa7O2zlSliI6aptKSRHwc8ixV
	 PD09LQYqM9vTVtB1UvcV8fJ2La80Wir0cFOhbp4hxdwzu2GMGC0l5CxPHg9EYVMkno
	 rOM3YCqjE03UZ3bECuy51VOTpWOJLuUFto7sfUOuANXCLNRxzeSt3Ot7VnI6221I4L
	 X/EKj4jX4cmeguhRRDYSpjCxwYSy+ey2BrqNF0Nfw+Hq0z6w0NIL2NO2fN/FpS5ldh
	 i6GdcwgTOXuew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB10C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025279363.3251.18341527919545352068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb39bdeef5e0f17138c713f7da76635944409483cc0e9e271e43d4f2187628d8
Date: Wed, 18 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750252793

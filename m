Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ECA28399
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759036796; cv=none; b=QFFDeAwio1qyBnjbiThyfZorR/gTmVtp/14jEY3R2/cIEDGOjnVZqr2YrEd1W5eSos6TuC3GSg39CAHLHOMfp4yvpeI7yPCKc1BK5JSB93vQB1QudEY6VohHDVKa+AtglbNTId2MpAKbbKhCTOQ6TT2yzTYuUb44qM10Ni5Dx/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759036796; c=relaxed/simple;
	bh=t0ZpkQ+OOhBF5sAeGMe/QUE7AGp+EIA/XADI9sb6em4=;
	h=To:Subject:From:Message-Id:Date; b=KXN41VpaL4V6IdAv/LVF7ydOHPWzkBZvacd6MuWOsl7w2aqKRM/+QQG/UqQg1zWTcJ98ie1OWhrxQoeb/2iXT8oyREkCqTrmb1PTrg5TPCJABA9Hs/Ug3051KgiMpuNvy7Ro+wsKB4s0fcr2Lf/v7OLdbtEw9a8JsWSKHL63zAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bpir9fn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bpir9fn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF4C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759036793;
	bh=t0ZpkQ+OOhBF5sAeGMe/QUE7AGp+EIA/XADI9sb6em4=;
	h=To:Subject:From:Date:From;
	b=Bpir9fn27q+dC3Bgnzi5TMzRQ5y8TeMfWRnppiGatAaqKxVsHFEWJKLooAPPhM3JU
	 nW96Uo0qUku0DxXzkY5JD9BTXrNs2yVh70xTH8KbpJgmG+M2yqWnhXIK6R2iNlYcB/
	 bc5xqfcEikNZuMtxCUlXa+0kJQzWdK64mC8BkwHxM5aLUl+gsoOi/h34msFgv/JTlw
	 71PY9xFOgnFAzPERLKuzo9TGRWx+osl47ZGtSBrso9lV1ZINDAcDKLdW0bIUyfIf8s
	 JFwLBgWgVg64yyv2IqCB77Uq8W2dhG2CVro0JsA84GEdcvr+BsKaIl5qBu+2BkFXT2
	 j5O4YRDFcS+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944B8CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903679358.17794.16570867027874738381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ba645e8bb0560f38268e107a713d1a397448b5c39b6e1b4714c6acd38cdbc3
Date: Sun, 28 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759036793

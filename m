Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149AF2E888C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777207054; cv=none; b=MI+ZgFbeHNhks4LmIfPzK+IiFied4Tr2BaONcAONFc0RgpVqjdRqAKlmY1q2Bo/5ietJcbkFD66AyER+qSliXnat5bHUXra67zwhW7jesb2vUSDcJjYGpc4UF6tppbjQ3AKNr22q6PI2Vjd3v0hyOBbZrgJkv5sWZuLKnCMuz30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777207054; c=relaxed/simple;
	bh=jHXPTPeNqWZPUR3qWFWc/9a3T8A/z/C1Y+y6aPsiKns=;
	h=To:Subject:From:Message-Id:Date; b=Rg13OnVtdxsHNGl6taWKKIXcvc+BXWuk+SL8bQGpZXgTwd2jVbwnXF+g350exOpwC1V92UPQROhTtrWr03yPX1Kf1iFBBODbVhC367oY0sNkaedSPsbltKh3Y6vy8JeOr0R3Abn2iJfGEdg10rr9jQHa39J78RccgdJP863cO/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLM4/18M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLM4/18M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B721DC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777207053;
	bh=jHXPTPeNqWZPUR3qWFWc/9a3T8A/z/C1Y+y6aPsiKns=;
	h=To:Subject:From:Date:From;
	b=cLM4/18MY6T9uqsUP2zxTTDmwCxbf+bb2kbKAKUHmgdHoEYl8UqaAWaaWuc4Y2Y1w
	 2DRt1lbw8Cfc2cPpRDQO4W6NzLUmeZccdbjJ4edZjL7cH/eJxzVr7wlwfmsIigwKqm
	 6vzCBbyIPTdI8ZRtpknVJX06S+btJWz6nvkNJQjktWKGPCVCiA0QSYBbHX2EP3gwPM
	 kazwIvm/b8G/oTc7XiVugjm1P9KbWLsjTGzwxdR3dMK9n8ZjVgexGiAD2VRTnm43U6
	 KvLxF5DUMj6txYpm6RT9MRRgrzmWujEofZRXQiq1u1uYBBikIF/omHev1bpR+Y5yg/
	 5rrrtZmXskuRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B8DFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720705368.27322.521769396792906392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333ae0636a4ac68693af0353e59322d1d373a0fb08f24253b206909fa765c616
Date: Sun, 26 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777207053

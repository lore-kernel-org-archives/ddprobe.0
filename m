Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4914717B50A
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789347634; cv=none; b=a1viZNiRcV4Uroq0Jnw6ctpbIXdQ3XPZ1IeJ117StaavzFVFE6UEsVRGaomYk5v6FUHGCM6K3cN0eEKIWsggFz64c0hdONv/0uFUhauUMlwDiywXBPQekwcqQ9PF4UtpgSse0HsWNpJncPb5TDY5crpJ/Tf4gBCHfw47m2MdLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789347634; c=relaxed/simple;
	bh=kpAAlHIN5Vv0cs/D9lJ22jJh7vMQFHIUOg4/Gc6GdmI=;
	h=To:Subject:From:Message-Id:Date; b=jY9r/Uiz1C5tnkF+EhkzHj6nvJTy2nYMgc4z9FM4+EVMCzeNLDd+Uh/3UgJm38uHt4baB0bk+YhmSCN7QPFQMm9TUnZIsAz9f3sF9i93ormpcL+U0dXmSJB5eZWpT0ow6uS8HiRAjDPSZHtCMX2ficWEvXYcyvSLj+cESTmX1QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgABOlTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgABOlTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5EAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789347633;
	bh=kpAAlHIN5Vv0cs/D9lJ22jJh7vMQFHIUOg4/Gc6GdmI=;
	h=To:Subject:From:Date:From;
	b=WgABOlTPqhb4WNexrqQzuPe0HxrJUQBUXLL6tst73rNGxq8frTEglDx+Um2e2VBTc
	 qR80QFVSjoyIRp9dI7Gaig7+SLYakf2aOJSh3vc5CPS/B8bRx6sx72X66+yUt1eggl
	 7fyTAO66NdKFL15K2IDIpzB2Sw+6vNO6bG1b/Uv0efL7KEo16cy7WXtdHnWKMgdDmB
	 VIFUT+8F8rge9FOHEXnMDmSwdiGvi76iDQy01eCBuCqPRaRDkeF+CTM2tKwOxjhp1h
	 p+2ahtis5G4f71uqWEK3bkChPx7wLpvQH5nWfxChZRUXgf4Tr97nZvcrbbY9D2RaKv
	 mKg0ERAEQi8eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E18C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934763368.22552.10990430990204575912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fbf4d9e552d8de3f2da040737dd06061657a0582338b3a9a7ac96cde20f426e
Date: Mon, 14 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789347633

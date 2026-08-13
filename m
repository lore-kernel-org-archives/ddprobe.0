Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50895263F5D
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786602034; cv=none; b=g8tPtIKV0l0/6Rf+5RitlGARscoBkWotOqg8EM7C1MB1+ifp0Y1GQexQbHhxgp5TQ4QaQ8bwKJL0HqvgGBVMA/g1KJvMVpvdDkk6pVSFViO5ET2pKq0IloodqkmEqcB0yzuvMAoUVxODf4rVS5VCqSRQFuGF3Qxwt/nQ2bxxQOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786602034; c=relaxed/simple;
	bh=F/xU/6Od++YaVcUd3+hEKPIb9G3lgXDiERFNfIkgMVc=;
	h=To:Subject:From:Message-Id:Date; b=OySlckZiEp+aX3UMagGIOsmJmZlDyLX37NAETg3p57B7wnwvj5RKn+TYZInAlbbrA6LdS+jObyDncXw9rSmLHOm/xMAedy3BQkJ3SaSjtcOAFt3idM+r+K6+DaRj3Ml7CKi362G6+0bitMsN1eJOiIwpqILLDRTD20O17NCv1DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYuDZ1CN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYuDZ1CN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD36C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786602033;
	bh=F/xU/6Od++YaVcUd3+hEKPIb9G3lgXDiERFNfIkgMVc=;
	h=To:Subject:From:Date:From;
	b=XYuDZ1CNRnqPUpoAjYicv/V6y/DoBNQz7v434r70uZciatGWhCD1dFHUZbitklaiV
	 FXzKrivpbf9ggVt1UhuBh5rWV4LYlITbdPyEhxDPkLM+0nLOcIV2CWOisK1PrhyWhS
	 sf2bN2oRK9GJx13ljwcXLIQyN1KdzRTT3ybc2kXpea9mBUTqqj5n8OKBfz67P9TAGj
	 jCqczHmINiYJwhjXeVS4eG4D/erIiZ8MJH1yTcuMvkySpt44dEDqDeOGQpNCe1kc/5
	 SFi1ElVsXdaG1UR+sLu2iAi3y7rll3snZZosPQvboL09awCriPdh5AUCH/ZTGLFnda
	 pzEpZC1+WHfVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8252C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178660203368.1664.3656563310374018344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d88e389774cb236280b135e0391f6fd1a83c5a1382d92fd75a9779177f67c6d
Date: Thu, 13 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786602033

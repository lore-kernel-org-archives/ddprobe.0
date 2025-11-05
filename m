Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C316226D14
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762306194; cv=none; b=RCPeJT88xewkw3xXi9cLnEZ1yS9xvJiSdkIuNbnXhcrEFj2KOShjCv907KlaWI5zSGybmMtdfzw46yu2lLl6NFVulKiZFfeEOGulbO6RBUE3896FIaazHSMs6YcEJwehVrGnML9CoAXhKnNoKkfGP5wBqr5Ic53d5kY+K1V12x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762306194; c=relaxed/simple;
	bh=z3MaZsdSq0L9KPICT2Lwa4PZgdfmgylxup2DvL+/05w=;
	h=To:Subject:From:Message-Id:Date; b=PynCWbyjpVPTQuGsmmInfDz2jbseS3dpDJRNc/Q95zsWmshKxvE6hmrruOFXeaW69/2TVLvA16Q0UfiOIeJMNxZAdPOodFxvrHzTWLlkI4r3IQr4GWido5PKEPsWPvjWA9ux2Sl6Sq68wfvmVCsL+E8RaUIchZI2kl1DZOfYgNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaWdgpzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaWdgpzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA42C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762306193;
	bh=z3MaZsdSq0L9KPICT2Lwa4PZgdfmgylxup2DvL+/05w=;
	h=To:Subject:From:Date:From;
	b=UaWdgpzvMG/akhZEy4lhMm1g8UCYvaQKn0gxmN/rD/PofTTNIHznoqDfcm3Y9Xo7Q
	 ecvxxzqnfTME5ODs4LZ6uo6AFmbbMLNgBbe0bNKrVA1bQJwqDI+Zghu4zFam9sX20F
	 fagZMLSG+4DjYTSuLlvBQRiMm5vQ27djgRn0Mf0iswknEv1IoFlwD3LtMhWtyn+ZNn
	 Xt7I4uhwP7IhBBFFrFl2KsbgFNAHWHpLPLCNl6LKUqWBYOxzaMpcxGJuEYlotoBqUt
	 0MaNWrzVyMyQwLazdj80nYtu2TE53miVrkSLovYDlzi80AudARpG7XLUaoedxC6sAI
	 avqwTqyaprLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF1ECCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230619358.17728.16281131070421100181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3840a5a387e7c1372dea2ce8feb91627270f22c1d9e3dd9cae4368848d3cfc0
Date: Wed, 05 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762306193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC853FAE14
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787762438; cv=none; b=e+1WyVplAPa/pLN/7dluE8GmgrHSaUnjNAfMmSCULwKgdFIliMvpoYRGYCVjToEaNUsXziS0Eqcl/oAaZlVP73UwDDeuOvaf2bvuZE0dR2tGYYUMCzthIAIaQUHEFLH6492ubm0l/oCcUm5S2/CvvGyBnU+gapHk+YI5by/kl98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787762438; c=relaxed/simple;
	bh=tQy/0sGGSiIaDzcUsRNJgl4PBCkdiQegSauxZZdBoF8=;
	h=To:Subject:From:Message-Id:Date; b=VJPz/dx/AsEqTYMDKX3kKaTWSCg6hXZ5X/XP1Fp6PUBSAs9xoRwcySPetdHOIu8AoZcdSSYLZMrx8L6PAx7LOhW0A7w0H5nvMcbGsPeX7TOUqJhDynJMhrw89J8gGED8ZFAblaVyv9ltpdc0e0u4l2UK99DnWsaosHdguGpLmKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8ZEvMxu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8ZEvMxu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE65DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787762433;
	bh=tQy/0sGGSiIaDzcUsRNJgl4PBCkdiQegSauxZZdBoF8=;
	h=To:Subject:From:Date:From;
	b=o8ZEvMxut2V3lW/sC9krNIHWBmYFLUlzFKV6i+vhZCmrPgq/8PotqqscY5XmkDbAM
	 q5d3oTJfJPl/Cs9fl2NrCn080NzRZn96eYNrFcfZ6tgEM1ZFLH67iepGPTKXwLa5y9
	 VzIVP+wQGIS2VvDU7MTMIRT0rdzLKqcTIfigfvyXO9jArL+WbbXCQIRX9KRVtIuWnp
	 J6ca+DDXRfliTH82hoP0y4sbemM7qqVZUCk60l0fbuJbtNinM/BTep0hQXM6veEF6q
	 4Zl9imDhI5HoaSQXEWSHa49ROVpXAgD8gq3YvVQRWQQEdd+xmuMyttjTQHWdPq+zzO
	 2R7XbgTTXdOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6E8C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776243369.5161.240509838637552672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e12e034f5c0427b55cd4df17a24b816de8d7bd7013109199c9088c27f48000
Date: Wed, 26 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787762433

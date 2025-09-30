Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6012FAC09
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759229395; cv=none; b=F+f1QbMMTiWof8Jtr4w/qdqfj0ZuJGmlbIBxBmuAHoiCGYndkiRE0U0Te2xv4HB8AI1T7pEiagdjaoBnnQGMuFNo2E+Z5Bt5LkGzgZTBPPeHj3XLwVA7pHrtmHIUj1p1fX61UA+Q+S0E+TnxbqTWeNvEVniQoyoaZfPxLx0/Ygg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759229395; c=relaxed/simple;
	bh=nUoItdeuaoPYsWD+vfFwDS0nzYdYKSBP95KaHJH//Kg=;
	h=To:Subject:From:Message-Id:Date; b=jcrFxP96EKjhEYesx0ujA5yRwm1z/InjTeuKm8I231udRte6rCiFNZO1SFuZZUK05p7kScOOg+hbGucEsCtJvC09P7pGlmj/zqJaYfpHiNyGw3B8mCQ2WwRttPyfmH4+fFY0kopHmD00vVVMAni7OOk3LM2Hgnm7meoZFht96ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N73pktOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N73pktOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB95C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759229393;
	bh=nUoItdeuaoPYsWD+vfFwDS0nzYdYKSBP95KaHJH//Kg=;
	h=To:Subject:From:Date:From;
	b=N73pktOT/sD05m+H/kz0cbqhJgSUdeX3MqjkZwe7W6YQSWlVjeKdbUHCr770GJVl2
	 /8uavphOkzkyhzE84t2FPFcJ99UfR6tuN0zGBRgadwERdq2vIbb40z1rGoAkpPbpjb
	 iWoJI32uTQ175ZS8zIM6DXT1/ck0rGJG88zG/4AMCYd5ZUXkhEmCbTYbEJ5EA6OtMx
	 iXUeb3oPt/bBgYdzUms0xpAgABvCCG3YSKYj23Pv2TZM+pTYISXAqpYCuSm3o8g1jk
	 wVVC5W/NhNpvDPhIHUdu6Y0ZwrLdqWgSLIM2MsE5SMMNGvQZaKHVDGNiaNcZdWLE6Y
	 +6pCmpz+totng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC5CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922939358.2144.6527851613523363894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8518c42a5ba94f750ad88065ae8ddcf3390553696a50bdd20ba2433de6ffadb1
Date: Tue, 30 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759229393

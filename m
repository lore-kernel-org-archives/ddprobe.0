Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A4D629
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712450897; cv=none; b=fowxxzkHb2GIXulvMeo/M/jgVmOsKBw5txtULnE32tQzz5CKRosWaIuHue4lSzb9h1XZ8Z8ySxBMICe6iXoQPb0K4CgbqONsoUZMmbX4qmeY9CMNU0JrB0gI/pjoeRNAzzcRYGfLgnwlojRuUrj1aaLQ9OpIinKRytMELcd65x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712450897; c=relaxed/simple;
	bh=HCXQuteKTax2rm9b+ABGYpqvadcCLR3+Xy8RWVNpSfA=;
	h=To:Subject:From:Message-Id:Date; b=BKi2ERR0B7wzzrCItP8KAQF9kapW9KjGVDy9nKRD+ECh+7rVmK5R/TUSS2NVziYtRSokEwksnHM62p/OFuKBi1tktOTP+GvLlOluBnCrOOGVKuitx+Quvoe3/KH9ht65Sgmn2GuZG0j96+YShWMj2Cap9OfVI5AkQzpzH/5Jf3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulLJ2d0L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulLJ2d0L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75473C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712450896;
	bh=HCXQuteKTax2rm9b+ABGYpqvadcCLR3+Xy8RWVNpSfA=;
	h=To:Subject:From:Date:From;
	b=ulLJ2d0LvUrow9NFCVUHq0WB+4zrdWhkgcDuBv2ThkfkRjAE5qVD1mbMaQKOVn9Kj
	 0eRkDz56wzvFqBGNuXE1k9ni4P1XGpvIDau5BuUbU7E8+keF382hKamLnOM5PJHclE
	 BQlrb+v8HXA6kE+kx2SaWvSbUd2j1Pjk6svYReTlBEXF40GlST/V5+r7+9E4KsU0xo
	 EpCxfE99YtaiCo65ZUFAm11z9aunGet3BDqIBU8Ap3PHShw0NLs2AQ0KFN9VRDdU/Y
	 kl0cDk10IAVKVrcmuhHV+InEarvXUmpV3ZwZDJ2Laz6Y5eaWW+MfOD6a5/yVG5KMnk
	 SXKijGRaSrapg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C65C67861
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245089637.18017.151520245243680833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acabdd235604c37353e0a387803d277a6c47fa16b288b6d33759433e4a3dc09e
Date: Sun, 07 Apr 2024 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712450896

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D47202637
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729268154; cv=none; b=oiDm3xqDUyH4S4Y1CLaiNCx+ADcw8Kk0bMi0doMpf32LHKFWMaSjtaJASgGcnc5ghS7IIqXZIKoGtmcuMSFIDF1pYCZPq3Iw5gbuuGDAK/5u8Y13xvFP/pW1h4zhI42wwpSHHJQ2ge++PhgLC2rQOuc5hWmM9g+4DudAELJO4Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729268154; c=relaxed/simple;
	bh=4/1ehGMFFO6jHUsvRqKmKNIem5rL1ZTcsPAmh/AtKKc=;
	h=To:Subject:From:Message-Id:Date; b=XMNPvqxqBbOJVdwvdfCQP3TSMKqcebNcebwMF1sc1exwHpe7QKXgflx2stKk+/94DwekSoR3sg+xXoUuYvIdetrTYz7fflmWBTweo2Gxrx0qzLE5oIkZtWntIhDMRmz111A7smRc4532tERf2fw7TtMyOEmBP0O0XJZoH5jr3xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heYCYCpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heYCYCpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA64CC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729268153;
	bh=4/1ehGMFFO6jHUsvRqKmKNIem5rL1ZTcsPAmh/AtKKc=;
	h=To:Subject:From:Date:From;
	b=heYCYCpY54pDXgDaTelvfULjlJZLDYIO140IbbM7A2h+KnmPNGSzcYOnhjtVRnD77
	 CVrj26QtflkoLKodTYGDDBn4KZ8fKcX7iTT7KrNKjdIj3FgSrLBnRTc8lyMNwQ7qu/
	 BTd+EzCBb0aSOq4KNawjBqZ5uSc2GYvDFDzwCEkD09li7WmK2486+lAQ7mhlOzgaOo
	 W34SMOdzCnSDicXs+omJh1ViZNFmm/aIEzyo67GzkkTZQO2HsFlVxP2Do6U/Fi1QFK
	 6+M1CmmJMOxopD3A7ScvzsXwnHgy/HRhs5c/XpPYppSE1zzqT69dCw08a/yDkbXJ8l
	 IFiT85sttnJqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9767DD30019
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926815361.12865.3059375067298040851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d0cb6674e25c8f214c277f56f5c83a34b6981fd289f5df55910148583999b7
Date: Fri, 18 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729268153

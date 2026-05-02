Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3342632571D
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777723054; cv=none; b=Z3hKs37RRabob+nwfnxzOvlrMvv9jjKc2UjHrnFPskc4863/s9eh72ICAiDoAMOJWkh8LSKbtdWgvLoh6/dW4EFKisAZRawvU/QXxEgP4m3EjAbZCGignd+P8J8HxjQNfflm9akCNXBL37OzcZsnUamgp387NKJH6mNFUdAbcDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777723054; c=relaxed/simple;
	bh=ugSVwjJf9b+vU0rfcwlw0yOxf0yczfpJBVbooPvC8ns=;
	h=To:Subject:From:Message-Id:Date; b=KxYyHIdgtCJHuXTEl/UiC7ltTD24/bVlCOWitG+9LVj5BG+skO3TyShK2sJHjK2TS00wQ6lQf26rZ8QBEdPvh+TxaUg4dFsyAvYkhj9pKIVn/p+Zudc1uk4WTjPGx6I6HKBIRZiwvCdAxFlA1l/HWisSS65dUa+AJ9wuvy5TWyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJ+hyCzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJ+hyCzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B18C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777723053;
	bh=ugSVwjJf9b+vU0rfcwlw0yOxf0yczfpJBVbooPvC8ns=;
	h=To:Subject:From:Date:From;
	b=kJ+hyCzb1VvY4dKl7o6YGOKefqzxo4ujCCQox6FBgkj4a2pF24Hy/u6EcJb/Gh8Y2
	 wEicDrTYH/o3WsixicyN3xt6M4E4meQ1fuE4msBVUHUMfWp9YGN8haw51lIB01E4BR
	 xZc1H39akbjRG6swp67CjTGv/dC2N/Ch1e7iSSuMBbV0E0trBObI8Es02Z2cdF/Hsp
	 XrdHF4FdyyFkK1JCsKw0YuN6taIk5NicwsZ3dUo93pYEILWKspgNlY94ZzzE+LR4+N
	 vWpRVbwxy/LPrRVc/jYIy/YGkOI+/ECA+ovCnsyjTlCKaKbIHaRPR1iX9eKQymXfm4
	 6UjYbdTh2IEIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98CCCD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772305368.19379.8379974728944513204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d0a1479d40a2debb55aa9978a5160efcec4bb1fae5515062ac4d7e376776ec
Date: Sat, 02 May 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777723053

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166312737E3
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757797795; cv=none; b=L5lv4rAnnPqincEZYLO713LNeKsTM+HKmQ+hcxdTHrM6xGS4WqapJzx9sx94Cqe0i4VbT7NvvvvkCmSdUcKn4ZvycVO8NhPhCUz2h77VMMTP4lv227NxSGJ4MvrVkby2mH7mT9tkF3mycRPDMIytOH0PcxaKZqiOsqCDzZZdGDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757797795; c=relaxed/simple;
	bh=NwuUsjBgBytP4YbdtE/ZOfWuLluHMOiqs2VlJIY+yhA=;
	h=To:Subject:From:Message-Id:Date; b=IWFYkcYPGVuggHwURkcDYEmwMu6GoHiHuUXqZqiKXz2KJRMT9BRTtqdLOiZK9BGKt2CDAgSyAJgMQRNndWhEEv10xMSI43lIJFf/O1ZYZx59BmkBUNUuNQQy6TSBAN+5eSgpkyEvwIUJHnNN/59dtdirRL0F8//Yo7XNnAgx8yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uf9ESHvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uf9ESHvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71CCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757797793;
	bh=NwuUsjBgBytP4YbdtE/ZOfWuLluHMOiqs2VlJIY+yhA=;
	h=To:Subject:From:Date:From;
	b=uf9ESHvNM6EZ8oiAdkMdcV/vxgodeZiou0l05Vvvs9keFXneHYa+X9tc6sQEyEJv4
	 JrKLXVZiCxk4Xl8MXp1roRd9z9DeLzKlUqJ9mKGykJDco3/r5uCnDgvBGTDzAMBAHE
	 rn+2sBBCGo5JdvuIeEdJbBRYMIVLDn/3p7u200Uxvx80U5VAL6nXSwKknY799x+hVw
	 7Z6tPrPZ5DXRUXcYvo2rkF1YnL00k3OKT5coU9jb+8N+QRkeNtTT8ts/GoPmnZ0+3O
	 /iFH9bzjvsDKRQYeO6SUPGPDQdLNaXokp8SanfmvE+3+Topx/ChT04JeH2etd12eRl
	 Um5Lp8zNRSKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957D6CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779779357.32323.4397169438237587481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bccf00289999eaaa640b5c2cb318b852fd151f30055766306508d831127e464
Date: Sat, 13 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757797793

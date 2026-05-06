Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D49833066D
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778089656; cv=none; b=aAPh9E1ZiJQHoJ0DSbzvAVQNBfR1yJT27iyN79HUFWVLFgPJg/jK0+BWHmiRupA59PmBY2Yyh11KoHdaBBKXsPo8fsLP3nT6EsP2cIzQHbdIL+2LUGRjdnaV0DLLQDuP3nfSjzrgRd/xme2wuycRUkvWmIQpT6+n+Yssci3GmG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778089656; c=relaxed/simple;
	bh=wfCBncH4W1IFJ/Hj+9wDFQErpXp9H+4n3/x8KY5uNAc=;
	h=To:Subject:From:Message-Id:Date; b=V3G0LcNkBB80AD+KpzEUJjfhUANoC58Qx8vendro7X+THEpecgJyRf7CAUgi0XaVPhENIz4Au630TR3YNRqQ/X57nru7wiL/ro/pjRd7zhi5ly9espOUYZoOmJVG73qvlb8L2O9UPrkcwB6P2Op0+T9Gog4AiKJscedFg+XhlRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzCLDQmQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzCLDQmQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71BAC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778089653;
	bh=wfCBncH4W1IFJ/Hj+9wDFQErpXp9H+4n3/x8KY5uNAc=;
	h=To:Subject:From:Date:From;
	b=dzCLDQmQQ0YAURren2MV1cX2MeB461jveuYINIx27WyWkkt/FhATWijVhtI6NeR9Z
	 44vjtRsuyJEVSQgSkB6Jvh/++FMSpYYT0nBPaCkBdXUPR6z+UeoQulbyzJ/b62DUsA
	 4GLw1xyUH5lnOnG4KTObW9YmmaZn/s1EkVLD84v0Dn+4b62zMpKUMvI8FyzLRItW95
	 dTWIfXJdrWu08pHt8xgD+onAbjNOeHSid6/c8aCC7/7jgeffC+/pI1449p2T4+aRQr
	 QLqLQBAS84mYZBbanPG4FuuyhHWVOVt8IrqDIgF+iw1HpX1xXnZHOSyZRrqo5sTwhh
	 PA7YuJR9aINtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B3CCD3439
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808965369.816.7631535534289689029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4095388b44a91de9d46c8b37b8541b756d1f561bda6a74e65aaf1b636958880
Date: Wed, 06 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778089653

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E0B84A35
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766862234; cv=none; b=kEJgLlAmKuMl3I8nAWYh8ADNn6rqI0JnXkyLNH05YPGFRmF/bgizPayVTDSoEljPRVpKSPw8x6KCBerIopOYCUqCCyOZ4z1R5cZQK9mrfif1/t1/YwG43pl2JN2YJrgyTEq6F/4O8c+JihV57BW/98P98an2PqsBTTL0JUqQI+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766862234; c=relaxed/simple;
	bh=2WWbuQrWsdYZdd19OzBhw2IivJ67c0VDCPL7SEGrXZI=;
	h=To:Subject:From:Message-Id:Date; b=I2BDiflnm8apHd8WO7dG8JP1FV2cHDuIvIEVNWFoE4L4yeTeRFOwa657/P0mr4g+rquoSPnGlxRq46Najd7ri6Tm7b+949aibsoRL370vqTx7LKwlj8DvUCUgL5Wnff84pNoCayBk16Nkhd4dUWhovLPY7vmoLWNJy2Yd/xNxw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROQ2cYtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROQ2cYtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D47C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766862233;
	bh=2WWbuQrWsdYZdd19OzBhw2IivJ67c0VDCPL7SEGrXZI=;
	h=To:Subject:From:Date:From;
	b=ROQ2cYtKUH0P+tklCZanE/DyChWtuQM3xLMv67C45T5wzdrpYQpdjDtZReuTW9nzj
	 Hmt8llQp2DFgW9bL8yksc4/KWl8N4Qs1HIKGS4QQ9nYNCexy/0HA82OvU0lPYfREMV
	 Xf+IhfixEYRJiPQdSmnjZ8GpC3DmOwzuW5dWc7vDmDC2JqC7jTZoE13NTl92GI0zba
	 UYHR++fJO9EvyyNyHuhr8FXf3pkoT1TkYvMDOZBdkuRpyaLnNVAgcuESXPJ91G9Di2
	 IIVuROTJeXL971tF8v0biUEKLccjM3qkGjmPVtESfoRBMdnQJPjh9tnpalI1qxiTu3
	 9I7MQDMua/cAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72AEE92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686223367.13837.4471113162450346697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 993f4551ad0512e56ce94d2eb72130fd8c2253aa36d375bfcc2c6de35e04ad65
Date: Sat, 27 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766862233

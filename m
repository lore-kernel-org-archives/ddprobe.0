Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DD41754B
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712861963; cv=none; b=YJPXSDCKQqdQgUqhpAyTFHDFqSVEf3wtU19IaJs/5sJZBxQp8N80FP/VXaarWErWkXSHuu+YnDHwHDZrgqzpEY06D1EsVvV2WPi8xYgsOgOQexn9hnjGTd2diFRdDf/vliJpW7DmffO+DSxda32ltL82cuN805JfXm23sPuDDAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712861963; c=relaxed/simple;
	bh=WGDByHAyqCLlU+LDp0H3wcsJ+zqDp9Eli3GnL62F9sQ=;
	h=To:Subject:From:Message-Id:Date; b=d0ZnHWnftiwKiqiTIxDjp6wciG+eNOkdO7/L2u7JQ3GH/xKy5/xKlpy0/IgroOdc7j+zudyoaj2MkyeXQ4WqplkBRuDAR6NZZnSYvmdp9A4ZVA3BLs6y0auzStFd0IgoZ9et0V7gJd1dHEKpWmMgE+Wb8O6jq3Mbvy3bGl4vn3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMrvUiv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMrvUiv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D683BC072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712861962;
	bh=WGDByHAyqCLlU+LDp0H3wcsJ+zqDp9Eli3GnL62F9sQ=;
	h=To:Subject:From:Date:From;
	b=YMrvUiv3X7ZTM1r+bngmKFegSQH1/6TFogLK8uxiM0uAf6usRiP0RaM+tQ7XvbkmT
	 F3k/VlKs1O5TrDKCtaLjk5NgJIiRsjhIPkTfUJNObdGgQQHRBjcH/lY0XgrM5uHOuD
	 SizjCVOq7e7psmJpGFWPZvJSPZOXHggg/BbJpFpzho8MQdNAeTWugPYjPnyOeBCUWB
	 +E832VmP0zh51a73and3LbJag/ocXVerBKaT/Pt2ntSCVayiGQOkeViho61PcMkQ3+
	 zSMk0bVOjUv9+hU4kMawrmiZyGRphrDVVikaKBGKaiXKEkdYc1c0PTwWRCm9JOoN3C
	 FwX9co9duyYpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3209C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171286196277.27037.11779162740964663841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be1762e9b21dec3f18d2779cb001c1a08351773c5c77043f5db9ca3cebe22edc
Date: Thu, 11 Apr 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712861962

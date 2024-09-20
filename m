Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289453F9D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726836354; cv=none; b=VHeiM3McKLsLOrOWrBIf5zbgIcd+PXGmCzPDzXjkdf/+mEausxnBe31fLYimKr/z98lSKlFfrjVUISRoSPE1AmOf3yMFXcO2evdrTWVTyc2w4u/u1qG6U24QdrZpnX20zE+n0DVzQUHVca2lSwCWFqvdEiXwT6MtXeJlbTS+DU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726836354; c=relaxed/simple;
	bh=b8QrSFZvYU2Ysjqhk2CTGr7SF+XYRSe+tBmavisqEAE=;
	h=To:Subject:From:Message-Id:Date; b=bUKoPwned+Jzi449Rqo1SZNoTwJGwGPvq88lKWnseV4cm3ucWN6ezI/p+ptlch6WFrOYuUDA5kKRaERx5I2pnTH0CqUrg2frqda8odjLBz9KHWNmaCoB72hcPdOFFtXtwmzTWexyQak7Vdw0SEJYZerhiIZ+vQsHwldxS9SfkKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D40mENaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D40mENaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8226C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726836353;
	bh=b8QrSFZvYU2Ysjqhk2CTGr7SF+XYRSe+tBmavisqEAE=;
	h=To:Subject:From:Date:From;
	b=D40mENaHqulY/huPutu0EibNz63ftm0QR59Ny45+E5k/rLp51UV0fHnPt9Iwqsjcu
	 cz6mtPvLSNvZZMN1URRgW/A/Eb4P1BY6bcoRuEeN04QknKZZq8B10OFPq0Se3olesO
	 zrcmraHdvvhNyZxyU4UnubZonw6JYhcj434Ju9L4om6SfKqJYPZL3OXaUBooBW8JHl
	 9CrixtOS1T8R86KmcGBpqLAqsf96AwXkb4fEB4iM/JD6dOVbl9vbhXwGvNRlNRwL6R
	 jt6lR+wNi6zGZ+k/xZlQ/LUNxp6Aux3Jdv2fId0aITNcgLY+sBXOWj9U8aTi2uVAvS
	 wm7LtfHVNHKfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98423C78838
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172683635361.32403.17308286183260813389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400036a2ff8f74014851f5d9990cc00e20083e929b5ac6fd5b2b5359358737ec
Date: Fri, 20 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726836353

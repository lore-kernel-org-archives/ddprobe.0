Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3112A4C6D
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727501154; cv=none; b=WB4KfHz8cioTNJhv+oaYFcE6OIpvvGvR4tIVMFWqzVkcpLQRBt9rdoSMJCufzK59EetM1d1ualf9vq5e0yZ5DhRJPDMH9+Qgp71QxDU3+SyxRmcnhzGFeprdm6/AiNFiPNSRJTbbNtitEG/Bqgl3fOycbSaGHp62LRUtNW1fylw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727501154; c=relaxed/simple;
	bh=rHRMPXLH9IF4FM5QWufzDl2sm4RxyPvj4r5I2C2zGys=;
	h=To:Subject:From:Message-Id:Date; b=ANHwtMxjlWlm7WSRZRWGfSMwjE8T8RnaBO1BiTFQ8V/zfWsEpLPMbH8vgxFbbJQxdSotBYhBEtRKKMVOOxYJG90qFK3DXm0B0fYolsIWbmd1FUsNDxETztqqnWd3i28+IB8qD2aTjBHnu6zofdWFeoXP3P9hV6EUdnFO9v3Sqlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWdEHF3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWdEHF3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B231AC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727501153;
	bh=rHRMPXLH9IF4FM5QWufzDl2sm4RxyPvj4r5I2C2zGys=;
	h=To:Subject:From:Date:From;
	b=VWdEHF3pRC/R6cGIQyGzNOc1A+uqxwDKpggTpueVQBkNxp642rSrI0g5Edbp83odD
	 7m5cVIRHaydtJdDYJpscsXkrekw7YcLJmg+Mb1G+9meJWhbLAlyR3nVeHVA7rK322n
	 b8HX9ogek8gjUYlEsGabLuQa9XE3TDuVkoW/yoa5OuV+EdJxD3akN3ewZwOpzs3OW3
	 QZHNLtI0qG+tBWWiDyIoelYJF71FUkiq3h5JV6GeP5UWE+08cA6PUvi8Q7tU96+rEU
	 zRahiwc5G+A+tmSP/tl/YKJHkzySzMtkrV2WvKsh+KRsuFRmqMhjYUFl2j18xEbzzV
	 fukvHOEqxOqJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E76CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750115363.12226.9854032180984827956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 079c537b0fe6da07f43929b5a7c431d5bcc33e5d57c6b1fb644ca01c6b1b1dc7
Date: Sat, 28 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727501153

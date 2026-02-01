Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D27929408
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769988234; cv=none; b=ufGd8+pGVLYzf5f2hYADukY2HRwh1Pwh/HsTo+tiBXAPiXWNMjcB+GiPSO6J4LyLgf2jKuDYRNZm2ZuR9LBieuvno54/CS35UQHMTVpoiFPJ0NVrfijz5rBaGNgx/Jcl6jdU4XUFqDjDtqtcNFfKXySUug9LvZDjA2LK+0r6I24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769988234; c=relaxed/simple;
	bh=7s6FpptEZbBhqtEPbbMj3+/Q4NVqg8WuwDI+dqbaK2g=;
	h=To:Subject:From:Message-Id:Date; b=tjPSL/x61ntcDlDH4Jt80NhbneyXUE1EnknT2GsbzXv7TD2TfhnwqtO7kKY0Phl+PR8zGqoxJl6869ITHds/JVAlGUqpxUE2nOdbI9B2Fl4jw8Za0rJLFCTEdTmFb6PCZNPiVmPhWsBFNb40AeZh/a8kM3n8gOOBmSdK5cO9NYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkhJ1QQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkhJ1QQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0475C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769988233;
	bh=7s6FpptEZbBhqtEPbbMj3+/Q4NVqg8WuwDI+dqbaK2g=;
	h=To:Subject:From:Date:From;
	b=XkhJ1QQeAJKWDACl3570aIplzsUivznxWd/DiKsFSP26esln5zNpqFtUKcXYgpSDE
	 my82wN2YzqZRVAcOA8Ya8hT2VH93cnTuCfFzmG51voX0PCxxDyZzbdtcyfH5OrwUdG
	 +D9OQgkZTB9D5UbEvdnrcACO7IUkELmbgbGUg2bkSjLBjwEHtZ6MNiAcShdigjLpEY
	 lz9SS87uCARMLT8Am9L5QBBYny+XCT/2VCVPSicqoEhsFfxa2pcUq2ge9pfQAXsfWX
	 ybF5v0XLYRGox6VkIEelOyAvan8ovArxh2iPAOXQYqj5ygWTZaMHFQx8xbwSZlatm8
	 koYqd03I0K1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D200D172A6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998823361.28953.1132679841548447601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6010f1a81ba1fe416b85afc76e4b2ccd4782636924655b2f6db1f635bef3330
Date: Sun, 01 Feb 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769988233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF8D21ADA4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754373594; cv=none; b=RvvTYVc0+J8/xU1ao25/EdmumFGKxEub6D3EY4YC7QZQaaIAX6bs8Q/QKCXbLjmf7xHYmCwCzeRdF2kzNShNfYk1dROyahtx5bBGGu6CefBhcqQafDoN4i9E8wdAjA6mbpMoasAwwGPV3j7lsOTomok87oG5pDzqapuDW7YbN5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754373594; c=relaxed/simple;
	bh=fTvUQprcmT3lMef7hMGG9CvW99ZZcKgy05FMIuwZh+Y=;
	h=To:Subject:From:Message-Id:Date; b=dbO18K2rUpz6knSkEHpNqMCrayMx72Vq8t4VYPFsMZer1IuXCRKPRsr6XNCg80oBo1VLnqlcoeK+97JdlxlsfLK6vtvY6+NlBlFT9g/f/oh0eiyLb8GWvTnJO1TBWCih/KxDebq/bi04oAptHut8A4rbUs6i7bpp1ZTM0mMRAR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EewAYpF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EewAYpF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB6EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754373593;
	bh=fTvUQprcmT3lMef7hMGG9CvW99ZZcKgy05FMIuwZh+Y=;
	h=To:Subject:From:Date:From;
	b=EewAYpF2ezaMEK0e0l89yg7y9YUGt/MITQ2ERtM42ztr/ZK3vqn8y9V5KnAIbXn9C
	 PXRunQyoiHc4w7lyHTXrWVojUFydf4blSvrwoQI8m4BvgjrT4g557cxXiPP2T6mpaA
	 Fe1Ph5hGBmGwWxd2AFw7pr6wpj13mgZZqPTwRm4yHfLMAv0QVRrFg5jfNGNPqRH4QB
	 TExX7S6QS8D2YOgL4+Q6JXh9a2kE+moP6vLAdde2eRc8dUTNfxbjhnW7rZrCSUG3lm
	 NXX4wtL38xS6YbASsWvfz8/o9FX/0grA4yvIp2a5vATQn690mADQgXzolkUVzizg53
	 hUZqirl6DsGiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E92EC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437359357.4926.11590813335048910216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6ddab95697e3f53b07550f69d05fa47d5e740919a9358d2186ecf730628ba8
Date: Tue, 05 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754373593

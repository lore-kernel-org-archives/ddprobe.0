Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F168F54
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726276554; cv=none; b=cVfJ/zmED+QmY9LxCPoo2sXyHlDvLxkz3+mBFBi4bY91vmQL5NyQT85A/DMS/ZOagdPkvMOwkYi7ZzFV96Vek8icZSgi7QmEIR4GpgDLOk6Ld61Y3F+YXUxRFuNfCuEJ39INGUoZiXoABb9TLYzTedM+Nqu1gDhAlNpiQLHGSLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726276554; c=relaxed/simple;
	bh=haKoiY5zZSGJVFzjft4m4T5xtRmjexXMqPRgv5SpsTU=;
	h=To:Subject:From:Message-Id:Date; b=H4fsZh6VYgW0zEN5nwzwLsScXFi6iLl3d7GT2xKWpjMWIipd79hsyRsp2G43FkYV0zj6tMFIIBHE91UEa8YGiHze5ABAMWwqnE7EkTJBmedDMGwa08jfy8LiXLZXPNkb/UXG5er0gtlGs7V3o9R6LCskbGG2r72To3c/Pmmkmic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0iGwnYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0iGwnYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F60C4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726276553;
	bh=haKoiY5zZSGJVFzjft4m4T5xtRmjexXMqPRgv5SpsTU=;
	h=To:Subject:From:Date:From;
	b=Q0iGwnYYXcPC6wc7ZvUh+MD48k18A0EbPMEo8EUlMwuNBn6OMDhCcA1YgJkLs85IK
	 nVfwtrj9x/wdZ4kmiBDhjknYvAMu3ob5E11NAjjnnvNcIcj5q959e8qrgbX3w2qKWI
	 jUyBaBv1oYYiS6CAaFhYzH1lwmLIY/dYDElrbfZiqgHP2suci0GuvrqDwYqlOoW5F+
	 LNwwhde8oD6+E9AnGIMJZIV3MzxosMaNJRT+lBeiLTBcIsoWP/TgZYaxHRLe82JlIp
	 UAQbmVkH+I9DgQ9//D2OXkMTQi/w+GYarxZF7XvsRBNj7hzygl204DofZTm0vW/QoQ
	 zkrtrQO/In9Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19B7FC6186
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627655361.29728.15495605289750922472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c4adc1c68eb22db926832e25343b4e799c3275d05d47eb0d9a233542063a80
Date: Sat, 14 Sep 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726276553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E637DA9F
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733572554; cv=none; b=BWC38yYLM+e9LnEpg+2IqhW1Lrb0682CyyRF8dg+lU0sYyxalT3SHxJuc/fwNYaeC30To9468U9JzHSlDJqQ+vlrmeDuMoCILgur1pL2T8SBqaVXv/yxFcfymJUhU/WyeVNqodrww+pdktg4wKSDwayyOomvFtpFMgs9/nX5WqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733572554; c=relaxed/simple;
	bh=QVt+ApyBiAALP9wlXKcyUlEdzqkyMafC1Gt11QkyTdQ=;
	h=To:Subject:From:Message-Id:Date; b=SVHe1VV3uAxnxdn0alKkpzmyo64k/LUcPYqRVIuTQRFIoFLr4eMOWz68ostADkSdiYFwmWNg+CNbKHz1+IpixTuJoTqQWgyYDWZLiB9uBnmk9+Y6rzEHcP3D4vUgipb0r8fof1gj4jwLI1mTsLbpPQ2+hSZL9lQMAIZP4J7nROg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQvDZzLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQvDZzLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC42C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733572553;
	bh=QVt+ApyBiAALP9wlXKcyUlEdzqkyMafC1Gt11QkyTdQ=;
	h=To:Subject:From:Date:From;
	b=qQvDZzLT13H6Ruq2YcFmU9i3PjFPktGVxWeZBSkz5cWDt1p49Pb8Mwvzi+bm4RwpM
	 khHfTzAClzlVUKKVHFIgQd31xsGRs3iVGYLg5ya1JV7UpU1VrfHsrBqBdehq6HwCEl
	 9CfHMaiCk8Fw+SBUxCwiMHTCwAh7iWfxRfQIwRLY6w+4Od4I0/yp0ex5zFVGDW1OQl
	 S0y2hP8vvRNamMXZ55vC354R9F7zfZNJUH/+eQeD5paI1iPOBMCAH8xQWybOep8sF5
	 WjIUzgKV7sjHUSA06uFiCB5ws+y9QVK7iP4zxcKwAYkfQMyOZWhsX87OaYYoGEtn/9
	 KhEt1WFn8BHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1AE7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173357255363.13712.5072981571206032313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22253a921c2e2a97fffe110c76ae85f0636b8682eb8b19d7ab6f4f8f4cd30810
Date: Sat, 07 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733572553

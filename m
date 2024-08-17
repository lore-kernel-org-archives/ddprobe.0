Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D675441D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723859154; cv=none; b=Mm6YyLaU3oH0zH+gf/TUMEjYV7BVp+2HIV/YqcVyapBh3u4jdWnZfMDXGrss+Px72im2LZxRsiL2xG0lrVPw83TStc8jd54SlE7aze77Ubx8Y3BcQhfwnKuofic4vPx2j5b70e7Jt/Rt8BePFZAdBUVFFuFIqaZsw2SSdSL9Ghc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723859154; c=relaxed/simple;
	bh=P6FWOKCQ+N7sTas5g/6eO1QzNAfUGc+F8nb10Kckrxs=;
	h=To:Subject:From:Message-Id:Date; b=bOIJlQY6HUucKX9Uw9ViXlTjHpz2pLLlUyGeoFkG9lj1CMaHEfw1P8OSlg+azdcLPqkux6Cm5GGnwVwQ5TpiO0+7pnikW4y2mS0XMqKT6bX5g2l5Ns9zUBOoipq+xtCyS6pODtItF6UcRij2FluCXrWpRAEmwJvwu6qL+cymGCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCfB/CeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCfB/CeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF64AC32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723859153;
	bh=P6FWOKCQ+N7sTas5g/6eO1QzNAfUGc+F8nb10Kckrxs=;
	h=To:Subject:From:Date:From;
	b=nCfB/CeFMP/jyO9rJixacvR29o12tJC7YIsNsCptCVXekhKYZLTA2baoWBG8ezon/
	 tW9Q+jS+BxVPQGxHmoLYWmmTeacP5lSo1l2I6s+qBcVAl98kGI9csIy34DnStqDSrx
	 byNNn7sksanr6id1CvHRmf0AqwlS0+Ky7boQoRxYeh/zplFPqf89KLUF09GzGok1jY
	 VK7jlE+1S7SuQylbvjFs5SZskuglX4vBNFstYlTlGG56Pb9TriKTKSm2c6c4mBd4xR
	 yT6uy9UaLznPw5tz0WOfHcHwwNqOvkR1m03ygJPiIowFQngk4IPAVzvkGXokVksWrV
	 JVjWjQJnoM0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9EEC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385915360.13663.13006084727854998576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 454a6134fb06784bf8328e46e3babaa406b16a8943e9b56506a47d874f44f674
Date: Sat, 17 Aug 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723859153

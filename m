Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780E184
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723161954; cv=none; b=ew1A9xEFwhrQuMkW8bcoDX/DhxGc8+tpHtK6A3EKwYust0isoYbEkNrSgxxUnlKZiSF3vS1MSG7Gt3a85zX11Z6ySO0B4aV1a2mSFtce5Z92pPUtEG/fqLbLZFh3egh0gjsN8eG2PgBlXM5HLLDbCx8xNTjd64ZT9EzTLYe0IKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723161954; c=relaxed/simple;
	bh=QY3j1juRMnfBS0W6wAHCi5jNr+pMUNmopjglqqELu1g=;
	h=To:Subject:From:Message-Id:Date; b=MOGRLqfR6dH20sK4TR7+6FfPSkTVxxni7zQj+bCntBnApX96zX7DeU/FP6/XxD0tIyfMxigK1etiF7P1sKxMSjBcFlKF4qZ5nSA4nbQAO3IgJr4pgGk+fft/B7GRxFuAQYKFSdVXimoooUeE+aimRrhXsGFzwmvePwkWUUd9IQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrBSl6Ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrBSl6Ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAE9C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723161953;
	bh=QY3j1juRMnfBS0W6wAHCi5jNr+pMUNmopjglqqELu1g=;
	h=To:Subject:From:Date:From;
	b=SrBSl6QlY42lcXcXzO7jCyJMemJodBVLOZGJCqMAKdvcbZ6/bJSImrWclm7lr5RC7
	 lgBGStSz2U931yRtMIJKb1FJ3UH39CUJOcIWXk29WLvamQkJH/owVEsA9sgB9MgdKp
	 U3u0JChWoHAmF51EGlkMfU5lhZLCLnqIvBq9XKx/nDSeJttMbHXRn8ReUTYDkth8xx
	 fyPUcQ8HFz6zhu6UCoNqusj3Z12nL01ejOwiBGqu9yL1OjN6lBS44+VzL/9Wb/VhSD
	 rG9A9j824DCAFDjAKKM/Rh+Vh9OrIOqeDAeR/+F6gueWQ6RPNKBX/yVV9Qn+0bMLYQ
	 eew6L7+vfoYWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F99DC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316195358.11572.1164423325323519496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f98b5c5f89108e719434486b519b39e9d5397a7366b6879ea8beb769932375
Date: Fri, 09 Aug 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723161953

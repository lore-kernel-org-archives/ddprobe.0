Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A9E19341B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727004954; cv=none; b=nI1MyqhbhXp20qb3AcR9BeCMgMKzZlRbWucylz067Kj2Cu/3Wk6UKgfbOSKWucq9uprv6exucGYKsKgfP6wyyuD1UCpudOKhUxy0Vc2LW0LYVQv+yQkJYDAojRAadluVWz9TZ/bpkGQbFB7T2zlaiIOthFIXcca0kGOP+lfT9ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727004954; c=relaxed/simple;
	bh=z2zcK9z12NP9dbAWykTZcFz9u9D/HD8o6I+YUOIdGIE=;
	h=To:Subject:From:Message-Id:Date; b=bdKBFQqCQ/GKJ7c11u8SkIwccVJ6mnEY0noNj/B7Cp1lK0/vL3uzSVQyXVudrZJu2pBPZVnyL9gFzGx6e05X9cn1HxQeLDp08Znlfkr7cUj6UG+6IS2r6yU2iuBbgtaa2kx0t8ZjhCngjLbGLMCNxDGpeQx46MIMZhT79bqPS9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgsv3D5e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgsv3D5e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8AAC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727004953;
	bh=z2zcK9z12NP9dbAWykTZcFz9u9D/HD8o6I+YUOIdGIE=;
	h=To:Subject:From:Date:From;
	b=lgsv3D5eGdGW3idVxpA0wFRzUnY6UBcmkJdJUrxBCj/0MBMFmHJ+0t4lvQFPdV+BV
	 RCNvera7rxHv7FgqmGMwx+m9fMHANSOtrmF+7j9EdQ3p6ZDle3mhVLnuCc8BmQWnpc
	 osxOOFnADam/e6sXodjbaXOstD7oft0GPFzQcBP/C1kTZ9oYVdu5Q/VcRsYTD0BCia
	 RVAedn+C7nc3LtiFN29elxE34KsLYJ48pUvYZDL/FC/KIkH0FlzFTF4gdI5FLNVqZl
	 RCc5DKy4kg9D1c89HhEEfy/k4Arp8sUJE4zHlrU9ORQQ6c7mI82+1//fmxvQUKswYS
	 f51fNgPWhSpGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E94CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172700495360.5946.11045903047483238763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51873735f17ac5122cc5411c93d7f45c30a72550437ddb6acdf9793086656ba
Date: Sun, 22 Sep 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727004953

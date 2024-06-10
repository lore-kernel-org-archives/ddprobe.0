Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AC64EDB
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717987643; cv=none; b=nDJ9Y+jQGhJFoiJm6sM0apvGe4yXB8B81tlLr87PQ+++g1DH7rxryiJEIFxwG6rEg2ziCqcAS5CarcSsm+v9tVTTHVXUWujpAlXdp9B28+lZ8LT5jDOilt0fbT+VPmfiFt+7Z/t6dnoRLM/Qejw6wZyCDFWdyP7CT6ollC92cz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717987643; c=relaxed/simple;
	bh=nOfvreDar0lxtn/TVaRdZdE9mqbXi2LIUIsgPhQB0us=;
	h=To:Subject:From:Message-Id:Date; b=slLcb875EsUhWu8VKxIxeMkpSn03sH1REb9aPxR8FPWDyIhM94bbPRZh3bYQW11FKTbbPS0ebQa7iAueeUdc0BtQSXB3wehqotffXz/bhqq0cRLNTdEdb2h7DB/63GiJDRmkDAi1vYxVTtraoscTz2ForjBGGUdsKvxm4SL9jo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K06XCsmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K06XCsmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BC3C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717987642;
	bh=nOfvreDar0lxtn/TVaRdZdE9mqbXi2LIUIsgPhQB0us=;
	h=To:Subject:From:Date:From;
	b=K06XCsmNZiffBIj8B+XFGmdaemOGCT7Xc9actxEaHXEyR60Rmu0gCYwt8awTnR2l0
	 uTXYTozcQrvwGCQWPdZScVFWjyktSuP+ITJ1526IxbQ/KGX5vGr40JsfCgzTxtV1f+
	 klbkRnqu3Af9XrkaIKkQlUJnTdrDBovoxq+zgBfyMH9zaPFO8KsPXMzP5dN/yg2U6T
	 cpXUS6j2TKTHxJlaDaWWcveOu66fGMQF9In8psXJaT3dgAKv2CZTUdJvjWMcU9QN2U
	 4mgWym3DuT+8Oc6bxjKQ/kKigOALf9sJ5YjJJEQ/SEDndedN0p41D71fRq2veFG+Du
	 trPfqoWUU2WYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF129C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798764277.19259.6321183938883725742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c853454d8ca382930b71f46fdfd9996e5cbb56da30abe041a64c4d811b1fd80
Date: Mon, 10 Jun 2024 02:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717987642

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E19D423A986
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744888795; cv=none; b=GjrMKHP3eoIUpGb9d9uO4tee42J6SVMY/V1oiejdj1KADrDEX7HZNpSBoRHQEBBVH1rTqzNu9m4gp7UYnKYJ+uJIay7HZYpqSAWIG+mczy95arY6GQ0zdkEQmkHyvXMF6e4kPOXcMf5Mf+LXrNeMgPIctz7s3En6rAnnfD6MjgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744888795; c=relaxed/simple;
	bh=jziMNZt1hf5rEQgI/9/R//QIMTYQzi/6eD1n3YrA85M=;
	h=To:Subject:From:Message-Id:Date; b=L83hdMy8tPG1Lzl/iowbb5s1lsRJtw2xpaOj50NBc0fyfIV3V70CwnJG4QV2b2JhcuwFgBxduYYXKndXpjtrweRL379TMN9K5/RsXJH/TnAJyGMjUj5u3lO4Ma8YAB0uFMVV6AA8BWm80DagiA74iOBZ9orT2aeJyP5HEGqVIV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cT2uhqL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cT2uhqL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B45C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744888793;
	bh=jziMNZt1hf5rEQgI/9/R//QIMTYQzi/6eD1n3YrA85M=;
	h=To:Subject:From:Date:From;
	b=cT2uhqL6yaJszeBM4NU4U94c73iG57xfkj1q7GF8VvRwQoiuu5z4gzJ6lQMkogCQh
	 qZk734cpduHxkAk1Cc+aY7hJiOqgK00QHuHINRC8PCdEl3uOGcxH0xtff4ht1UUo4b
	 HY2SEea0fJCILtkkpmuLrvhrCR+rwmAjh/hY3jT6fOrLK8Mp8paOSi5xnpr6xX0dzE
	 0xunWMN9G+pMk+6rUVkIwe7fAu4MUnpFaBW303nMkOQF98otaSTSb/71WQbtZabNiq
	 fsh/qd5Kc27RUuZUFd1FbQXbbmm7oY8jOMgDXQg0TYatRtD1W+naLQwz0z0R5ICV0j
	 Vs41yj5ch92Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD53C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488879362.16906.16202231291291585385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006c6263ffca27b4fe67367bf8df9a7e6de3bf4e36f00f7a86feb3c2f89f4a0e
Date: Thu, 17 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744888793

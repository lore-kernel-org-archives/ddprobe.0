Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F9615A866
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716972863; cv=none; b=PKbqxaBeCORVjwmrtNk4igUX8+tlTRy/r6ibQU7CyHH7o7psEXjMz3fDuIpBxLoG6KtYW+QYW+Eo+wIFrgg6ff8jOnLHNNvMdSZT29TyuTgXcbnc3JZ2Uz+zromMzZomQhz5i8UqZrkmhds9QQl1ys1d1QW3ESRjxNU5Rne/s0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716972863; c=relaxed/simple;
	bh=+ynla9A+Hr+RnQcXNS50yLvnfD8mLecMDZShcQ9Pf6o=;
	h=To:Subject:From:Message-Id:Date; b=b2X4K7SLJind0OOLzwQAXs5UscWXYyQrVM+tW2Gilr0ElyeZLmKwmdB4nRqfrvS0KXVftxxKPNhlFtB15ANJcL6JU2KiSLiEkPeEJnU3+nBCk+2QqgzcT7vXNncnMeziDSjyg3uP6bwbEKxDQBY2SMWfVFi0fJw3cFdPh3cN97M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cd6IECKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cd6IECKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0980C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716972862;
	bh=+ynla9A+Hr+RnQcXNS50yLvnfD8mLecMDZShcQ9Pf6o=;
	h=To:Subject:From:Date:From;
	b=cd6IECKZmIhJhfqHT+abyKy61XN8P81k8u4mYONADEJJL6mcIvTIb+SJwP4gvUw87
	 9bmQ/8I4Jket265lqQI6c11O+RDbv3BlyVYhqD4yZXkgZeyLCJoR7foNgxEgJYl4Rh
	 tinouGr9wIQ7tTzo17Hhewq8rFsVO7xczlT1ilbCzod4j1JmgNuyQFKwLtrhxgphYR
	 Gdwj1iZzxAVeeUXbu5Tsz1wGtnOuTVRmwBWKiG7AvIbn4l+S8836ZJSsZAgL4X0NEc
	 /W/ce/xqBkIuwZjE6/dUlh+/mD1VC9jNPvjOjWe4a4Eg1tWkkl/0dBH7hUlgcToFpu
	 OnxSYHcAiLauA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C877BC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697286281.8240.10115805011964178385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80093de1f52b14daf702e1357f5386b03e20ae512bfb37c410216e2060aae78
Date: Wed, 29 May 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716972862

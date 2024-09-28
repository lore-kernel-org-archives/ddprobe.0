Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CED27442
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727502354; cv=none; b=nAAGVAod4l6zO2cxrt7Pqivm2Ja5SAmbV8rOq2F4TLN7Utlh/2Nfx2akAttbqJOM14CFMZZslgJzAAzbZIL9+epzr7stXvIv+Zs17b1I188P3XwpUHj8Zc1/DdnYUVC0eo4UypVMFyLKagO3t6YItbb+6/uEn9u3uQZfUIZWpuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727502354; c=relaxed/simple;
	bh=tFtj5zlVOfOJY/xomhcSbM07Lwsm6ebLmxmFLetcdzk=;
	h=To:Subject:From:Message-Id:Date; b=lKqh5u1t8E6vKkg+HG7maSSqNXXmFKq0NmD8Mv6EmgEj5jrblmnJq2GYA9MrJo3sJogSxYLie5EpXYeMrOJ2RKsqIHLfDqKLqw7Xev8u9djdyfUvEL4ws5W7C8wOq2ROhLpz1IPTuQFov2KflMWquPsyy72gDH4hmsZ4bGf4N+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLAGSO7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLAGSO7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F81C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727502353;
	bh=tFtj5zlVOfOJY/xomhcSbM07Lwsm6ebLmxmFLetcdzk=;
	h=To:Subject:From:Date:From;
	b=MLAGSO7lFpMi1sI1saN2iG+HjgXHP2dfRvW8CeCq0yNaD+NGmOh2TLbt7zlOBqP4r
	 PCB59ToYfdNQpSOzvrUbYXBVs6LiIBqg1xAE5XX9bt1MQl9ypSiqEq0ipzBVWvlwHD
	 w02Dt3MygZ5znUsce2VmXtIh40CaKnTeVSCr4uxsRZIPqLC0KqCQcPzgF+mGOzzdYe
	 Ebc9CpZYo8ycGqDeV0c4QqT8MfL5rNELpQKsnmeRRS5QgIPupfljVPvOvzajcISvYo
	 7hWXTHoaSDvsxVm2z+hTCVqaEbhjlC+wk1yCn+7Cytpg+fHGQPzYPvi04lijkLr61H
	 4ZdRYDHBgDo2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2DCCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172750235361.15126.11306285724800647053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145c118583bca5517ed486225f9bf5503583c023f011b7da87e0e8a4d3793c57
Date: Sat, 28 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727502353

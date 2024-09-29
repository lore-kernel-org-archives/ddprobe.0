Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218AE469D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727571354; cv=none; b=jkRWedkQloKj9svGMU8A3wOtVLLJL8nMOC4KO8EUO5YTQCW17edQQPU5ptAJ04SBCwBA7kOfPbBJ8c19egIsAosY3AXg7oU0ctsLe4Z2FvYwLcl7SzrblpzylGpN290f4ynw60iwgoZIb8X+Y5Im542fRe1QmgRLsi6Wsw7IQJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727571354; c=relaxed/simple;
	bh=yBQEpurakZ8A+2Efae12edQHUuqM+SZqpVvhGwIXb4M=;
	h=To:Subject:From:Message-Id:Date; b=rsqIOykKp2XxoR4f9I+5WFP1aRDCuY1tliAL1cg8ZkJ/3RpVmXBsNfjwdBmzzcjymZ6xjgtwrMioVEChGJU68pjeNQpdyE90X+FZmB6qX17GnXnxHmny4elEnjC+/fy8HXV13LrYDG/NBZwjwVOc7STJSCVvs8BQkxXRH0M9qNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ0xeIxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ0xeIxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B155DC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727571353;
	bh=yBQEpurakZ8A+2Efae12edQHUuqM+SZqpVvhGwIXb4M=;
	h=To:Subject:From:Date:From;
	b=AJ0xeIxE78BjE/ZseYtK6Oh/dboTcZB/yazfQE3W3XVZhSageaSFiI2CEBsC/hkA4
	 s94BUWZ/4quAEXZKLbAlzIwQyERKcctaNGiyK0jSZKNJrakfr5mbaZXHsaNi88swy3
	 Nd1Ap4y09sHqPcy3jsV4xvPobgAqHSEFmcQNBg1nKtJnDR3p9jOR7ZrLQTtVMUimDh
	 Pu/jEzA12U2RWZzJlgtTytdThsA1F+eUctmYYkCZ+HMJFx0x6v8TFTY4HB/y6fjivD
	 hFdgc/4jzrzDtr61m5nen8SsyJgszWgksvsjOUHV+1KDFuN0QQPRupVzMZ1xSb+Qu5
	 qNNBkJKapeAog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E770CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757135361.21908.13620012151654472155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0db51e0c1d2a7c6ce946e74e5da42cffc051ffad3470514280bb7af2b84646
Date: Sun, 29 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727571353

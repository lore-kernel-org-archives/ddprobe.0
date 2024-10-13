Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA0B36B
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728839154; cv=none; b=ej80HkGgMbk+CoFQWoI1KYepv9+zDXcqA/NgtGYG6h77daxQxTz5H8/lRjSj0yd4Nc5lObfsaLaGqCfDjY3S8N9yhXDONyz7U78bfM8IeThecoecxZfE4WjXAxYtfVI7v99I+JgMpXG0Fu0rrbAZBPIczoQFpMLNLZv/eVyYuks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728839154; c=relaxed/simple;
	bh=1gYrhUfzE8QGe1jmFxUyr8tccvaNpwFU3+Drhm6yg30=;
	h=To:Subject:From:Message-Id:Date; b=j3lknUBpibiB9KTggqspa7yYsDnQNkyvieMSo+3C/AykmvzjMzTXXkzqvTNbJt5hNvfKcAe0M/NzSCafZ6cVQ1daedoRtlaiYbpEVvHyKX/2AFHk37++qRZP8/w2BMSgsCvQX38DOWZ2nmZeHKVB87LoxqfVspkhxHFD14E546A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVDoBALk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVDoBALk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE96DC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728839153;
	bh=1gYrhUfzE8QGe1jmFxUyr8tccvaNpwFU3+Drhm6yg30=;
	h=To:Subject:From:Date:From;
	b=pVDoBALkuy6V3xPnxEQH5hTQinOnpYxN5WiySoFrHBAB53eVvjzEfoQCKh7E/IHB2
	 wtdHx8z3Y9CgecX1U1o1S361CuShyQ3z1HUaUqkc3XDS0SvxfFWXfvjeDt7u1Q41ZC
	 pBM7flWGuSqZWbNr3HNRMzLM45awgH0TaKjzaYvtCKBlppq1OLw+uzalnhgj8kiVJC
	 bkOZ7Nylkg0eBovVvXCgmDK0Rm6XsGsxtfee9ZGRJbVcZHntN4x1INuZDvehtcG++f
	 M3Ehz43uHWsgdyo9YUlj0UoNx5EBwXp02NIRSS9eBdly1YMRUtFqwYF7KHt5Bwjd9h
	 Of8Oh5bNsqr6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971EDCF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883915360.24620.15904374795330920253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a66de04d8b49c9bbb4539705cb82f96f766368b2e788d386e4be532b9a03d3c
Date: Sun, 13 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728839153

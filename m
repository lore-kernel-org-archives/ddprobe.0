Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C307296BB7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767107634; cv=none; b=PkR1bQRlXRHKGzB65/lfk7JlLIwt/Rdg9JBuSB/loSocLQwkYzfVhppgNCnlmO+RACMTv3+vF8IjYcm8TcJRRpeDHDZTUEIa+MACq+ve6NPUa5mWcFxXfvWRZbpeEerwY9hZ0/hObi3akeePAWR6IayPea2AZQ1xOYh02hTaH7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767107634; c=relaxed/simple;
	bh=a4Qb+6mEbNm2wiszfdgFOdQKj3VNd3sagU8acqlS9OM=;
	h=To:Subject:From:Message-Id:Date; b=rn9sqJfRQ9Xxie8yMm1AlJzE7g3d549vR6sPoEjqaZ3kICvyjUaCCHcuOPsvK8GjRMe7DiRuU2Jbik/gfKi74v27QgY3FwtZJU0QNro6w29bMqcY/1ycQZ1t6Dlyb3jadQ/Qf/6rGQFJ0Nam6FP3oSPrOrR5GIT0lscIgAKPwZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d274mN4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d274mN4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46C3C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767107633;
	bh=a4Qb+6mEbNm2wiszfdgFOdQKj3VNd3sagU8acqlS9OM=;
	h=To:Subject:From:Date:From;
	b=d274mN4rI50GuUI+v6kJSHxOleFyCmhzZMXDXYduh0B1sOmqB/NxRScYpC9mGM+mm
	 BlOPNjRrdm87BUHlPbEOkP6pe4eB+j8QoMzsC0IzvcEDqkfMwaHssBl/pNc1p61eP4
	 t1YfabyKxnb6rfOJho0tPcmuCqDrWXXwwU2GDSrMWbtxUs8DfGfVZVSwGPqsKNKuox
	 VTj0bjD/H9RI5ZgqQsjtl0PcWbUgKQtaH5GWnNp7dkNAh8HNRurVPwSHsNxlfmOsbK
	 s3ZNyWFMClMdu0M4cJoXZP+fd7fBmn42iKT9fyZHyoSXyOK8zD0LsMOmwd2LuZ2KDV
	 qmRnDCeQ4/Ctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EAE92FC0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710763357.27478.9422723576676065056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa8b6191033ed82799c3a2f860873c8cacd9d6b45e2bf5ee0d4a2fe3b23d6dd
Date: Tue, 30 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767107633

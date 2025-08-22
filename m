Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2556A2327A3
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755861594; cv=none; b=RACQYAZbWuAnN60B/L/Q0f/n/32wJllZVmfcWsknUe/tIpqh737PVYta2zBskfJNrZ5BPIu2mM9yMcJp5aAXn5Cc/WYR91u6eQRem8pqoRQEYkq3DFdnpRUuI9yF/tf9DEp8aQ6Rl/hsjOaBcLX0rEaiZcDc6Lkbm2gv6jcDDWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755861594; c=relaxed/simple;
	bh=Ki/tIclT3zVK3VkBQm0tUTQ9k1K1p8tLOr4YMAZly8M=;
	h=To:Subject:From:Message-Id:Date; b=SXVz9NDTJyNetAIqKeED81gz8LEQg7bbh9Bt5yL0upZU6gwBM/AejW16RFcR1lMnx2YM9hyfc2iX4FMqChu+C9YHGUudw/vynkrD2YLzW4ZSHrbwDy0j3ziP+My5xeVRi664xx0796C0L/AXj292VXYJhBOkEZoWlk2HWH2/8Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rtfbg6KT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rtfbg6KT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23C1C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755861593;
	bh=Ki/tIclT3zVK3VkBQm0tUTQ9k1K1p8tLOr4YMAZly8M=;
	h=To:Subject:From:Date:From;
	b=Rtfbg6KTo6qeyS34MN6VuuicK7P7rkOg185ctCniakSwsxiHHs8jMUbsY/JjOeZS4
	 6DKzd4px9DdHfV5JznXgQpyLjAnqJd5VcoDHyiNmvw+jUd3LsS1UGV/+17QilWTGl4
	 JJ6Q+yh8sMUSzI93GfqgalKSeWoTx9lIm8h33KABS3WTHHFN9PymOi8cBtY8cOCP6d
	 kXmutQljNmxOIrmh8CWWySCW/bF/vT4W0wkZ6/Ys+8e+iC4zF20o3ucJ4SPHiPqVwc
	 OuJHbFVqOOFeJG9/OLQzwDATB1r7btvCUuZk3pDxZuwjNSEnWaGprwbNcZimdbqxeD
	 kDaIPfwmzUKYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1DCA0EFC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175586159357.1388.4384027982909664627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e495718a84f947a2ca578d34c0c59acab8e819c621e5931c86060ed9bc73db5
Date: Fri, 22 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755861593

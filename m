Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420FD199931
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743103194; cv=none; b=HzAnEV0mlRNJDzJLc0BGvfXjAC8gwfZUlcVCQkrMZT+t+tz4YqCdE9tgwMYUNJLcF1eLKnYm5cAp0PlfwMx0vc5fazRaWSBqQZPv2om+gIbPEYiOWjFBhIhRXB+/uiqGNax1ZIeSQUm7cm7tKLJk2QFmwHo4abCZNmfHdYyFcuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743103194; c=relaxed/simple;
	bh=js/ew54l7BSsydE7fsVQO9GPnWeTZ59izjwRLYEqaoM=;
	h=To:Subject:From:Message-Id:Date; b=TGnMx+KSGDkvPsb84hz0pIGv9DLC7V5XyLYyzDxPTsKwXlxpIK4bD7V/2X/POjAqCzB74UP07vw+6JdPaFHelSxhUQZuEpl3ZCCuueCtzEtt4I1om/J93a1JGwq90JwiK4qq3DJNxJw2FqPFVumFT0n0uA2S/t/za/9TSHRlhsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwkeWMtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwkeWMtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8411C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743103193;
	bh=js/ew54l7BSsydE7fsVQO9GPnWeTZ59izjwRLYEqaoM=;
	h=To:Subject:From:Date:From;
	b=iwkeWMtcYc430aIHib9KsBP4SiW1pwuqgY7BizhzTelX1I92ee2raK0gycmaF5D7k
	 /DchGJrzbsAxFBUTfpOMV9d5wTskt+xXe3SO7HRqmb+CW4tEY4LoNThP+DkmR53eim
	 R6NVs2XLCqpIlbna2YOU0FH2+WMLeakiXTV9mSqQSIdv3xALgebbsfSuXCjm9MGxxq
	 ZSQjRxUXEK2UrUFIUB+B47keyIGwZ7Oe4sSntg55yT9uKJwZUS+L5v3tWnlm7J0Rur
	 VK8Fxr2fMmcEV2rsH4bx2gh23V4IMZ3I/jl1xoRbUywcv8Gc+9mJnlThZGQ1zryYLH
	 fTHjh1tQVTHqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3728C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310319365.14030.7286718168191579667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96871f868864b81007dbcc9d4778fc72c1ab88540128fa3af8243ce2cd2ec23
Date: Thu, 27 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743103193

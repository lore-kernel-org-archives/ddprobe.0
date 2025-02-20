Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE7E266F13
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740093534; cv=none; b=qr7G1vuax0MKfm1Fk70Q9y4IMUHlnfID0QvMHRmxw/gKkUQU9sN4NFf7/l2UB/C676fF6wchAo6oZBabsmoTZTdG5o1ldFyH0V7HqwoS2FDc9S9UZLLw0stFzSe/P3JtsVsV2+xuhTgEyvoFEgrZ1V8ciUNDITjEDq6vdIrsNOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740093534; c=relaxed/simple;
	bh=ySE9EunO9R5LMPUaRyCuWu/I7spvioiT3IGpDrIa2io=;
	h=To:Subject:From:Message-Id:Date; b=Ipa7Vp4C2oBmTslPc4H2qdc4LX30mOgxT33EhLU8+ZTtvIWZlVKnFoi72+HqJAoHbOpk3HY4iHKzl7j3O0EN9C0R35aO7uyAO3dKPZQBBcHlbKBd8BwmWzJ7FM6btrKqiRs3TLHSqzAJi+3AeN7/OrOyp7D3E6KVJC0rj++5udU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbR5dell; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbR5dell"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2C5C4CED6
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740093533;
	bh=ySE9EunO9R5LMPUaRyCuWu/I7spvioiT3IGpDrIa2io=;
	h=To:Subject:From:Date:From;
	b=mbR5dell7ZETH3xtOa+/RZ85d7jOSm2Ms7a1vlyppEAaJaZZkklD/zc60yMnaeRdk
	 BKG4iMo5FtVpob08Jk+rwGvK4Bxn/HnHjnWm6rstEDoKZg9ov1vl6qhndszZ26O2db
	 vT7x/S07sNelprBrUUzagxYJi/3ldBrraeThlUbqvajPFwf1ApjuexRVJz3LwlQPRy
	 u8bbm4+YmY1nMV5DMUT6voJNG7hnWb95T9rZsv5vIwnbSMoOh0U/TWZb3YloQUgj5l
	 +onyllt0LoAOYJADrzABMQpH5vE0ygKllNqKBCI1HA9F0EZHN2/I7GJw01IUx6bSLf
	 fyAzvRPOB/WIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E9C021B3
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174009353360.12031.6861824595194897337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9dab0d33174914b66f249889775fc25645ab42bd6802280ddeb3d9f6e5718f7
Date: Thu, 20 Feb 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740093533

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11041246770
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764354174; cv=none; b=flnzGE15DCqF4JDAlzkeqaJOD96pK8lRW6gbhjcXildIj9/qrZChWKby5qNjNJwoXVTxrcfgLRl+8NS7lwslxX5QBcppNr+hKZw3IY8d0U6xWeXDSfD8TFxWa+/MeDbJZoGs47NS0shj0PzGWw0ukZETZFBB1PtmP0/kcfl7Fjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764354174; c=relaxed/simple;
	bh=XGtHNMpnQdPRthIr01TmdYkUc2RTDZVrMTBDpUNxWko=;
	h=To:Subject:From:Message-Id:Date; b=sMnKOSSwUSMd+u+kC7PM3a6feoXgXOGWiC5uENhF0DTbl9Dvc2DaLjZT81uGbNZYgXW2k/haZrbLaryQssLOnCH9OdKD7HF6E7oR6coW1Z9iwjNXL7HQyD/UUx1QE7Tfg47SYkJqBxUu2ibkxBXYWYaR3APssELThBbois4x4nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxgaKkQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxgaKkQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2666C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764354173;
	bh=XGtHNMpnQdPRthIr01TmdYkUc2RTDZVrMTBDpUNxWko=;
	h=To:Subject:From:Date:From;
	b=QxgaKkQVCingVwmQV3apwwdiNK9vD5WV1dd6GfHuO7NwbnHbqryvBWaXMpKC3x3yT
	 AUXLC+9FluPXr7frBkIuggxDn0P8XUMx/J2wdjUsRWvdAavMKOIMktTMC9ai03Fl3m
	 Bt0mpGxvqQkQ7zdCBrlQZws6XJHaAz6LBb4jZibILMGUTrgLB1cjh/hsEq9SbX4nZe
	 IwtRQ8v1/8KdPufbQAal0hvvfJu8cEEa0wAksC8UAP5gYhOYVkDoVXhyEbK6FzS+QA
	 equOhX7miRyOQNDTvdto2ANqVa4UcqWXWjioC3NF6Rw9NQ39uOTwhnaLrmFgYxS7wu
	 /O6vJMsr7zKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C70D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435417358.4425.8062294364316005587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e765eceb5170de123b5073c854ceb3e22c0695748ff4b85f1ee4e6c1bbfb74
Date: Fri, 28 Nov 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764354173

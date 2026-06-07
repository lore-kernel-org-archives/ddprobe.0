Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5E845BE3
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780796674; cv=none; b=spCIEx3XKT3eeBieiDPFvg8GNRQ7pgMZvv2n5FrO3O1JpO7XUKBWeU8xWwdaUrDSkPdQoYZvsOiH2+Q4cN89Qez1vGLq5P/eudgF0M5euaTN3DhHLApVTJZl5Ns7fI4XqCx73picXd3skrn90GvjaC3G5cQcrZImWNSRUU1NVP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780796674; c=relaxed/simple;
	bh=Hfde8mWwo0/qQIpnPU2IVRwDgTpTF0ZRSS3Lq1TvknM=;
	h=To:Subject:From:Message-Id:Date; b=edKHI0N+YA3Ltw/Vc5YC6y8Su64I7sm0ORbjVEgYEaX540OUKTh1vo/WhvwgKXHa9drtsU+2epaBWXI6wqdcWcpaYyE1kWsGufjPjmxq9Ft0SIN68E4ULqcYe3GObGAVOHpa571bCyEJMMfAkGKF/VtR7V0p5u3D0PH0X07CEcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=im8KEKgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="im8KEKgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FEAC2BCB0
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780796673;
	bh=Hfde8mWwo0/qQIpnPU2IVRwDgTpTF0ZRSS3Lq1TvknM=;
	h=To:Subject:From:Date:From;
	b=im8KEKgMVtuIXPSsZBHuoR0Eusa8XNByiaKIAk+VkFd9uQSzHHXQmKcZYGZwEIfI6
	 YaCUK/fQr/ltWG77tZaASoR80RWYpy/CXOBkHk2b3WNLZjntp2DfckDA46MqfHtgqd
	 5RHfjIAJdWgT8LUEZJZXumql10BIFnGJhUQdMRyI9VGvRwMf+y9VSGfN7lJRUMzT/T
	 1PIxtSklk2RipY1c6Rw5yUqDixh+f4XSBAicjrmYIjifpFlfoIqBlCM8MQaBeOByKD
	 a9V8vLsRv+VaVTtQCtju2dO4yPeiafRh6/MNojQIyw0YB2zJKkWu7jNnf/BE75TMjL
	 vTmBfYhXnVfXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC87CD8C85
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178079667368.20058.1178749187814254498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc588cbf2bdd16b1f6637d5abd8beffaa71256f190c6ee729e1c5039ae28e33e
Date: Sun, 07 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780796673

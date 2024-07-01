Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D10171647
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719860723; cv=none; b=FL6ZAdzCOin1Ft1kUk8JcSU7XRwWoXmBPWE35+Ej6qWRoqqmDKqYnhLtvZl8hP5fy/E+jbtnyWT+L5tlNkznncwlZAVsEi9jWKxEg9T0Soo3weVCtaG6LfrjPfwKdAQA1PcO9T5htDISaxQ0Fsdw8jO6ye/UF568L4zS4SlbI40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719860723; c=relaxed/simple;
	bh=oFvN5GfhCPU2cLB3XHkwO6gdNdsKiOk7tIozAAa0ClE=;
	h=To:Subject:From:Message-Id:Date; b=W03pZ5QvJoU6W/OMyY9YxDJ/e83Rl3QGL4zOtYdtzsRAzrpQOKrmFW1SnRR3iOk57fYK1D7f77PwR4jZIl8dwq/jKbWz30MoHPp9AROG7OIMborToHWz8wmqw7HnQ0wM1JbOMaBXxHd16eNkaSum6dAppNlcNz6uKf32ZY2vtHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t31L9/z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t31L9/z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3CFC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719860722;
	bh=oFvN5GfhCPU2cLB3XHkwO6gdNdsKiOk7tIozAAa0ClE=;
	h=To:Subject:From:Date:From;
	b=t31L9/z0JOwy829uVR9b0JuYT4NlcQCi8aZKHppAlatt7Q1sjMRpSrM6VRWjTWGQF
	 Ka0Vrjp/TUY85zKNNav6bPmagLGc2aFKaAZlZ3ggLFAo358Sn9wW0EvS/Uxy370mCR
	 FwFWSejwDO0Ls4nXDbxQvHlmd+NYZLHZ6WWeeX2YtC9UE8o98noEqP0DNJh+PdMpFW
	 /8YwQeFC3G5633+OKxxMz1fblmAa4EpckMHxssrqZctJfGPG68o1MW9+NB/bQiOzNd
	 j83Su3pTHGLNohOvl0lWtMkSD5aVVMwaPQRxFzBfJdhVy3WXp+pUTxzeMTXR8Rce5Y
	 6RPxOaOcY3TAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C803AC41513
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 19:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986072279.27711.5521679177481721496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98359184fc02f5a063078c432f31dbcb1a7d2c6d2ba608f36415ee79330551d1
Date: Mon, 01 Jul 2024 19:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719860722

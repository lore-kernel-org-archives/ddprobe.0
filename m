Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D2F635
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747370395; cv=none; b=ZHcXeAaac6OHm2GywLFIxkKLXwiHA/AJQDEocuMLCMOWK8wIax90ujg9GnoDFHWrDzVHC5vwFuLauunJpq2UHnRcEODbZ1KUm+DGRCmmO71r+kDKN4DjpVsu9+tqQVyu/ArQhPwgHakQonTA6ZKlJJ/rG7QUISsAdUx+tTUBAag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747370395; c=relaxed/simple;
	bh=e/qSvDbGTmr/xdKy4df9VJlJJ454mDy7ZIxOWfPIpIM=;
	h=To:Subject:From:Message-Id:Date; b=SDaZ9gHaniF/0cjx9hICt+HHSAwgkNDvqmFQXqBuuDpEyBoKsPnIWZ6m5A5+5n7Jmz7/kkIwg6EZJqWAh8KQkL/RRAtdNAe+O0FoMVpR952Xpltl1tkOH6bf/CjHrbKehRmndnWuoY7FKSw1wxUfS//bIakvhp5MCqNhxr2dAes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBagtU0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBagtU0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B04C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747370393;
	bh=e/qSvDbGTmr/xdKy4df9VJlJJ454mDy7ZIxOWfPIpIM=;
	h=To:Subject:From:Date:From;
	b=jBagtU0nRSfcYMNFC631G8TMAb4ZsINuqifT0hs111fsEgq3A69vAg0L2At19o3sM
	 PBTGY9shm56xtSawmk4VkkiVf13ijDTh287AuSo0vKHHbkBvYFy7rC6CwhAFStucOR
	 zMvNjD7ZqB30ezY6Oh0WBmQ6ySXWjK97j+vZTetDivhvLQ5zwt+Q64LSnDwS1pOzh1
	 15UhfQ52ZYuihayV+UO1qB1b4rw+lwCOl3dYuA/NtERgxLCEygzRPIauLxmA2v7/me
	 XetUJYjTw3x8Zpr4ZI0Klvj2NbPDRuI2yPO2zl6Aiwwy5JMgJYZx+FKua51+CkCf8J
	 DQLzQ5j7ZAaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918B3C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174737039357.19290.9246733618663788367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05aaaea6332cc7e39f09eec3595000b5c868e019089d32f54d2a46ed14b5937
Date: Fri, 16 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747370393

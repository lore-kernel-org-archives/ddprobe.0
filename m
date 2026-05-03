Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC2140DFB7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777770454; cv=none; b=IT66F7bMjp93p+ZQ5lBEHK0eewQfr+M/cetPPdHWpNzxZfCFy9pEjqFKHR32MS6VQSzxduRo1g5iw5CTiH/PBX9xiOvLtRSKft2Chdq2CrQApqK3kIKLbfULobMZvZvl5QEaAzIG9NGimLlQ1uMCVjeXWuZhc1f2HfqE+aTTdfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777770454; c=relaxed/simple;
	bh=iUwiq/fpETcHbLPp1V1V4+1nyJfURWdGDO6uDwXZyHE=;
	h=To:Subject:From:Message-Id:Date; b=MQsQOQCc2r85GnjOEI737ucipMpABRWWZvAtIBDGf+ofJmxZs+ZPL9MZ0ARmAopH6AfriiJXrlo1WV7ZJ76iVWdv22oxOl5bSQSNbYzVSQ3KqWuNBf31hWa/V97zLv3rHPZ6KyyKoPOqQTukcdx6+tQQwCSo9lueNiticsgQ+Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6EUXIOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6EUXIOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09A1C19425
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777770453;
	bh=iUwiq/fpETcHbLPp1V1V4+1nyJfURWdGDO6uDwXZyHE=;
	h=To:Subject:From:Date:From;
	b=E6EUXIOhqmcsR44VglA8u14yX3urTxsCsw55Ev+FbwvGuoGWQ7ldppH8P3McQ9ckW
	 0p1qU59U44czhKJq1K6UmLpOh+rycKmlfn89KoeXjZsOLejVeAGJPc6pxgDoJ+QLqu
	 XgxuV2cenDYOd7zlrZkgqA9MhEA/dFfhXq5Ehyf4MNPGrB6fHlRvtCRmmskWp2d9WF
	 pq2MsukOUvMR4R3daXUHxJ7YrxlokbuvqaubSukBwzKoRt4aqjKndWtv+8grombCik
	 qikY8CA/UMHmlFk8PonV1dCNoZG3oKrz2LyOwVDXRDe/tvr6r0nBwTPMSdRRp0gbIT
	 vuK6j+OHJsDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC63DCD3423
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177777045368.5829.18419838072435309706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec1d8ee01a0e8aa73ab8553d0e3f169e3fb47950d8992abaa6e17eeb5f7a901
Date: Sun, 03 May 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777770453

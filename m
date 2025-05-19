Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8BF266EF1
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747640994; cv=none; b=hN7Cda0ZJ0g14c2lkx+M4CgCp5Yu5Ik6Qpo5ciHPO81PWP+QApj2ujuQaf5GiaTEab7DqhxPqmjh/YBUdFc4xa7stwnvPlw1fG/trn+4yJM+RCjwVbE8hHonNXGnitlXotRK2USHRTVdympwW2tNXIWROZec4qiB220ypwBT/HA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747640994; c=relaxed/simple;
	bh=ylUSNB2LVDpmEg6z1Xd9g/SLlitetRigivSjj6clXJo=;
	h=To:Subject:From:Message-Id:Date; b=fONayRoxytjcwkOPRo2p9EGsymT0FU8NxwXBo75R058a4is26UAvmn9HitRj0Qlt31SU39aUoLvz0Ghk0jXwJptreISr9Bdv+TScE7BkbOCf4Grhqjuj41+68t+fISI/v27Qnqw6jfr/aGFfuGjTw0DJQnyuMU4Se9ZXE0H76zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrUB12GQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrUB12GQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E05CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747640993;
	bh=ylUSNB2LVDpmEg6z1Xd9g/SLlitetRigivSjj6clXJo=;
	h=To:Subject:From:Date:From;
	b=qrUB12GQo+gq1FMxekYvgxdZ+WX4c35yqYSU4/wYKEF5u2hwf1fj7MgeuUIgPXoh7
	 tokwR1dqVsEejfSiYQVr/uKcXW3d6rwglgyh/Fqg8WELZvT7njcGXWHSrOHn2EdJiK
	 KQsGJbPlVgug9T2Jz0bdnMxzVVLOAyf2dcnYLhNNrDBplKLlq6UoirxFELBKFZieRA
	 mLrgGKiCc8KGM4Tj0EWzHBPa7HB61KOEqzbVu75TWGoaLh/jFLuo8nQPrfyAO51mnY
	 Pqwr09Ckhf49qRYY7+4fJAzMTU5xilAR/QwxTAZGCDj47k/biKJArLgHifUOUvtDJE
	 h6LGXFu3Q5+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBAFC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764099357.13562.10349344320456514973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3005c16bf66b1639b4688ecaadb90c65e22ccb31c7b2204b2ca274a1cded7a
Date: Mon, 19 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747640993

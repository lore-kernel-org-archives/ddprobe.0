Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FE94A263D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792009234; cv=none; b=o6bpwOd8UgId+OBEVyz3uSjTU4b1y6yL+iAoa6zsTUnxttsyjj89kQXxDuj/AQYdg5MUCfqyqmRsRGpsZ+TJV2DSK6ictB5MJoxpI9jL9LkXHnXQ2XpYzAZQbPIYcn7nSO/X5A1V4vHp1qAyhOvGwfRU6ALSNPkJslIfPWyhoBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792009234; c=relaxed/simple;
	bh=d6rQP1b9+OKev7kabnnBYZU+fpSxKOEMY+6BSbdAJco=;
	h=To:Subject:From:Message-Id:Date; b=GHx3UpXI4654+lPz0INMTNG9zeCfB161TuYVNq7AYvajiom472Ya/wRvAuL22rPUhrIcxUHmtugK6QMAVkAwIgq99TcKPaAJ/FGTmRN3YObmS/REs5AAH/YYw934ROSd+bXOunMv9NR7wvrhLl337SQp4yr8d2PQoQquDN2pDPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biM/D7pk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biM/D7pk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B4DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792009233;
	bh=d6rQP1b9+OKev7kabnnBYZU+fpSxKOEMY+6BSbdAJco=;
	h=To:Subject:From:Date:From;
	b=biM/D7pkftRlxiT0dS/KqTfzNycmp1JRNIp0+fagFnR2fMgkpg/nnmmF+J6zJ6bol
	 1O/MiFPHana+O9bxSTKIvTq8yy0HijyY7X4tCxN1f0ZtHtvdrZaWc547cZXOrdF0Kr
	 BjrvwxRXJYgqGAhTe4Fka8WgwtE/uxxFpCMOwTAdy6gQNk5I50K8iV+HTauHILA6QO
	 uNR0pMkinRo5p4yRnHaZaxTzcTTADqCfRl73yawl4R2B9jXKOXBNai1khobhI5bKMX
	 5jyJEoujhG7AJWrbEnMpwgyW5zfyWLMSg35ADuIL6c8/4o18ds0Bgz8DTgth7RuCNG
	 LRnZCyO0qldDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAADCC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200923370.17421.17805980596274160009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6876d720179b3cd1dec74b02e7072c9f2b6b6ff9c22d3eb323a1e15de2dede
Date: Wed, 14 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792009233

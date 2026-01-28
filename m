Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3093382DF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769587434; cv=none; b=fxLTqzN1dzYlZXSzxEaCAZwW8ssG01jTdg1e722bdmmv5ZWLBHIRVy9WHI1OoMBfgF180A27hWDUerP7iplxSMk0KdGXI0jLEmKOgDQmuRzta6LkAQkSO2JqNemUtZbCuqx5p145FFUNXs734ZfHuQs0mF4NEiXvGuglQoAgIRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769587434; c=relaxed/simple;
	bh=mJlO9Nr44QRu0OFDQ7df5lDIM7PfaL1fUlFmSll7NVE=;
	h=To:Subject:From:Message-Id:Date; b=PUt7pN2wtIJ57iRMz8Iv+43gzWdDPjo69teIypLjZFnubBVCAU34dB4PHfQHphe/QRLnCwau90Gy+mt1LAMZgmcVO9xbrGk1X7MkiIJUKc+5Sozl44EpqUF9///uGzpIEBesdUTjtMSmwmqaFSw6ae5rTemow6vEz24KoLpXBuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkmmNqnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkmmNqnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB62BC2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769587433;
	bh=mJlO9Nr44QRu0OFDQ7df5lDIM7PfaL1fUlFmSll7NVE=;
	h=To:Subject:From:Date:From;
	b=VkmmNqnWCqmkNqlNlN659T2Be170hlHlKUsblcBPfwKk8tcwquCTzgewruH8gYVIQ
	 xZOookpo75ACtexaJYajJcPz8CAywR9OFQvQO4XN2lsf06gnu9U0/oDOMR260GxR+v
	 HG9E7qWYg6RkTqOiHWe4diVb5yLF/Il24oPr1F3yX/hUQfgDGeS1pdf9LLdxqLp0yD
	 71G93ItW6B0W8w7aneMH5VT1ky/y9Mc2T55m3517O0CD/C/1WNhxfYjMGdHe+A44dJ
	 Ue/fbRBxl/SkZws5D4nrlrPybnC0W3zQHRTT78d9fEDFz7cRWYJu3Ep2e80qaatX6v
	 Otppy6D718dpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97633D35662
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958743360.18769.15606554232092956340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbbf64c0472bdcd17c164f8c4c3014e23f4b5bc3cd1940dc5b6b86e5cd02335
Date: Wed, 28 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769587433

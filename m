Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DCD1119A
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726309554; cv=none; b=S0pQpL4fXWphHtcmjEkCHUHOXH11wzU2ZMeHrhUnHS9xjh8XriLtJ2r81+ieuNb1LoiEpZFW6WXkKVBTmjbZQPR6p4shjaajpOdG1xvjCZv2/ckdKEkBzr6SIkSo/eLLke/lR5IoiOxVAh0X8VWNIax18A9drNLDZUzg7FBg8As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726309554; c=relaxed/simple;
	bh=QXjd9cHyrsw6A+kvT1FuMLoNe2c0hCsPmbvdhETrB2Y=;
	h=To:Subject:From:Message-Id:Date; b=XxwLtmrBJfAo2rXnTAE6SxqbDUozykFRit99YxxySRsj4+7IVI776KCBxt+Ar+WdupYcfFMPDpeFkQGtgiaRXjlddk6ex/LykIjXZOz2ERw+0N/c11Nsqw0svFEu4DAE9IPwt4O5oNVnjz8vOU2nlFWlBFjMeou2h8deOIqiCGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9acKEse; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9acKEse"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F85C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726309553;
	bh=QXjd9cHyrsw6A+kvT1FuMLoNe2c0hCsPmbvdhETrB2Y=;
	h=To:Subject:From:Date:From;
	b=A9acKEsemAs3jtWMFwZ82HA2iJWIHS3quQIaQKTwXYp+lNESRwEa86K57Q3p50d65
	 FWSQjMQ0Vx/SSdSRDAHzOW1ptoapHdgXiNTY5FzZhIDS91QPyvz9xdmZOhNeJOd/tq
	 fjgkMDlidigJnvoog35OP6wSEwnRtHnXGdzj0GegAuBI3eVfdYa7eNc6sZoIoYKGcP
	 ZuqAO40I8xJvFSOJE3OVO0tqx7PTTtzJClafV1bVLOgspJz5ATzU4pa6xRxVsfmxK+
	 MjVw5xvZmNGz+NRSmgq13VXgVUjCqHB7gupg6n0/13FIh44X/KASZlpjmnaFL3LWxI
	 dnI7pjY0OlNdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989E4C02190
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630955360.26256.15642641197004407525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a74ffc26683b1a3ba45769d1c11dae287445dbb15082f8ca2214b0b76495a74
Date: Sat, 14 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726309553

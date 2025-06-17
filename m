Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32206221568
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750157394; cv=none; b=ABgIm1poIKDzbk4vxwELQ94nh4Mo+XhVBibjR1/THFzTLHOeLFGF2ZN5KjIsUZnFMQqPMmxc4Le646Fdx6EVm9WLNCQk3tR7BgdT1D4PIl/A5shA1rWaVbnNPkPNXLw+32LnX5JpkRtHKacsrzdWlDton0oIs/9QZIt7gTpTZ5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750157394; c=relaxed/simple;
	bh=s7v2Tc5jIDtyP8UsYKyvoA5qLjwdpuOOahvSYEApPis=;
	h=To:Subject:From:Message-Id:Date; b=mkZot/NfLfG0Mwx8SKRzNsh/BN3U3OwgAj43r+ngLCUlQFjqEmp6vcCG6RxokcVnlJx1t8K0OmBpQRuwUjlIWjliTGiNOonWqO61oFQPSnc1Wngynub65Dje0vl853XfVJQXQG18Ak0PX2a+DW1YaUTaP9y4/SaFuY5qBTjdvAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2V51Kja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2V51Kja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7598C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750157393;
	bh=s7v2Tc5jIDtyP8UsYKyvoA5qLjwdpuOOahvSYEApPis=;
	h=To:Subject:From:Date:From;
	b=d2V51KjaoLQO1DjLaTTeMpnCfnSTU2ZaEx4a4NUUAaise7bzMOLg3xzcLYws2ibCr
	 3yZYpe29o0IGdXm4DpnD8/Kw/7GAN73TKaY6FyY6v2BaETAPHZRDc26dlr4juJCRZL
	 3r/5YztDZ+tTE/O03/TRhiz3YM/QhA3lX46ivAIWRbmupkeNqnbQZuKUaJZ0G926kp
	 dO2QJmN52OP7sKxpLgGsedLh2OUxQtCvQ2Njv5/dcbR/xS1kvamPhrAfhb+V2zSJCU
	 5jRA2fSUyGC1oj4gB2cGvGOOf3f0v8/NiN6qEJYNhTMSjWTPgXkk/DTOZUjIpQerH5
	 gzkDjXiitZRZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9417BC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175015739359.31813.8319862743441601660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7636bca3a7ec11c09c02ff152e72404cf378003e5f7348e618fa08f2bff2d763
Date: Tue, 17 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750157393

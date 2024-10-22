Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307041CB30C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729629354; cv=none; b=RD8Z7tlQ3dBciqY3Hhuh1nFU5vIHWNOoQ12eyHX/6v39Cug7jg3rtdX6NjFBVmG58/kluxXouN4+o6/3X5yxCp8F3McjngRar/Bk5N71PrvdfDKp2rk0tB/1ZlrPYvlc39ZUVphCwSoSYAGMlhqV4hVUubeQ7H3hXoU/lzDA584=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729629354; c=relaxed/simple;
	bh=pKDFLNz9BcaCawq7G+kMQo5neJ1tO3R/+jAUBIa2yHE=;
	h=To:Subject:From:Message-Id:Date; b=RBt76LHP5L5V4DFNLsUHnDMEsvdS/G25g4S6PAOqX0Gsp892cI/74WOe6umUyKKOxGL8fs4lBskxA0oKRwPV3ouoPsWdVSO/fCKk9jx7w30bQyBIFDSwRvMUGVM3l9rKRoAH6UessnkUPQ8l7oqWF0tk1Q/3MJ4ODuz49v76WII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jseb+mqH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jseb+mqH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B670CC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729629353;
	bh=pKDFLNz9BcaCawq7G+kMQo5neJ1tO3R/+jAUBIa2yHE=;
	h=To:Subject:From:Date:From;
	b=Jseb+mqHNc0vP6SFISvAUUP+fOc4K70r3fceo7PCJ9W/S/DTdO4+ZS6sgs0doRD4X
	 7Y58YUX7OFRgbpzY2yG9NZH4rcOID7qv41y6BWsm8NOK8Aszc3+1qZktcViYAD3z8D
	 kWTTdNKYy2C/me1gt4TXr8IpUi5451NNoqoSpa44+U0FFJuTGRUbJhlm32ahl1u4aq
	 lmxqcB2sCBw7vYGukQgAani7gEk6GaxFvAMdJZTXC17u5NgtU4QZaJtIW4ryApAv/U
	 fX0yDMyp2yEHt3GenRnzpJTYSgXUoBB4C7jFpgocL1ZD2HJxvMA/vOH16mbAgkZIKk
	 kooKgMwGjPwsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A135DCDD0EC
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172962935364.15262.15415303638490568510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3781469f0a8171f49501e4810b1477b5a02794fa80651b15dea2a47ec305a15c
Date: Tue, 22 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729629353

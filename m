Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5F82FD1DA
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771620294; cv=none; b=bAaHk+IZgYlA3t+Un6brvxiJwNKagRSi9+4tYR39qZo0MvzpV0vUKpslDCLNjdW731ogxWis64ZtZqEkOSX3pvMug4emiciONEVctm//JVP0g1mj4uw09irb638BiCkgfWS6HXGvbfTbOHYDtQVuXyPBO4sSpejm7pAyOrtTv2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771620294; c=relaxed/simple;
	bh=GbE2U6wt3Cla84+tjazxBAStxj/P8STIkkhiFYX6mos=;
	h=To:Subject:From:Message-Id:Date; b=hMNTUfXY5tjRF2Nxbfxw88L4JqtTFzDCZNewsRQgpjeJgt80XOaXD5UCanujcEyPAZasRMNAc2T7QlUy170WVtJwBD+7FSHkzMQmM0dMa2snJf/X5F5Z5Gt8YtmUC+u7POE9rvIxf3DtPU4vR3Ze/VGjvBKRoP/CTVWoLApyqG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBfQJGzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBfQJGzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1374C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771620293;
	bh=GbE2U6wt3Cla84+tjazxBAStxj/P8STIkkhiFYX6mos=;
	h=To:Subject:From:Date:From;
	b=IBfQJGzuG/C42Oai2kWVsBCkrSw56YefORhGCboQFOgrVxwPksBq3cSX4GI03Hu+P
	 uka3UN2oz3mbtE1b5yzqSnEZxX7xAmQv+GO+8JtSPLMNoAHm/QzZAZ0cu1ATWWwD90
	 kUlk8kzF7MriMVcCpo31c3OvTlt3MdQTnsMkQLHUQrgCuVos4ImS+HsFvZK90r78ca
	 W+ZVrAMSIMf7bcs2jw1ekujjVaEK0ZxPWAzonLqFfyMiS8ro3CzMTIAqNsHWLPQ4s7
	 qoeqqVetSxhybMtEtjJHO5qdBx7vTDlVKJEzl3ZeIsK3qloL0SA5pivl1530NRiTne
	 nQ+NBB/CkI0ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9797FC5B55D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162029361.11409.278139220713845130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a5de3cf7039dfefad8467cbee8a9645822f9ec335e50da692e7e708ad26f5f
Date: Fri, 20 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771620293

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C6A27453
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780719874; cv=none; b=YktFlv5hp9FjzktVpVtURxUq4TZIMlrhZAkBe2/DKaGXyBDxcBvkaJQ/8+CDGcdFvPRGiO4XyMrvCuKyjT1njnwkEKgOycKKM2XJ3GykJw+ec4bbm4zDJhoETVoqNeSGumeXyCEvbvNDUnlq9TD0qIBMl9ndjScRXgUQyR7+j18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780719874; c=relaxed/simple;
	bh=9MPBdbYfGOWYk4C12XW2Utyx0bEPNBGGxCIbk6PydVM=;
	h=To:Subject:From:Message-Id:Date; b=lJ0KNpf4nKTE3zr9pc0KfF/1MHnJ9TGdFhPqdqngUwb9ilu4SJ3JYIzR+MQev01pL1TTt8X8d0pWSXgMOsLnxd/4dDCoJeF205i5TP2CA3ldVHDN6O/QgBAA8oMtJg3NTEwz6kyJ4L6yrEGXhf6PD8N9OZIYbw5/5QgWBHbdK0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbYJRkIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbYJRkIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78CFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780719873;
	bh=9MPBdbYfGOWYk4C12XW2Utyx0bEPNBGGxCIbk6PydVM=;
	h=To:Subject:From:Date:From;
	b=cbYJRkIPu0Oby9+RJ9GZ063FHoAppjnGDTP56o7u/JqR0VTxT+DUx4EIGOLITNikB
	 1OPaxcwdpJeYHAhIfeC27rZZSzgv6PIJQ2p5dhwvkzNcpneOXBBUKC4I8CCThabsaV
	 Hlh7MJsaeQQPGu1FqDtpzIZCfWzQFKHoE6ACxPkGF5v0atTMdwaLdwv9uDNQKoGuPi
	 ybe/wP3jrUTlE3JM+BUv3IievCI052C97ZBKDUMHG+L3lBgMmV9AtYq8Co/9rqSgXe
	 RuOsPa/jnzOYg8y/hQNlX0xjXXv9jc6vFACk1EDa4ywma6utROCDE4ezHkO7gZtoq3
	 u2daUwbh5Uhuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C178FCD6E55
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071987374.8149.9143696437896608519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1268e5808f938a1ddfe8ed491a72acfb39ced2f66633f55119948fb3813642d9
Date: Sat, 06 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780719873

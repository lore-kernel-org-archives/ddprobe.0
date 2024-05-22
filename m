Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D13478C75
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716359003; cv=none; b=IDNtz7H3wEDTeNvsa3xC30+ZQvZkVooDt/eRYOk1BpqW6x9NH/CTKLHk1LNmPGUUEpcyD8qdP816XGtpdpuZsgp7GHR1+LFyYlZ/SP1m0M0KXJgzr4sKw+kJ4ySG7tSMkpfaRXegKWpWAkJeHr3moA3q7MeiMXifbC/N2a8HXVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716359003; c=relaxed/simple;
	bh=KMrVyiDyiDUX4BQLbgL3330RRl+5yfQlCE1d7dJ677Q=;
	h=To:Subject:From:Message-Id:Date; b=beRso2yy/BdxzRPCYhxbBIJNTcOsEgrBisThHWGOIp2IgRrgtq1RiOujWj99CN2ruWlbpgSgbA5PAPXAUoghC1GtImJo+9GiaWuSmrpHp4OfnEdqOd3fgNedBnvuqA+zWL8+Ed/VpVIN2mnVC09CdqjrtNKreS7gI8ju5ViT6TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBUbpGMu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBUbpGMu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9D9C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716359002;
	bh=KMrVyiDyiDUX4BQLbgL3330RRl+5yfQlCE1d7dJ677Q=;
	h=To:Subject:From:Date:From;
	b=PBUbpGMu5LrDFw58XXg1e6L5SkCbyVwIIoKWca737TloE4XMrFTPZOaeM+NTQ5I5u
	 m3knHd15zZ3EM6Z+JYqHWNA9VAmkglr+k0xXNodCwd56Ozv6QpeFigZR+94j3qDvdV
	 feL7yjIC8frvXy7j5QcxZIWWS0oMzdIwFzyeXzYYS+1lUNDbWELRssVlg4BP5HwCkA
	 8nZ8FKdyx3q0KZDVpNT8lW1SQtmpjFXNsAXjiL1bKOk77kl0QVxQdTGQ3Z7kiLO2rn
	 MBakYnACroG7WcYngkf9UZYiQe50skauuglDp3UeHOl5JicO+lPa+SjFncZABhRdrl
	 3u5Yfq12DjtPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0D4C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 06:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171635900275.15765.13969732730004232721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea1fc074a9ae5353d261ce3ee331841700b4130113c05b10e11629ec06644f5
Date: Wed, 22 May 2024 06:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716359002

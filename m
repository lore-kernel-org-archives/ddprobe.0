Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1AC817
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732329354; cv=none; b=rerzTVZ5MUoTZ1OxUBPLkXEJN7L8kJuQlMTLosABs+GjRE+zQxmHeQ6w5SslnMwUipaqsU+Hmqq4cL2LbZzfrIesr9UNGqkRkAtI7I6NZBaZc+BaVQGV6q2pt2cPuliZUAqNn3pAuUFtGKJ0IEZrUzktC/4F4YEmQt3ah8NWkbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732329354; c=relaxed/simple;
	bh=I0ws03uxSTWz4tUtyN0HaRpZ/lQiwJi/ZYOse1VhQyw=;
	h=To:Subject:From:Message-Id:Date; b=BXk5VtLxzvBxeUns2rUJ2yS1W+ls3IyfgJTv2khoX1bY6Zu67BRWzVnbxABwgvS4b5QaRi6ez/DcVQkkQcpaqfmtwCoDboKl18vOd5ZPAeDv2Mmhnvt2xN405bZE2hySxDv/3+oPYlYGsJFePbqkX/ApbO88c2TjYayQb8c4mSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8HFExV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8HFExV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98C8C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732329353;
	bh=I0ws03uxSTWz4tUtyN0HaRpZ/lQiwJi/ZYOse1VhQyw=;
	h=To:Subject:From:Date:From;
	b=g8HFExV+keYmfcIQKo9LxpfY4dmVoWLKCE9ePPjdNmmX+R2ecqnAr0F6JeOgHZYmA
	 3kWbLRqoN7iYVyf5/4cV4zReXLMVpSRAYyEPOfPEmlBRV6x6uhKb2UK37zjKgR2ec5
	 X6sQQsoRunqvjCQ3qlI1UcTUaxIVHwEePwKMpA3xP/oE4MW9MQx60ioLgAtyTv5j0M
	 2nW26Lyxq/NIOn2PwNVvyaSkBoYsLkcYVFzlNdvTL7P2P0gSdCF/zLRHMxtjzRdqEt
	 0uBvdUU7x3J4jjmgncN5Wxm9RH8oRPTSI5dELP1wNp68/jYpL95TNWMnTZ8Ep9RZtI
	 cgsWpV9OTLU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96048E6ADDD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173232935358.32700.1640659514930810664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a99360f2469722fa8a7c9971c81f06989c1141170a8218fd14ae38457abd1a2
Date: Sat, 23 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732329353

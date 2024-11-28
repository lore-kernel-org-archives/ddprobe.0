Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294581494A3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732791954; cv=none; b=URK3Vh9/1rqt4n7XBs2+KbxCEu1MHYPksEdysqqEWULtgaTG2OLiasclIZJYkGIQ6PjNqvNfwtZ5LEBd4v+Tum5sfps0H3wtmmZbWbrXDoVMI9a+3MMxJjSamtXmvzWRKTwWI+I378U9lIONqQ90ScRxD5ACJx2kzY9ZBZmJk3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732791954; c=relaxed/simple;
	bh=IQYn0cNRg2pzFiyUPNRoSANQrDuQO8Pokvdz0tkliTs=;
	h=To:Subject:From:Message-Id:Date; b=jkwRiMDebVdNoSbr1BxyUYPw6r6LZZJn4W1OKrXpsr1DjzvmYz9lC1Kpkt4Xq4l6x4FVfqgG4YqtOBA3HGi/twwwrJb2ZBE2HbNwNmQZAzq8MvsbQhn6MGD3XKi9SsYfc3Ld6H3ESbAa98F4UJBQMInfnf/Sb12xaPg4o17YEaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+6elIMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+6elIMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC3EC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732791953;
	bh=IQYn0cNRg2pzFiyUPNRoSANQrDuQO8Pokvdz0tkliTs=;
	h=To:Subject:From:Date:From;
	b=c+6elIMUXHESq+jG5xbViGWczHsGRaqGOmrB+yRRxu0SbpDz5EkEQgO+KPE7+2tmE
	 uPehYxfC2piFcXZN+0SPvHizSTUFzn9smjcgjiZjv6+DPRiLUOo01h7qA6e+88gY2v
	 5U1DhLDNZNQTq8p1RhpogAtbvyUeR1N8xiZ5NrsvWoNf8NPB2HW9z1PBwVPcLJTpcb
	 jpzWtu2/s4OOr9NATJHPZPDjOK9FqggQqo2M9Vmiys8atyMvPRRFa/iXzm+XMpyHrJ
	 LLRMqyoMaaV/hBvitpLFAoyByrw7kEV0MH04wzd8/qyH+fVop/zX95fIbv5/Io5XKi
	 g4EbXAl7RyO4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8E4D690F9
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279195362.26077.3817339614621747385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa7cbcbde7e7233369ab4bc73130c2fc3d07b6e42d69428c5eb170682e99574
Date: Thu, 28 Nov 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732791953

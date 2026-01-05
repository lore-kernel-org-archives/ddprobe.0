Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4229D1FE44A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767632634; cv=none; b=WuoyuyF1/jp6JVPkSgNO/L2RbYp9RZhwad3D5gxR6e1Kgi+Cz3EtwHu/PktCCXDx+BuFAEEnBU5G+lky7wNFGFzD7TH4Q1oMZC3TmW1GQpRpIVbhuc9EKJ+nwID6NGGpzz/46lbsxzPLD46+E9/6kQV6REbkOpjH3Ya2R+fSmqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767632634; c=relaxed/simple;
	bh=dbowNzNBZkvzHFAZphBtoiqSGiFr7Mtx5pfeV+r3T7g=;
	h=To:Subject:From:Message-Id:Date; b=dCoLOpiBjeMjkFoyuNch6tP44g5IJ7f0P7APae3aJvh9tDbFSL1JwPwH+hceivn8ql1oOPsVp2SDPSZEkjHZk44QVENpkT3cMaU3QwV4HlmNwYjtFEKXotKKZNr/dBXJDNe0VBWumDYLwkiT4DNnFd1FrtE8Upui08Vst5Kebrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBjYX9M0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBjYX9M0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B3C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767632633;
	bh=dbowNzNBZkvzHFAZphBtoiqSGiFr7Mtx5pfeV+r3T7g=;
	h=To:Subject:From:Date:From;
	b=cBjYX9M0wKv1+rd9X37lohAdjSSz9fM+koJGm+cKXPsC5aF3ABP/jK4W7u5vCzqbP
	 T5IL2iAhiESGGNZnkjCBun+NCa+Q1RAdeEo8aTAog8qSEfhhQSTf880SeCqMnGxMwK
	 jdFKH6RehBidW3xSM02WRLVhx7Q/SFwyX6sgWPsDhPNC3bNdAbvaL8jBXXU6ippI6r
	 0X56sP7Dudgi8XIfSrlp8n/Rg4U0V56RFFy+ajstgxe+5tw2dGUlM4zbX2gYlrOKVw
	 AzaMHnCIV2INRBUmNOMgXmiLpc/WYVx1iCp7Bw8whGcR4VoO/uYUMA2v4OYp2j7boF
	 xmsTaP6PjHhpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9512BC79FA8
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176763263357.28561.15824861893526128541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783009600fdab0da2c77a55dc14248fefa70916cbf49f7fa131f30250d9df24f
Date: Mon, 05 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767632633

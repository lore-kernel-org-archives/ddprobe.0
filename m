Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF023E49C0
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785805834; cv=none; b=hopa7/EKa0a9eS7RHB5rWMh+u0uwKzYXZkaIXnxxL/+xLjXw1IK2CyJAWx9fKEEdJdl7z4YONgAzTRVz6nz/A/KJdGfGW3c12EZ2o4imRO9y4iC1HASNDE177THyiE7eu+pvQ39vBrB8s7FOqKxfHeEgzrWF+ea9eU7O4rLX4R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785805834; c=relaxed/simple;
	bh=IzQPBMRaIvWRSTnr5NMd/4MVVAINdStMAERwqsJRes0=;
	h=To:Subject:From:Message-Id:Date; b=Y6uJkTrR3QSzOZaZKMskWpXS6O1HlRSFuS0uf3DrIj8+Lo5L99S+sn6VF4gIMm1lsgVnmFLSflb/ztu3bLPkuYHm2kA0j9WAl0j9gJierglkXuFkoo1AiXEID0obJuIQuSmPnOgxieHIV0HnT4/09YqqohCyHAipOKklFCC83kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGvH4Qdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGvH4Qdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E80C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785805833;
	bh=IzQPBMRaIvWRSTnr5NMd/4MVVAINdStMAERwqsJRes0=;
	h=To:Subject:From:Date:From;
	b=MGvH4QdnTWIsntSUS136hN9Zjasvx0UtA3yRmqycD29RWwERArn8kB9y8VyLCfKip
	 +gpJ6wbgOn12itkZv5eQ15We7IabkoeaOULgLnBPHS2kYbDDG2X5wQC71SBMxRQJYY
	 S6LGOivqsosZUe458kkmV9c5M71w0d73k5ldM/FRfMf483Q32W3Ngk74J4a5uwgR7q
	 YpZwvJ8qYocy8NMkJES3UTQLRQs/zXfIgMrXJHSgEuupq50cBV0NrrcwjHt1rAmndj
	 znR8bklA6nbYUjn3I1QiEYQJ9j1g6ENzULkx6bg7tsttxF/CeIpaG8l9wIUrn5UR9N
	 mN/uTzApqTQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF68EC55838
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580583370.7174.16549846676975450689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4621a412768c0ef2289de8eb2619e55c15c7a8e92fabd9a8d041573e5564ced6
Date: Tue, 04 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785805833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8382745E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759699794; cv=none; b=qhLaukxWw8nIKpVrTfFjwPSdBc4Mph5ppY+JKaHT+ehQgoOPSj+qGDR2PoLuxn/JNpurac3jQYgLq7AaAVkY34gFRSVoExJx0g8DVOfgUmwTJyqH60DmDbhlV6mSxilq+PcdawP/pXP9zzcNvML2XgmkVGxPqVZ70uHRq0lDHHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759699794; c=relaxed/simple;
	bh=zsoktIq3M40tD0WsIFs4xifuuC2jYT/xo3l3QyaBDx8=;
	h=To:Subject:From:Message-Id:Date; b=BYFLBpZ8gD9BsEmd5oUfsKbNlRfhvSmc0RHs62Y4OXDChZtH96qDC2jiqNPFM4gsOpq345F7+Xbg00QNBoiaKwlsIopJBsUI7ZqzFfqBxVci+CsbsAqhPsNBijOexk8LrFyzmr13KrMeruQRv34MYTnkf+HxPEPNszCkL1QIFqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vR6wEhp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vR6wEhp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D5C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759699793;
	bh=zsoktIq3M40tD0WsIFs4xifuuC2jYT/xo3l3QyaBDx8=;
	h=To:Subject:From:Date:From;
	b=vR6wEhp7hI4P79Jq2iMABlbIGWlbFDsb4a0qFgCTX0cdwb/ILVjMXmFJaaOHXribT
	 WZeQsKQt+3obuygCgaXZaXgBUiHJuMqkXTubs21QdWISvTWf87OmrhQHRSVldgwAex
	 FcPHGPxTu/+QqjNq59zBpaQeaPA1rq+ipc8Np/ypAZdp516xOfIjdUDERmjKV1LOvd
	 urjGSqTLeE996AZmhCHzk6lnUWXaJQxtTU/HcjIDaq8fkvDZpPBYmnCSYtuZn/o+BV
	 vfhPpQohwYRtvobDUrlV3sjyNeKljrc8L89QhOHzxX3ZktRezgm0Ipjuadzvn5x3n7
	 LgXnSGavJTutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D9CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969979358.24647.1960354794513763348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a875bc440914448bf4654cb292f5f5ad94a95ddf82e3748b03c428f8a740f0f
Date: Sun, 05 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759699793

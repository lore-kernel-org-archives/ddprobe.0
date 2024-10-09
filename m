Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45528183CC1
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728496554; cv=none; b=sgRK5f4m3nmh9v2Xu0yy1Nycu4IpNShEPhT99nbyH01EIRZhiJFKK/xRH75p0UZ0wXHze2A1BD7rpbG5TzcGtmXJZlctL8Bh+QmvSc3NPYpvEMRoHab7gaiVmNZ1S07vLUfaUDKi8Btz2JIQyk27vhXU9JAp4CFvjk+8HqUolFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728496554; c=relaxed/simple;
	bh=ye92zm6pLDM1BnskU2WbwnpyeLYhzIWiJTLFuBZQhKY=;
	h=To:Subject:From:Message-Id:Date; b=mAYChIQFl0PnvrtemZv602h0MLGf5PptN3YdgBmfri2Ru/0B3vNWCeflOog2OJghq6hZ/TpHhlU6GypoMjiv6pG+a7Q2Ynay6XbKQxipVYeethxwPcnk8lqC2+FxbogjIO/PEOkfM+y/mh+ELas8u9/c7wsdJChf7cdPvBTpd8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFhxA5SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFhxA5SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60DBC4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728496553;
	bh=ye92zm6pLDM1BnskU2WbwnpyeLYhzIWiJTLFuBZQhKY=;
	h=To:Subject:From:Date:From;
	b=rFhxA5SM/sZNNhRDC4E8X6npygCaSiww7JHYxydiI1DiTy0piJSKn5CKHCNMdJ7Dh
	 KBYc395boLIklgPBc6u4G9jBZ+8br2mfpFBEbvdTdkoLXBhIW2CjRrVJLSOtZf2fTo
	 rfOGdvwnsvDLVhAHOpL+kPyKaIykpKBPgoMTAhJhjinauJU/uUUS5VHJEBW6tKBXY8
	 0ZVK/AM3C1s2dVIBsNoLzqZXZGcBxhSWoPVVxT8N23rvv44onGhxW9jzHBX/ozO4JI
	 CtT+Z81FDfLH3lG6Iatoqt769Qvl1wC+JECVlGyyZYnc7u3tcVPk5RePt15Qsb8LBt
	 CUg0MtFuI4ofQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27E3CEE339
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849655365.8102.11554994115627775082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b212b17feaa3b8fc824680a7464cae8cfacf43d67a94668bd12451706cfb0a1f
Date: Wed, 09 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728496553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6358741687A
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790268034; cv=none; b=N4AlYSCHiBPmNE3tGS/9mFC7e7jpr2Py0/feZkEVhd4G33c50E5vW/D1rYXQQ79sK96yNK9CbVjd+gTJWZOlB7r/yvfp6f8iipAJi6lGZaxocP3igO7hjrmltYJ0AUdov9aST3DTB/9ODfGcIw+4Df5BbDe31UOyty6S7DFPXeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790268034; c=relaxed/simple;
	bh=fuRs+k9xGCLH0qOQqgASBuWtzNu4o7jPYfkJHNHOxD4=;
	h=To:Subject:From:Message-Id:Date; b=L2jvwbbpRgo6QxbqPOHKpVSWGblvdsyhxy0kmfW+7d9KlCOOFH2vTSFPULQRoS0gjShmzwEDytyzm4OMNawTum7f+sRZchM+Upguyhqe5d9T/mhCN9SuwQWQ6+EU0DRZHcC8Woz1RH85LmmkP2ijdQJuf1q/WUssxzt+PydJk60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BwR33ewu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BwR33ewu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEA2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790268033;
	bh=fuRs+k9xGCLH0qOQqgASBuWtzNu4o7jPYfkJHNHOxD4=;
	h=To:Subject:From:Date:From;
	b=BwR33ewu8K8ZluHwtNRAvT3cvU3qb7tRsBaTPMAK+8yJCYa6lYOhaQYiXi8/fZpZV
	 baa1SHC29OPYoMGh0Jbjr999MSQ7MvgxNSR7KQq83dpYDZZdMZnb718RXqnpH8DS8l
	 cP1sYNTqcngpJ82+HmEnoMSBfXeImNlWs+6DiVAI6JhvAoaiS2dYurZrxOzOXki/QC
	 ofHRY7jzYPO6t+4Cl4mWGys0Bpw6RV2JF7l1zE0x4NuV4wJdIMXRz0dvNhGne1Rscq
	 oXN6fpcoeNS82MzvIqRl4CvhLrKEq4OBEVAn5KGbSZEe2SIJIcpnwrZ+mqYHPV1yrS
	 hlsy+ORHiUjAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41D0C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179026803371.3036.13390726603945841279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d692ec9e99b3c92a5117a7beb8961ebdda2b996d7dbde02dddd7c3900b8633d0
Date: Thu, 24 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790268033

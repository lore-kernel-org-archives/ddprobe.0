Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2836E2D7DCF
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790926834; cv=none; b=G9F6Jx2y0k2ggFVNFZEUASzkGUrqtfm0bAhw2Gy0ygm7BwUqGhyHvgFt0Upg94OehN4Kn3KFCBpTdc1liop6d4Ta21kSmyUhVx06WvYG1ULTrRUQwGwyNV4sjDaq5F16Xp7UcXDPjx5O8TMBY+wLRooB3K2zeqov0qD7wDLED3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790926834; c=relaxed/simple;
	bh=8ekz/C5tIoDsbrCCDLFfVvr2VsRbR3KYjiPvkRShufk=;
	h=To:Subject:From:Message-Id:Date; b=u3duGaGK4HMxgK3jbv6eZ+nN60rxo7nj1Tq4WTop7giWoTxC3XOL0lN3P5Mb/oB91G3utebcNijWzEU3zV5yQQdHSfM+vfWNjgvcecn44PPAEjbT40kE3G8+E1P2s8HvYppvgvj/vYlGCoOVh7oVv/jTskTcTnNdmeGhD7LhrXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jouWREyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jouWREyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF85C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790926833;
	bh=8ekz/C5tIoDsbrCCDLFfVvr2VsRbR3KYjiPvkRShufk=;
	h=To:Subject:From:Date:From;
	b=jouWREywXHSXRgfh/71UCnLXLvkDxxsotZ9qXhVNjxPEDJPcE/KGUqqIVG5uSRDbw
	 /7Gb+P6Ka8JR0S3Yuzv6fJ+1muvGlvixtFKzbJZnCwobTye2A3yQNmugfqreSeLhLJ
	 He3ZNyG4QKSHk2cqZRMfGmD8sUDkBWwYH6hi/blq3ZipPY3CpssAFRTUBkMg5ZBbJf
	 KqpbtCj/Ht465xgBdUWRe0g/xPkIR5SB7JOHhWvVeWB8tVW82aFXMDHlh8JjRbPm8n
	 VZrH9aYRFS2BhVCVlFIWr7ns3lhxK9sBXjmPx1XfF4ukSKvA6iqlH3FaKJvBSMvB20
	 NiJobNnVESREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE0CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092683368.28120.711961588459786826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6292557b218facd6f6b950c406504ea1cd502878fe8d4ce3f3cdca3d223903fb
Date: Fri, 02 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790926833

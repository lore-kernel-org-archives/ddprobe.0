Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC9942AA4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732973154; cv=none; b=XOj10SsZVM+avNOc+6L23R2x1x3k/ZOC4DRa128Pq8jFoxnPvFC6QdNZTCe+n814B7K7UQ2lZfAm71Ekv5ZfeyBB55X3cXjM5kYl8XjGN+KimHoDEJkLOaTAtSVBuQKRDD4DEKk/xWuHt5gpWspe7H8PkYwt8gGKswAyh4UD6sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732973154; c=relaxed/simple;
	bh=7FwEa87ISPilHh+of249PYV1TCNvsz4K4lB0Oggd6OU=;
	h=To:Subject:From:Message-Id:Date; b=olFlbNIm7lR7LHFjnIafRDr4MVezaS51icldd3QuCVreBaVdGRZ2xqUipTeyCuAsDBlat5Aha9AuiSNPsREUICarHEt75zFypCD1XB1keAAjnrNUnRMBTc2pr3iXX/Cz+DKFo2ZI91xxQo0Gg7qPM1WnKgTmfptncx6IezDnTf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6f0ZV//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6f0ZV//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC965C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732973153;
	bh=7FwEa87ISPilHh+of249PYV1TCNvsz4K4lB0Oggd6OU=;
	h=To:Subject:From:Date:From;
	b=I6f0ZV//NW+Mr7JnBAWlktO6NA0s84eI47h3lxjwCYWIEBSN+MM8a0Ai64FuZRKEZ
	 iHrV2WCXFb/fpFqlZThUw6er/AbU7EAGcth3locvoqHYyPVZKO3d8oXRXtQRZ8N0FX
	 NHlsBcETc1/2MLzRrA3pxbQWvU6HRBrGUx8fHO4eTHVtzFtmM9KjbBmHkVSHWMhieD
	 1NOSHCIXPmFq7qCvEYD0eumEZfm5C2w3tTS7RzXGWq+oWZxCojQN2fsKjm9p9uT+gc
	 9B4lqa1Ng+rqCJBINfAZKmS/1MmGM5AdwJHWPBeRPOCJIoMo1Lq3R81NN0aI0q9l4Y
	 6RUjXJjf20EeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9495AD73605
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297315359.4087.17836610395675682480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97dcb8ee773c7516d49091c063edf73f2a04a8267d3bec5a417fcf9dcbc96859
Date: Sat, 30 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732973153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F11309EF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762781994; cv=none; b=tMP9UybuySuqDLQ37/yxFxh4n1nU3GFLqWor4VpzIAbQMNPBVWDfXnr7+xKM4eTpdg62dtdeQXnN4edMX+0NeJMeqjmkBsLEQhcskn0AzdP07s/eo1LKLdXnYIH40rB+mdTLYjQ6H90QL0LD6qbPpqvAoIio3+11XucgKcpwvsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762781994; c=relaxed/simple;
	bh=Ef472y3wFDsAfGwUGldfWgemoj57m4RTery/fA8fk2I=;
	h=To:Subject:From:Message-Id:Date; b=HPpoLr2MLbmrZqRz9v3hOBNXUvigwZsvtRzbNzbgnynICkRlj/rj3Lcd498oRVz0qbnNPLo4k82qu+JpcFkEUSgn5NWttYvIV1S84Ip8aqSR6Q4jqGNeJMS5TGBjWQhsD3IU5eevkRwXC9Ow+kNwfp8Vif6aqZU23Wkdb6XhaBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InCIUpW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InCIUpW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD41C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762781993;
	bh=Ef472y3wFDsAfGwUGldfWgemoj57m4RTery/fA8fk2I=;
	h=To:Subject:From:Date:From;
	b=InCIUpW4DF5pjLtDxFKSmJZtiAkRTMTZBvcJ/lMPwuVE8eSqwqGnZh4SzrIpYCxhi
	 1zAJ7JSfB295gSsGyhbsL8Ydh/1Y/fgZKHoIXVSFBGnY+O9tv7FzAS79rq3i6QVlbO
	 /MKI11AAPZRTsTCVrXt05HSxa1oyI2UdAdj6fY9Zgz1k/ScSuNehYcX96Yy4V+qNYH
	 af+jbB8gbaSv2lEE3S8aj4ix13GCwx2kgA4Aju7dLIFogYMMxfGBmA65SVljsntQ8A
	 PmNQAP4Ot6s9KPo5h8Wqf17sZnVRHn5pbeuK9/EV/ioTpLyhCaXkXQt72OaxR/Ai5a
	 DRE+W9eQEt/Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1577CD13D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278199361.6187.16793586773509991683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6650a6579c13b93891d8d81e2d41171cd3aa16f635e165309f65495f0b79e829
Date: Mon, 10 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762781993

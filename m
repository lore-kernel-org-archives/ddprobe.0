Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23201268C55
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752253794; cv=none; b=fVLeVyEwG/d4xgef3RGe96aJAi86+jyl4E+l/cRsGMFCYaCgSpat9iY9bCwo201vz4aOFrz0MryUMPmRLlM+ELpGmq7uqKBvkTqsaaic0xjSK7EOdWDaRP3+aHGRDA5+JpjO/0GTsLL1zHHt6mzgAOYmol3UIEckWBt1DND6ru4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752253794; c=relaxed/simple;
	bh=KteHnYKJBhEUlv2wOcizKq5mJ8RAH1GJfS5asBplIUs=;
	h=To:Subject:From:Message-Id:Date; b=WFdmAiKSqUQurdf3P6MvVFC7y6noWOSoXZmpBuVxs8EyALGEzMXXfBBpirz9iXqcdsYAvTQHJ8e4KQmg118OSy5am8lZN7Ix3GSJzZrSJtuS7NMEbJzw1NZxWYOO+cfwV9/g7RBPRIFD7ym6Seo2at5cOPkb7BvIEgMI0HQonfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbq3mE3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbq3mE3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA5C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752253793;
	bh=KteHnYKJBhEUlv2wOcizKq5mJ8RAH1GJfS5asBplIUs=;
	h=To:Subject:From:Date:From;
	b=dbq3mE3ttpByaC8uO3JmMjoDKtKqNVH793LpDYERhjPhX4BnatkTLogyCv0s4KZ0m
	 oU6PEgTQXUtJHJhi8TKN5g3elFEDfzhklcGYMICm2JVZGXgvjSV3CpkTygEFuFld5U
	 Q43yRw6OMicU9LT2+fA/HV5ec3LBvzvD1MlwC2QNtaJk+UU54FLNmCdJ59IfnQRslu
	 T39hpaU8qyTUHDgyJddla6mAM3oSdy72Ce3orj/GfYcBceK6niZuhs8Q0L/mkhMTxA
	 PCb21lh4ri5dNTfWt6/U3CFHNWUvhyLS7e28DmeLJXG6tUO1WqXBpzl3aPQX96+MrY
	 XFtlIPoskDibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A9C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225379358.14964.2013254137352001855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc6515b4aa86f8fcaf3353e0d392c1b5050ade0c437c459c0e2f80c53daffd8
Date: Fri, 11 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752253793

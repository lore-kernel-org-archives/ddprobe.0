Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32802279DC9
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757146794; cv=none; b=M61B/sv3/41c0xmsSs0itxUWk5ITFNZf7xJ8IK8FkLr4tNZeAOIXSUXS95pvXcgqiiUYGW6G5y72XiHcW77A16gdG/O+YKFhUwp4OskeuFfxapxEaOFjVwdtNbKusli3QFd6vAD2cc3FSeVe6i8ltaHewCwTcTngmCZlwELdNTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757146794; c=relaxed/simple;
	bh=QBNGJgTpUTv5nd8bNzHq6zZ0Zd2u8qvPeSo/uk5Qq6c=;
	h=To:Subject:From:Message-Id:Date; b=NI3+Web70JAl1vhfPaWnxa/buYhrDUTbVMn1rt3yjOE4qx5E9K3f8WdZ4iowCNgEdXAqWMSWH2GYGn3Wq8IUGYxRlSbqWDGZpcbg0aK2xr0y/gu2gbAycHUU7Fq56uzcQZdKAEkgNR7hTBssrK4NdBkpXINO8xUU8PgoWC5n49E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ku5PWkAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ku5PWkAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E23C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757146793;
	bh=QBNGJgTpUTv5nd8bNzHq6zZ0Zd2u8qvPeSo/uk5Qq6c=;
	h=To:Subject:From:Date:From;
	b=ku5PWkAR/5c2UXcHnz0w7NXI7rMiCimJNINbhfnm2KaLrVz8WR6UlqtE1U2KfGCVM
	 B+VeUvp2BUIu55PLdGDGnx+VlMPOA+ICYRNVzK+0pZ1Bw4txmx3CuxDLPSml07iXz4
	 1h2l65dMFRMtB3TK1spK9EJ/f6kF4Bm+iY2i81mgbKMMz0bzWHx8KmIRrkiErxTy6Q
	 lYij1sKYk2mcTduvVey3y97rLCrW/lSHDt3C9s9wyHmrWwaXoI9n/dy02+l6E6Bj0m
	 /3rU+yZhGvLFWPFxcbPe4DOg0B1qMrB9t95y7zTdZF7D72Ln0jmFdkLuggZaZNOP5s
	 pP1KJTo+Y8KKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA29CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714679358.27928.7739140967747055318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee2d88714406f3cb1792eeda15eb28e987c1c5eca9d0f5f9878bcad52972ff4
Date: Sat, 06 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757146793

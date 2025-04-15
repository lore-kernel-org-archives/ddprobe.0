Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0A6198E9B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744727394; cv=none; b=gHDj3LGxjsKdPO+y0JpwbysSuI0u/3xvC5xjqAa/RcFQnIaLtaSNEqAwQ+Gy3Q/Zv60M1Hn18VTX7UbMC5ZkNVUo8aNxsCDoEZyJ92XNsQ2ENq5fqK096Ht+1qsQMM3r7Gecu/JT0iKXuZq+gt7qOqR3FrQ94oq72SICX8LYLTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744727394; c=relaxed/simple;
	bh=7IO3AYI//CIUCSOVDxWTe0qY+fZG+DRdoIph6i7kIfE=;
	h=To:Subject:From:Message-Id:Date; b=u/WkPDqREB28o2tCIQcpYwZ4Yv1E8I7B1N8+vbfo3L0Dt3IW6ZD3I/dUvVUfKT2z5gYu6Aj6OQJsNaa+3AcZVDQtAegMFYmeLvOfmvcFrvk9uOGxQ96ZOTuaXvmiH2BH3iOgZVluj6BLiVLdpnp1ie5F2U0tpDUuOQP+R1ZuHPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjC65mXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjC65mXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA91C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744727393;
	bh=7IO3AYI//CIUCSOVDxWTe0qY+fZG+DRdoIph6i7kIfE=;
	h=To:Subject:From:Date:From;
	b=MjC65mXIjQxZRk2jrCaLQe6WDUZr8T2wBGIkgwbIqyEsMjR7jw8evlvzTMzrSVo4v
	 CszBixFd8nbS0QvPyis42PhCbkGKwVdVeIjQ0tbvepWkdy7K/FYf3P8SdMXyckEebc
	 JVW0YwUfDTzwB6Ho5j/qvoq8TCqdDpZnidU8DsZhr2Fit558LEAsNkLYU9dUtEiX95
	 rrX4Nmxeak5P65eaSn2nr4JaVgXOYdXk0J9tN3kinEsDP8YALzgsgXVdxEsNLh2TsI
	 wrYLpWz/mPebVksRqptzY9XxGhDPZDxztK8Mfy+kGZGNL9TNy46aB54sIhAHtH0Bq5
	 s8XQylsKb5YJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9509FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472739358.19867.4054457619488873720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d82de3be4e91fe012a4069199b669ed8ca1b5482c73725b45e23fb9bfe88a04
Date: Tue, 15 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744727393

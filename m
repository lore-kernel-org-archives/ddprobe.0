Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370CE4A0A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749181194; cv=none; b=ScJ4s1PdRTST9VJYQNoY44GdxYad/1K6GzezreWA3XbsGCFAZKewkjZ69x0Z/YBtalP0hXKCVrIWWkKCnG/9y6eJ/tGb481lVZxUlmJXY8AElcVs82UkwaE2gZm4udW8DiRndnvzzUOk3e1fsQpoG/IAlKOMi5h3Tiqg7Z/6M3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749181194; c=relaxed/simple;
	bh=Vu1fCcShxO4N3QBTVIk9d6/7vI2jlwIbxcPUmMdbnzg=;
	h=To:Subject:From:Message-Id:Date; b=MpGb1HdbFjgI1kQzFR7M22NkJvizB/sU3arkFocxS3L5OiLX7z7hz9NaUeyqWWdZyIFF365/RCNvr1gI8/7g7dMr9u2drV2R6efTY2QcWkGmMXeJUBLQ3vrde0aqDxWBK6l5Tr0nbAEx3zvZwWbpExgbPCR8rljeZA+NzZpuaDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjnBBpKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjnBBpKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D28C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749181193;
	bh=Vu1fCcShxO4N3QBTVIk9d6/7vI2jlwIbxcPUmMdbnzg=;
	h=To:Subject:From:Date:From;
	b=OjnBBpKwhpMr88eDiCdiTiwOHDbL0fyCim3JwqnHdrdP+x3/idxozWRgNTe6Q4Hfh
	 L3Fms+TXsxBIF2Le+38HLk25/gE/2/vIl9r2NVKHGpwtlsrjH2ptNwOQWkblnQXdj4
	 Rjx795F6JuHR7d9sIXOloiOUCmdXnnQ81zgGPtEQMI5yNk4Qs0tL6m3SJqoGflCBHj
	 mnVLltF/7IHd7YlSYQVn9rtm4socB5XiR1ca7VjEBIvKV30DHxbuSvDGwv4MzKnWGX
	 U/jolhFaXRuSxCPVRVlbyRP1g5RSpJ1UXcGIluRKYOje27kWOnwbplMvbtz6+wvHCi
	 ey9+VWE9xTzkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E87C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918119357.512.2367376491663935820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb2cdeb9d0e29ec7dcf960421e39e7a0be789321c5c743d0b20181328629632
Date: Fri, 06 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749181193

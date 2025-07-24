Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A2B2CA8
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753318194; cv=none; b=Hsf4Ybc1ofCy+3YpLjxFwmpVA6ipztK2P6BfL5/3MgOyH+DIEzO78fqhyvvIA7OhYmfuGC3tDH3QTJ81Ok1o22m7KdbJcZuKfmWn29f/Lz8N3WcYW4wUdf0jMq6HOy8+Ct7ZUD8awyoAMtTC4qCoE16pQQSSPJbsmD4ZRgdQaC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753318194; c=relaxed/simple;
	bh=rsUSPpdbgkAEkQfjTYpwZznoJyYSfCCZ1x9axlTqsnc=;
	h=To:Subject:From:Message-Id:Date; b=JSpMBmVndk4qVVHXIgCIrtPksFsElcw/h03IABDPt4NNPuZCVwBjNZ8tcpsTbCAf6QPH8SiC6jXSjoI+l2DIIEfYr568JrbF1vRPuoXoKJVIoG/+cJPlNAzUALP2wwgEbZ3L48Vgm36NmuWm4vNWiLgAnByT/hTjE7qNJtMcMnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2Ufn4Uq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2Ufn4Uq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0143C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753318193;
	bh=rsUSPpdbgkAEkQfjTYpwZznoJyYSfCCZ1x9axlTqsnc=;
	h=To:Subject:From:Date:From;
	b=N2Ufn4UqZNRT7chqskKV3tMKUap61UHitwKS3Xbfb8FO8oGkG9lXsU+o2EM9hafD+
	 G9spfQBYEqgbPPnli5k9RYoBrLz2DS2+O7VOgndkd76GmBxONnV2pOWI5RvoathvvM
	 HbwrBZ/eFTvue0QoRirmg2esCj5UJbLbYin5DKlZ6NmPiEW39cbGufoQsKUHw8bHdT
	 jMDMKCCvhNxHYDiHztNU3mBqoOHmP3BtJDA074OCi8A5vc0+c4sTelRDSmSGapq1Zc
	 UNGDLWZj+q4f4dggeeq893tv04RrGIKB7W/lpEm6PqXunajJt69AR6GuOIOqCUhCh3
	 /xSVqb2X6M/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92505C83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331819357.18924.8961924387039295490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b675ede80d865a806414c4b223c01c68415aa3f159951d863163d3c1503701
Date: Thu, 24 Jul 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753318193

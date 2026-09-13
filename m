Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443E4341ABB
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789314634; cv=none; b=D5CvrN/uS6x9ft0xeQtp6uYoToWvwIhPkB+erc65MnBvtfMvVfa62IbUeTtHUnaJO2tNMNAlF3dOEUSjPhByQoBxEE9o2VJsIRi41OS89vgvMM9M+f6wgNliquaG8tPRDmkEzHOadxoZKsyr04nzKE/GE9c42O3/gmCCkA81bkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789314634; c=relaxed/simple;
	bh=pbynyJb7tQ/nCzhLeK6rHznYz5hOFf2zT1L3xnc1INE=;
	h=To:Subject:From:Message-Id:Date; b=BVlacfIg8Sj2aygWwa0PTXY+wcogdiZTHWyHrC9sO3e4yD2N56DPdfX42zcz8pjFX6GzJmkRccOAatK6i4uAWi/tZ87XvX0bUs5oBGk4MGj0KWBVEV/HXSGIsujVF8maZlmuVC18QYXc1xeikmcL0PCefYbexIbiw24hNBa0APg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpi3XsK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpi3XsK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD870C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789314633;
	bh=pbynyJb7tQ/nCzhLeK6rHznYz5hOFf2zT1L3xnc1INE=;
	h=To:Subject:From:Date:From;
	b=gpi3XsK8oZ4EKdnBBQRM7Cxbu9rgg084y89dZJ3rT7Nypbh4YN5IEqqU7GTfSPGB4
	 V3Y5pABMqbfj5VjH8sg0+A+peZMl6wd/goW4J6vJk5uUsfmArcsm2pe5LMmQ8WUcvx
	 mhBTtdUX+YJrC4/+sNd/2OLiJ2lDcy+rXI5I39TC4hJiHp6JudRg2XHjH5XRnLMrjS
	 CWyLdMA6VgEiyZoOU7bDeFxyGvec72gxPSsBnkZ0tvuwCMX5c5KF+Y+yJXJOZ8AMJf
	 1lNmxEhqs/WK6NsSitGPFI3HPK/4n3+tDRAcq51CMCaRW+Hacgop5GUNpuM2d4LDI1
	 Zr0+hpoRgLvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F4C88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178931463368.10730.2926705967202093115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad8f6a493adf752fbf8ede5ad51e8b42d6df60657d9f947a6dbeedceca0f641
Date: Sun, 13 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789314633

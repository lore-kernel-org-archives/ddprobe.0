Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCBB13DDAE
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503434; cv=none; b=evAo30s2AanCuM5VLPgjlTj2xWEOQOzLkJg95Eot1ZrlrWnVYZnwh2xKil3CCmDU0ArU5glMVXavPLS1S3x3kX4TJf5obsI9JCUT4ZNfzuDflGE5asJ80C4h1eWInACyDR9Jc7zUfKvVHSn7x8NMO0xJleASVZWFiPPBlBODnGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503434; c=relaxed/simple;
	bh=5T3BVNEVdeiKDpiRcmh2jiTstkix3S2rg0Ybkpo6LqM=;
	h=To:Subject:From:Message-Id:Date; b=hYYYaNVo4MuAWnZHoU4CeXp35+HMLoOGFj/hxzIqLHHl5GOzzUYIvWSRWbH/pNL6xL2jVSanAEUFInmj54t+JN4J8qfuKHQUzX54FTnhJubhQYD0gjDznPJExPAQJ7kJ8qv9tCh7vrq0/vFqMjYeMLfklMXFImCcdj2L/b0HGkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNj455fw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNj455fw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A305CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766503433;
	bh=5T3BVNEVdeiKDpiRcmh2jiTstkix3S2rg0Ybkpo6LqM=;
	h=To:Subject:From:Date:From;
	b=SNj455fwpTBZ9rOF9iIPSIT18xDsJXSWgk+v4rtKJJ1VzOV1Zbn6oScGA25GGtpA6
	 0/agBJAxGLG9MQh97qrR0RN6UyjH1L2Bkkp7DEzyDMzdYE1NlphFpOKodPxepEfq9e
	 yItr1e8PPNHh9ZHiJnS51/sloTmd6erLXEiwagm8bOqltLgEiA0Q/BrJAl6mojduBJ
	 diOMG3HKKQf9/WiAJCFtAjwWbQcuExyV38gSNErJogUKee660kWSwdfP0tkGanOTj+
	 SMHQpC9ftY4Dz+q+VSVVnidGDYJDxxx/yve04FxRwFblNO24QlHfIDJq3K30fpqFd1
	 QRiBKTo8mmgJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92350E6F093
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176650343357.10700.17664268579067776938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04aa62e789897a15cad82f0d184d54b6e24ac621bffce2a5c7356e439ce55713
Date: Tue, 23 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766503433

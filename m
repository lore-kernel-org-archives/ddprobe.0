Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1855B1C245C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752217194; cv=none; b=hW4eKUlsndHr7IodjPOGJ2EzyNrzdKFFJTWzjp/63/aAhPq10NIy1vW6Jts7ZF2M8Mgv8HZ7CI+23ojBk4YpNG/CvErCl+GbOmxxSxGmxiVplsFvfa6GMknSjiO4djxORozRtrVMmSEsrnsskxG7Ikw9h9QtmO4H2cbiR1BZG5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752217194; c=relaxed/simple;
	bh=PyOZli4yRv6bTVFkeqSf4NUtMy5H4rOiN88YWyhOMcU=;
	h=To:Subject:From:Message-Id:Date; b=hR4PpiMkV6jskseedTUkfVRH23eOPsRdv9NPTvAhNagx/N54Jsd/8s5w+1sDjGNt9ushuxyHM/jQUeH9x0LN2sk6xHqK8P8OwG4gq2m3VvrjbPjFYeeFDueEkECgEQcpTDhx5aYfKEb6EU0NoJ3kTUrTSlxAO8MQo8/FdxVD/EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cqzze0Il; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cqzze0Il"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29EBC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752217193;
	bh=PyOZli4yRv6bTVFkeqSf4NUtMy5H4rOiN88YWyhOMcU=;
	h=To:Subject:From:Date:From;
	b=Cqzze0IlI+Aik+4d5vKkmtWvRVXV0wxvRaxr6fnpJSleyT+2XzPVNJmlzxskLEESt
	 Qp7okS4iVRuDuVQSn4iBcoNF9vtnj3eGBpifZ2+ZrJZxqojQmWJ6Xu5p/TphRD0HwH
	 JWdCad2iaHl8MnR4m0WvrYnVbm96uqyoBCFhR8qmIVLVhSRl2Dkqa4M0HpauZB4xXJ
	 1Th6OOfCLohoq5Nx8TOPdCEVpmGbtyu4ce4e+u1Ql5eXGW+L3bw5sYniWMH/n2jW+5
	 GFd/KpnoIxOesplWvQnJkAd6cFHWI/ktHgnL4dyXa+4iMfcOqDWDwZftPsZZvOgC5Q
	 aylSGU2GWy5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C63C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221719357.2886.10212997681712960393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915ad9974cd8e0d07d4ffe0be951084f73ec2e34320b401617aa1746acf64d07
Date: Fri, 11 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752217193

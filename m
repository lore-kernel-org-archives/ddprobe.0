Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4237D1A0BED
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741986534; cv=none; b=WO6RRG+supD6fB0MZejFByt0KejSZsOn5nF+sPff78n6YvL4uilGVV2VUziS10VGUh1hE/IBO4dw2hG/nYILsHLBExEFyCoxzwju3kUtzxXf9KiiKaRuvYU5uU/dhYvBeQeHmSfr0X0XgYmBjuYMtuxgLsMiVZgbS2SmPf/5mRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741986534; c=relaxed/simple;
	bh=jwx2xw12sb/2k3I8SNWU6Q8xzxPtg7WcuSiMaSFyk4Y=;
	h=To:Subject:From:Message-Id:Date; b=WFW3OezjnB+2btb7xKO3tma7Yq16pqU+ddbc68bkM/cBP98o2FK1CPPPAK8VC6C2tL0oWS1Ejg/owFULBSjjXG0G1n99JmwECkwmojeuyCoxSXWM5nnBEQ2oe3qnSWLpA6xtWlKBpBW9+5vfi6I/buw5WRKpnk6GmLmBr4lcLZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBZezES/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBZezES/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2C2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741986533;
	bh=jwx2xw12sb/2k3I8SNWU6Q8xzxPtg7WcuSiMaSFyk4Y=;
	h=To:Subject:From:Date:From;
	b=lBZezES/cuOUrs/qk64if7I82aSCHhoJrdH14f5VntQ2Bl0PzuVUYCXwQX042u9oj
	 /Rt/KsFss06ycz3xGCzT23FAu9Kvy4Hu3I7ImwHgfvgzilB4QYHrwbYTCdjaVp2c85
	 ULR/tDrOPqzA1JHLU3jgpr4kMOrB4CfYfXA/RV09w+wc1z0/600lEQyrxvWK5tyciu
	 7OJWGyA2dZpbeWUAdpv5m954SD/DgaQFYSyjApUZnjLvIwkGb3e5gNybeC6DIizhK2
	 2XN5R1C5VPeZ/8SGkmmINFiOY5KpW7lIK97pOPwIblt+wLgYrxXAoTO2yYN6M5WaOw
	 U03UIEu7YV5mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98644C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 21:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174198653361.23812.7419566801590319967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83557e8c714aff6f5c64d4fe18b88a2a0b69e1f6673e666ffc8bce82ac0b1346
Date: Fri, 14 Mar 2025 21:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741986533

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E71E1CA84
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752968394; cv=none; b=s1n40CIfNBltgB1az8ao6Is9sL0+dwcselhlXvsrg8N+pOXa5DxEwvlQIpQhnVIvtaYvOT6aGFydXCpRP/KuPdheCACdp8wdolhwX+comXRV3zxoypxaQFISsCQ84V5OAe/Oy1F6rnFGWWllgNAB6CKWJdFnFzAeLlfesgRWyas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752968394; c=relaxed/simple;
	bh=wjzhm4/oMcAoXjVYnyT6nVzKKa8ZPNkybI5ltXlHBrk=;
	h=To:Subject:From:Message-Id:Date; b=JBgbJ+Ty5v9+GJvtbiv6R+niMAiXblWFQhUHIv9EKbL3r8SXzghZt70jclEy2hK9PnhttFLA0cArNVzAgWCBCD9DNnT/LnvYGuLrArNPQk9eYqC6ha8kiCCQylJakBLj0tNzgW5vzk+tWZJCpkQcNu4SI7s/K4rYV5B3VfGW25w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrUWYNhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrUWYNhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0395C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752968393;
	bh=wjzhm4/oMcAoXjVYnyT6nVzKKa8ZPNkybI5ltXlHBrk=;
	h=To:Subject:From:Date:From;
	b=GrUWYNhfG6snfCTUT1KSvtF4YArb0BfDZAVNx975qQDYCUcwRHqiW0ZRNhixtP7++
	 oZQJ55GlEJbdzZ28bx/wWecc1LXbiXcLKBkmj5zq7PPI2Sx3juGYqc8+SfZOn9wJaI
	 XLYy+ETZesNz3CU/Lx2p4rGQ7gMvWJRk7YgBBAuzB9uC6OBiniSy+tvMGjbVDZyV4f
	 iCYkmxaCGE5hVV8PU6c8XLSh2gTGG3P8vqfoY1Ahsfwlmz8N9kNVGN7DWMr+7BQv4Q
	 ZXx4+f85vvITn2J8rPZXBxxJFBm8vWTyGsBeMgcMhQcKBnRtmNbI5GtU7aU6UFooMy
	 jdaglN09OYOrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913C2C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296839357.11509.5449279469433150836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1ecdb356ce4fd7f990a69d3d665d4a211c7ad50622900abca22798d3293a40
Date: Sat, 19 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752968393

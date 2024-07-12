Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FCA1E49F
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720790303; cv=none; b=tOkvFSEVWMsfsc6WcxCoWF4vVkYuqmbYDx6AQV9FIGbWIn3EOlC42vsOzwbHkR3hMyX2z1FiPxX1Ea1sbXB7iL0yQq6Iz6cug0Mf/V/Xgvoky04+CNOhoT/9i4e/PwGMUAFp/zEF3KnWu/e+NjbUNxfpY3Q/77/AeG7IyhVc20Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720790303; c=relaxed/simple;
	bh=OtVE3T7he7HpTJIzYu7nOyEo613i11018ZFKr2hcsBI=;
	h=To:Subject:From:Message-Id:Date; b=g2fXHqFAqlJ6xYGCJMkdzRdP6eq7++ycqwnXcNVLkfcllQCQAqdKyxBHfaKQk3Awgy13gfrCN6SW/1BSBt+rG7WwHisYNbewvZwRlBAz2kxpNLkPmEnax1WhA9xZ+V4V9UeAleO+vLjJQy0Kb3nJFGGawZEOEGaIE8sDMaf4nC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSZ/6qbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSZ/6qbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AB4C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720790302;
	bh=OtVE3T7he7HpTJIzYu7nOyEo613i11018ZFKr2hcsBI=;
	h=To:Subject:From:Date:From;
	b=DSZ/6qbY4J0q8ey2E4rHhuZVzTkW5pC5L0nlLovIow/gwbiZLomg5Wm1wGrLPGwDT
	 rTNCU99lfHr9mCx2f0keMo/+y2r7inuxhAOFS0mrKnMV4bH0H1q9rDNgfevMmaoLb6
	 M4IlUhfd/aK3zkv4+NlTGeIUK3Nh1YrIapxU3ilpd74CBNuJUjYR5UJi18wmikp9P1
	 Wz/S41SE7KdORxwNgaOD5xhELrkm7PFzDUQRHcSCJ4JDzzQA1cNxpntfiMvOM/5u3x
	 pfvdxOIBlCCZ2BjEoFxbUHjOxNjRBMc3yn+9Dt73iPt9P+Dfiup1Pq8xb/XtzxuGje
	 CsuueHnA6ITGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8626C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 13:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172079030280.13081.6002550997304432138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24b6c6d34e2a1a5d2cf5a97477bf8fcc45c6982a44515570d8b898c25e05470
Date: Fri, 12 Jul 2024 13:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720790302

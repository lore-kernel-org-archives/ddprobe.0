Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CF4480DC1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781714794; cv=none; b=j2G8X7HDAOAhztyPkWIjXtekENlOhATvy6Y6WceScHlEiiCtbKPkIE+awmn0NaiHAWmJXVNrcDWYZnqZpDWZvrkBvBJX1cAIFU+fokySeeHwzAaH0ne2G2bkBhxh0b3yDFP+ETyL8jWs/CnxS8AH36A2Xv/+QpDpcSkm/RqkgmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781714794; c=relaxed/simple;
	bh=APoqq2gDIQmUxZ/bgKGR9CSDnl8s683FQZdUMSG7hkE=;
	h=To:Subject:From:Message-Id:Date; b=Cq3LW16JQ8jvmJE+8xE3E++CIZqS7GQ0GnTU7giWKHgmt+Fdqadmhg75txwbVzpdTQca0zxenqAnUHe0J5wXY+CzNoZrEfEdKSsEKdeKZ2Ct1XbG4YVNzj12OLZT8bBZyEyLOZQzeN1pOQSJttnUzh50q4mT6GmesYs+6RYLe5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B65TROIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B65TROIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5F7C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781714793;
	bh=APoqq2gDIQmUxZ/bgKGR9CSDnl8s683FQZdUMSG7hkE=;
	h=To:Subject:From:Date:From;
	b=B65TROIodU64WQBca5iXBCycsNTB6YuhKPf9nCEXJcnwSag0kx/n4gpzOUluXG861
	 AJU+enkCrVXn7Z587WL2E06ZbhqKuB0uOdSwSE6gpkU1iodCJNMZEEhc7GXjLAc3V1
	 s9P3dXs3qIHQvjGaRD5HWlaiQc0uVydbfBnN+y7ak4JoJEhKunafsmjIpDJl8WRhcL
	 Q6cNW8A9fljmIVZBfKYmDebolfLOkSv2Au3zinrwx7MnY+HO+DaSIYmp/KDsy+Yo9U
	 bQUmY1c69FiaW/IFn19zaxpcLZIHY7VQ5CtElOcje7NbSs/01AdH8Ib+A000fV4UHF
	 7zoyQyCwN2v7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD180CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171479369.13234.12186830304878924333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78c580b1b380979c12dec6b3a5c640c5e8fd04de993da276284595b2ab9a3b3
Date: Wed, 17 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781714793

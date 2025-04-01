Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA1F203714
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743515994; cv=none; b=m7Z4vuW9iPuy3xecCwcMuXJKtdLtBoyKrAny2h25ABPlVsZlzeQVjDHGbIr96z4+Rs+MNm/n64Y9hXoXQTYmbklHmS4x6i1QU0EWzRdLTrFtbVgGpLmwbI29fIrXv+GiyJUo4LklahAFLfvsrG5Okne9+SAMTYGFeAx8hPG7N4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743515994; c=relaxed/simple;
	bh=CQccZeN+1Mp8AWpR6tpvXQLtv38rPAjlVvcJCyYZs3Q=;
	h=To:Subject:From:Message-Id:Date; b=l3CNXU4gd3SqSf/hF/2hWQ874A5zkggEO9x6pwyEqHs12hNqrdvZY2ZoULqRniazJWxRzUHieaoHYT61NrJRAJ2SIvC+4uUhe+sTDgo6B5C1A99mq/YlanL6BVGfL5ua6EwjkVO6cu+CrlUbv13fdD68Bo6TEn9QVOPtJpGPzh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/4+kgyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/4+kgyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD331C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743515993;
	bh=CQccZeN+1Mp8AWpR6tpvXQLtv38rPAjlVvcJCyYZs3Q=;
	h=To:Subject:From:Date:From;
	b=W/4+kgyY7BsbqyfNfjaBd70/5JOES0b+8vy07Krl6GMSP6b15rZjibbAEhdy2lo8k
	 e943v/yxDYR3Gw9RUNGbplu5W47QqiaRfJA8ZujIPioIWWnUtujBayliDagpLnLe5k
	 nVy+NfjzL9QluuMavyegIzy2IUiFuFNuCTJLR8FhdPkhtrocChxOFli1u+KDLh+VVc
	 SqtuoQNxQQQu9xcmkeIC1U8tuyTPFX+irjfB2mj8AJI5Otz2XgACM8eZoHtHUwM1Ct
	 o7XcT3bjE2203ZUcHApcviwPGHgsGKhs49AAwV7CXpS/X91EL2g4NQTjBy9q9hUqCG
	 ZVfVVbkpRNzJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9629AC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174351599360.18047.12990836714828416791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f3cf84b09da1910028bd4eea74d9d34a2c6554786f511cc4477eca27d85320
Date: Tue, 01 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743515993

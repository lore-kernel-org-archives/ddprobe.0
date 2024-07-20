Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D679148850
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721503554; cv=none; b=r4PjD5goWfzuBD3trWHH63Yfh9wsGN54QRBd2tWLmrb1XP3+oVoJO6uhaf7HioU0fvbZIX82b0f1EQ4x3ZhM/lfTeZJISY+Lk/tFAMojmrjSe+oEdb0cuupwv9JtxIejklrflKEd99GrxHisKjZ4rGVwv/27jEzTWQyg0055OyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721503554; c=relaxed/simple;
	bh=ckF/tQph7CUhrY5bYNVB1yIjROCeiKDG7VsDR+/M/5k=;
	h=To:Subject:From:Message-Id:Date; b=Wg37X6r8MEkPryR7FnAaFwWc7BDSVe5+CfCrae0esA6KXj58G68J1jil5Uu/vRccEwrZQlRDQiD/opMnz42naRbyaxk/YxwtR3LeLIF5d0Vf04KooOGxAp1p5Pr3VTEH5sR7gGT3UlAghBr4xVonA4sDkwqP1mcS82JcAXzTWJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyfrpxzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyfrpxzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7C8C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721503553;
	bh=ckF/tQph7CUhrY5bYNVB1yIjROCeiKDG7VsDR+/M/5k=;
	h=To:Subject:From:Date:From;
	b=nyfrpxzU+ualqjFHYHJQdgCJdumpRo8qeWB+cF4eRpv5vUCCVrk2pqLyCYjRVinDP
	 zihtaLiXIp/QhVtE1XZVeniSV6B2ZdH5KBn/FvCq9CWkebgpLy2O/d2sG9xm20o77m
	 HHlu+8NEw869VALmEMdGBr+8dt9uamED5GUmL0f8ZQ1gF0g4KCHfq1mIarVJfw14cK
	 2OQbaqFX9ajGfkz5UjlYz5zwjIn9TYT0B2zOXrmbdCT1jfBjn6yaMC4sUZe1vwflYN
	 14DyyQxZ9Qlj6SigwCkmg/2UNob1+C8i87z/czE+ccdFirqpxwz/sVMx8dnzWGxdTe
	 glPFd85nywCew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9872FC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150355359.29236.5374292968513033464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72aeabf965cade2911b20634f8989586cfd74c9d60cd295a4f8e7ad25e5f3dcd
Date: Sat, 20 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721503553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ABE2114
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748144994; cv=none; b=VZI9Fw4C4br8Dl1r7uTlKgrke8NuH4pXQ+igb1qlPMBB057lX302sONK1kHZ/SoIE+dLl9wCk/u9L3d23yGhiK4dMBtrREnTToIq0ku2LgjJnmnk46/FDhVhmyqXeCJ/oVhpuId1ptX3ZhtJJlSvsnCFSWGHsRspgGYiyI4nsRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748144994; c=relaxed/simple;
	bh=a1StDQ2V0DNv2a6zp55pTI0ivaUSTCsALc055taDkNM=;
	h=To:Subject:From:Message-Id:Date; b=g0ty7pbIo9/u6S3+wuqaLPHNDAInPBbHEi0qnZxk49C7XdHIjGbPicTXAFjDgHGsLU2tVEk+QB2y9YmVLw8RbM6/GuBLluRJE8V0qz9iVmMqLAMPUdXpG1kzkEBw6K5gs8VYvwap9+rRYFTCrDpdwt+bQZY+zaalYTJNPYvPwjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVtfPAEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVtfPAEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A922FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748144993;
	bh=a1StDQ2V0DNv2a6zp55pTI0ivaUSTCsALc055taDkNM=;
	h=To:Subject:From:Date:From;
	b=GVtfPAELoyA9hUntUh1T3dsOTBbrEJoHCC0I+m97lSQ9G1+ieZXvfmFoE6z5/IYD7
	 O1TItEP6xRi+r0kMs+JJM7xh4fWY0Jjn37R0cbHCKzL/DTVVs8lST5NpNjs8LizDz6
	 Khd1Xbuy51gVPkS94wHVRIICVaicoC3EkBMd6xJBdqpagI4r7lcgZbdYpS1KeyO3yB
	 IZefvsM0CHWDWptZ3liz6ryuoTTAKE6xhZsjfpYWgZO9vnbOtjAVM61kUZ+c79E+9p
	 PDGQKSKG0TQPnrp3cMuVXHVotdDSI0zuQEhhC1yVRG5FjuMv4/hvC5nYvAuE3TXInm
	 9Cbna0b2zvrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92043C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174814499357.31061.10162682644480594294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9b891a64a788b6e077f918efe51212a0cf1d43d1a951b870efe919cf608e82c
Date: Sun, 25 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748144993

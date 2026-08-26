Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A423438034
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787756434; cv=none; b=P2P2r799+17QgFbSh4MrTx5W+gU/8lLEA6VBlcKcGp9J1P4KPsUBCVvMTBmmniJJZC8ME+y2eMZesP4JShDO/nYxmFVGAWjHGUcCX/9x6xmmoafiJCjkloer4qa76RDkgGio60n4MNH061wqCX2DRIgGI/uIbymllQem3/GbG7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787756434; c=relaxed/simple;
	bh=ACJOeUi8B1lB2qOAoQIxf92A51mY4LBXqKLZWKtICxw=;
	h=To:Subject:From:Message-Id:Date; b=McVCiLKz1Zqw9daNQbEaEWRFCmXEeFC+ZVK6Et5u1FFCsuJOskwtdoRbxHQmEnesWmZQ35j0SHEw9RS/MUfCqL+MOPvb5sAZf8EGmSaMHyNI8IhU1c4tJHRHM86SvK9ludtaus2Q92+rcrJcfB4nLqhqvrp7MEZFsD46WBPkBYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUNgM/PX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUNgM/PX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D139DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787756433;
	bh=ACJOeUi8B1lB2qOAoQIxf92A51mY4LBXqKLZWKtICxw=;
	h=To:Subject:From:Date:From;
	b=bUNgM/PX66/o5hW46fpIfpwqEBwR+pSNQvmUoLOx0vWjfgtUn5NzRXJ2uzdKS65b7
	 aWSOdeuJMIfiAA07s4+nplG7Svc+5TzIs+//R3RiLLdmTxkHkpAxDPiy4J63v8BH/W
	 Nzg3SNg9tg9ovZPWuIZ5RNilW/vw23bxy2XxFCfHsqR8pPMrjQbi7gZu340ETR/YzD
	 YoYEfDMmtpBJsyWVS57VBu7nW56KUu+FywsQSduBwu4sj7EKi05s2WDz0nNiJTgjB8
	 rrN6RS+tJwzzVb8yT7hGeD74zcu0mwuS23m8qQ9yRz+M3DIqJqRA/sNB8eGVFtywg5
	 bPlpOMEu45erg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA7EC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775643369.25683.3000070755823882529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cca41f13f2d3d083c286dd8285c0f7f44fa2467f6064723aa82c9c006a16f34
Date: Wed, 26 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787756433

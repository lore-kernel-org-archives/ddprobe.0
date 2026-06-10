Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B212F5A13
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781067934; cv=none; b=f548IbKkswxZ8B3EtMhYR2G6XqTFMMKWPluN2osvrwkILpT+76MDNr3O2SOaLy8QnO/YiSu4KZCZ1vC2mPRxow0c22svp77r+SjVy+W+AGH1xuHMpSHXmVyGUsfTPXWrL9XubjRdCnDPQirVQ6Mk9rSRxT5K9CzqE+htutoqw9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781067934; c=relaxed/simple;
	bh=rPzOBAry3nkeBWAFimti2c0Wo+Lj89SRbyRnuapHK3M=;
	h=To:Subject:From:Message-Id:Date; b=tZJdL6kB2qm0Mj1CPUss52H/ess3QQ2CdAKrtSiA13WbY0jpaWmFjFYSlmBPnl2ubsGzbRZspNhUi6WKTkMww08NTa8ixPzELThJ93D31wAOpMmEuzY7bvNG2ruCh1kSn4kU+SmxFjj7uY0DSUai8k6u4dJQYbf+cWhfDFW2nYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYHrqn6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYHrqn6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B27C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781067933;
	bh=rPzOBAry3nkeBWAFimti2c0Wo+Lj89SRbyRnuapHK3M=;
	h=To:Subject:From:Date:From;
	b=VYHrqn6XnIRkhjch7DZ1J33frBDsMItO67YR3EEnCGtayT2h2QjeE0xiDpBUD9u//
	 KSGOAMCt98+Dh/COVMN4fCP3dKaY5845o/vmkJJ1roYVLEBV/Xfnzskny4QgufX4Bs
	 JMQnZ+7YzgvXglG546iQtomkxkvQBGTpqs6Z1kI/L5ayebL0Gb2l4UvgcmKzs21vvW
	 afaMbQ6HIUrLFTiaSVqkFR9ZF1f0cpPK3ukS4tVroRZnRxwvX03QzESumSeIwfrWXD
	 A6epRIzj++ZKZmPWRfgyTD6IVyOqfbO52zx/adSOyRWomUjNjRUPZ0e4tQnAVso3Zs
	 lcGeA5YHpfDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0467CD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106793368.3116.16631035498863369739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149f5d7629c2296ec3eef67dec4e69f21525e2ab3d76c3b7a407a4139cc1a8e4
Date: Wed, 10 Jun 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781067933

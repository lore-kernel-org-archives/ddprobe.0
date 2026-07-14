Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE6DF41D640
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784071714; cv=none; b=QAnS/De4hw7k+GpZIadpF83sq31/SiaSyGF825XJFJrLnktOlyJtDUx15/wNjUfb13DFnuwZmDshqD9FReajjt/G6WF3BryH2sF9ht5Ul3YnREMAyuXM8WVbRuIJxgWI/kzi5+fUtftRDihge4idSRNDz4Z6Mwd54o8llJJ+yGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784071714; c=relaxed/simple;
	bh=TU1sMJnLmsp/DUBQfKAwaLttvezmrm3aoE5GOq1bNZQ=;
	h=To:Subject:From:Message-Id:Date; b=LpvVYsOs6H7r1+Zj6Qj0Q/uDV1B4zDp/emFU5V15QHCUqEl24JYlE7+UTW2p5PjJRQPTrcV6wuFzifLteZ6BvNey+aIE6jTIzLDJm2GjN/eDVeOSpuK4dN4xEJLzxTqEqFqGZRMOlwz7UzzS4/aXkRjOpJiu/CeTT3pUtUOwB8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIRSX+U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIRSX+U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE991C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784071713;
	bh=TU1sMJnLmsp/DUBQfKAwaLttvezmrm3aoE5GOq1bNZQ=;
	h=To:Subject:From:Date:From;
	b=gIRSX+U1KBm1ADeJT2YxfdP5g7NjJhqPfLT4MwC6Zkp5WUUUNvmJRV157NZ3CpQcp
	 6/KAHbr+vPezZBAsYavhQdYSF7Pj4i1Lit10mPCKKEkfk/CBlbdf/UZF8X2MFQAQVW
	 it1B4Na05IQHSf2BtiLh8T610tZAhJlMSGgxu996HHyR8nX29z9mdCYh9IYKtJ7eUb
	 2am5PaSn2Yffg54PnaNLYn+eNNdUbbtkbIUgMCMNoGWMACjdjalDIzWQCpOetc3kwn
	 bpF53BhdOdJvEhdnwpGfuok6jamTJRZ/w6VuOJDrBDuol0TrHxCidhAVz89vNmo7hz
	 zTRjWjG4C6IUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4600C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407171369.6786.15583618116205113577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae3f2c82e97c754c4dc2deece41db99c5e42595cf967fc7746a3cda2d0fd9bb
Date: Tue, 14 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784071713

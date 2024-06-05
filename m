Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77E571946D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717584383; cv=none; b=lY5UvUfGV5DcbTK/uTLTvFgYZtaN8F9/0ktf5k7F/DFx3Vw+c1SYaSU5YHYbe0ASQQafqxFf0Cng3UHAyFP9r1JW0CEbg4/1/Ke4Wgtc4ekZNrEmRMj5UixAfE+S9K01Bg20kzzQxTHt5Dj2PEZ4a9Hg2SxOTtV89vxZ2aFcrxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717584383; c=relaxed/simple;
	bh=PRmnXHuaiW8SiLsgmiCkUQPuv7bf9Fwce+2EjesCxIo=;
	h=To:Subject:From:Message-Id:Date; b=hHxBHGoYaTj7q1my1T1yZFj1K3bG3qPMSeWdqIMiWsnn6hdLRVN0xsbKrwe09aVcYsg0dAeeMXuDtb5E+Uq7J8XUEcxvhXYc+BnT8sbhvAuI+YL0EV+OZivK/Y/D/T6fnQH4Fojod+gEfzQkVmKGdiX/txIbPL14fkEeEZKnz1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KA56ul4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KA56ul4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D841DC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717584382;
	bh=PRmnXHuaiW8SiLsgmiCkUQPuv7bf9Fwce+2EjesCxIo=;
	h=To:Subject:From:Date:From;
	b=KA56ul4HbgBpsv8jBTz3PdXOu8nHTP1/ZLq/8iop+0UU3GW2nVM9bfau5Y/NxHfcJ
	 o34ZF16UY6TSm+JzuqftCC3DqQ+NcQSmiedzbFrDQhg+qeEuZ3eIzY3FSgEV/FwnHu
	 J0NE09pqBIeoYOAlujrz6+Rs8XxUZW5LHHqHFoY7HLf1aVLY2NlZBSQ1LquRDat2r4
	 JOk4vVYx/A0le982ZR5tlESP4fazj1zX+wg+vrRPiWaMOBmcvIhc36iL/z9ccwIL4U
	 C63Gx1sP2/NMnwbTLZC5LPxbW0jryDGMuLA/D9CcKOa2C54zQYvHTKTV0VB+DFSHhX
	 oOQPQ1lFrldCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BF1C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 10:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171758438279.30865.13264163475892031588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf8cc91c4f9edc361377b78d7468210bcd9fd3ba71c96ed9323aa83e979f728
Date: Wed, 05 Jun 2024 10:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717584382

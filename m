Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F0E19992C
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725540354; cv=none; b=EYKkz1Cma01DxR3DZJHdOV+t7QaS8rwiSCOWOgukU2VIYw4CD9+hKBgxx3c60rm6zDVoJvh9q9oDVCfxS+k9v9VYQWnz7SWoMJrDQPNexLyVy4XBAJMZBq/G2FKJ7EybKphsG0E7loDIEG6YzXq8efPtfp/ytsRVRbf7H8aJrlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725540354; c=relaxed/simple;
	bh=oLuhfCE0+lzBLPQ1kPOnjbc3GnFgW4kpN1wB333Uf2o=;
	h=To:Subject:From:Message-Id:Date; b=cp/srS89NmAwLxLBxIKUpwe3hPnXVXAxmtaBRRfFiwCAubIj2U1wPS0rmXUlI4sYc+x5JMeQg+icR/K5o8gq5pPEHL41yE1ryw30TrWNqm5HAsMx7ro2Trj2B8w/FRx7RfFrJZNmbtGV1sSBs16/Rw+IvClRpHc2yRG89pTqaq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMqBRgTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMqBRgTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0446C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725540353;
	bh=oLuhfCE0+lzBLPQ1kPOnjbc3GnFgW4kpN1wB333Uf2o=;
	h=To:Subject:From:Date:From;
	b=MMqBRgTslJB+l9WebqGdLf6pDurA1VMqIrcbbvCfiUORX9WQxBILCUtL3sPKjafOb
	 3nKr+10YyWpVSHfppKBijuXAGed7FK2O4gSUnCfixApYbygUUHWYZPp/jrXgy86OLs
	 CBh1Km+6zoKp/q/xA+ncmRh3PWyq1rpNJfYOekM64mUJtDOEAeYWmHHwbD1zL+Y66D
	 ZioE7bV+kqDmH3dG5sNB7hg+PGXLN9kMiOePxfGF0WchdqhIioTQ9owm1gxE/6YOpr
	 ZQcUtymUplpMJ6zs5DiKK8xQ5zKRJSxrNoPnCMN70MSD80m0WCU7cWSvwQyrNiejn3
	 aaOF4s0MYjHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C40CD5BC2
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172554035366.11336.15222263987783628205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae934e7a855a6bd2b272453db09c780f25717ea2c89191a466e00b54d7d38d35
Date: Thu, 05 Sep 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725540353

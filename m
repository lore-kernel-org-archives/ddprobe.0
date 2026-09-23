Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39700313522
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790124634; cv=none; b=Em7Is13D/j/BdREZJBOQ/LTiCh+gkmOvyoMT5tKEMmP5rkBtg9HlidZNQpFT3xM6dRbmTb7o8sfA2GhvJ5f/pag5a1G5byAy012yrDn0IdZWW7GZFdmx5wculh4jjW1NhPjBoDZH+ItY5Y+URtsatGl3dnposGi2ROYwOIpIxjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790124634; c=relaxed/simple;
	bh=fh6cmYE1/YKqdsSbUUn884En0mwnqarGCCnxTr/5JLI=;
	h=To:Subject:From:Message-Id:Date; b=XYW6TunP8YqUYEFfJ72SCFN5fZLnqvG0mKOFdUT9Lri4UNeSNzAdWPLBp4C5m+rPX1rnIzibICz8tgf+tx9dYJjKkNxqy91Mv8omQKba7/EE2b3SFPBa2ngpee5HKioz0H36jJ7Hb9h1l7H6uVHL5oiXsf7nijucD/W4SuvAZXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRISBIct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRISBIct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBE8C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790124633;
	bh=fh6cmYE1/YKqdsSbUUn884En0mwnqarGCCnxTr/5JLI=;
	h=To:Subject:From:Date:From;
	b=sRISBIctHMv5y/LelC8v6YudnPFSti+6yzxLWoV3vwyXymrAFGSrXDgBDstXmgMsL
	 vrcxNH0iRBmo3qxvi/b/aTGmT5PKpWWJ+RKldBXXcIjpGW9184q3wI1vO4wanfhPlH
	 5Ab11LY/Na3ueQI0Qcg0UewB2PnqEuYk/wjlCty71wqp4bBFTImhMuLpaDd79A3T0j
	 bHDVjjdCbsXFtfxNyV9mhO/UaTD7Ss355s/nmSCDfx5SQgNylwXs/sbInorUFU3qsG
	 fkFQ87sKNDnWEQdBTti+2x+BgjUa7xi6mfO6teKfHffYVW2oBOFyDeKmv+26a4HwO6
	 5xlvkGuOInUHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADE0C98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179012463369.5065.6096876199655935039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d04162bc182e369852740b2f683311ee9e1487ef5b4967732367cb919fcfc7d
Date: Wed, 23 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790124633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3A530149F
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788786635; cv=none; b=qDsK2D1dDPkc6niU2/ecx8LgIykN52MaCIdzDBX1pGsusOt/zWBTxIqYSg5SQrMkjXrJc4j6Z+hPvYZoU6zljviJp5yV9v5usl+VVDGhq0UPhY3yIBL+a3Ubcf+BNxMY/ga/teUtCJUNAuLlPyTBwvWmCc+/Ib7RPDTF4odpk0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788786635; c=relaxed/simple;
	bh=0iVyL1uro34XVt4CevDHTdnxEOjm3oFpwVGTDWP9haA=;
	h=To:Subject:From:Message-Id:Date; b=Wfet1vQw+lwaZnoQLtlSaIWIhmaMG48bjOiBoMleKx079oCzNLaQhNWRMnWaAoag4uzgJeim8S1W0oJL8euvIkV6R2y+vf15JOIVd8ySOAPrWf0wCmx8fCwzTDWtWnmrFjd0rA8t+0tk8jWwOrmqO3dpTi9BdBHJapCQHTr2Nrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHT7DoVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHT7DoVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67D8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788786633;
	bh=0iVyL1uro34XVt4CevDHTdnxEOjm3oFpwVGTDWP9haA=;
	h=To:Subject:From:Date:From;
	b=cHT7DoVsg7YYhV61ov5DubRX3+NZimaARXP1xGXfFRg3IRfMzU02maEssd22KTDCt
	 J1ZQx4LtaQ3suijsO18NFrnY7EJKKGiczmPPoK1zQdw0nNZnzxHmezCnd2G4ZG8QR1
	 AdDRiUTnA/0mxSao+6vZY3nfYlCDStE8uv7BNEWc0zMDS19hwwp9hc3QxqHkgkG6ui
	 VO6d7H/W6ZkJMQZ2Fp4JLvJOTOsq4tk4imNz0TC7R+PZDemj0gBgijXMlbMFDmNsJA
	 wnayCnVB1cN9mdx4NQvQGe0BVDmsZfiV08F8vlTzwj8ykCRGPzuKADf7uLb/fi9Af+
	 X0Vjz4F8fEgkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7B4C79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878663370.23970.4440739075497324181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdd2b9fafb24c9ac81dd0afbc8e80edca546c8c3dbf44e3f10a8cdae9ccb6f4
Date: Mon, 07 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788786633

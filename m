Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5DC2C326D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769569434; cv=none; b=cdC5rlFMvD3TSCGtSl3pd1tomifxq7p6ugvJK+wrptWhdAaA5gOcZu7/1l7LYZzjWB9R90M1DrC7k7I1pACbjwHfBrAI9O7bTaUeQQdWtTeVks5EvyyaG9U6Pgnuvo99Z5gko3uljV9C7SC4Vi9qqqOpy7LoVnERFwZkvaV1xTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769569434; c=relaxed/simple;
	bh=wCMJZyyqxfS5XswviLK434SggpwJ8MBFEnuU90VVVow=;
	h=To:Subject:From:Message-Id:Date; b=r2G6P2pECWQc1XCPBhD05f2azzVX+h3u+H2S7kixGpQRUoIUK4kKsrSIvCOEvtbDQCLjIjz4hDMMUh10BBGCPTH0xvOGZu0a/vTl+J+B+ZTRpcwWc4b/mIVr5pdq6yB8BuqwRaxzv3uDyEy6KP1zIyqjivOahRqVm/qzSU0bCSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPVZJt0A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPVZJt0A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A456BC116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769569433;
	bh=wCMJZyyqxfS5XswviLK434SggpwJ8MBFEnuU90VVVow=;
	h=To:Subject:From:Date:From;
	b=gPVZJt0AkL4up6B2JSe9rTaLesRbeVbkUbdPWjW/r1Sb7QDCEtmyS7m91kFSEVngo
	 uJ6tQe7WwEQvyGyGsrz5leCIhXvsme+U90ydIy2CYicX2Qc+FV5fwLcaBq6Hls3F3X
	 j2INuevHQhE25oTZvGJjf8PoNS7zr+kRU4agcuSrOSKLjzlf5qdkrhaJlZW9jpp3Ap
	 sNJwuWgVZqevBVN3+L7Rdz2yWqaxjwaIlXR+UX7eLrdYr9mQIfUlyoPpYFlnBqjXFy
	 blngqCVCQQiisFeycP328BXFmtmfc68qb0ffw/g97w7o9v0iyohnJ/9sJTpZ/ZqSBF
	 D/TcGRpFaFXYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B2D35666
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956943359.25803.9761572184980463609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c02c0b9621eb93ec05da664ac1be93822b7f357f9a6c04cd8a23870c3a62a4
Date: Wed, 28 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769569433

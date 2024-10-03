Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D966A33F
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727992555; cv=none; b=tnFtf2ewdCfUamTNZ88JlYRA5MJiqJBVcp3CD42VzMQmwFzsKyMHeOOQWlPd85FyWUHcDljDpHVYKz6LucDwU8PjwSM/+m8c7lHCeUt1wKu6o/7flJVsr7z2n6E+JyIWxv7xpF/ZTaeco7VoYKyc2iiAoFSEviCihweT2UFJ+n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727992555; c=relaxed/simple;
	bh=CEu2E0Tgz9JLuqxBpwGzA+VHmQplVegWIiV2p+5OJFs=;
	h=To:Subject:From:Message-Id:Date; b=B5kLXpPmbVmyreGJycXM7HPK8VLZ04mZZ1W1QrnEkrC21/7GYUKVjtTuzP1rkZ4YO015zXxFLnkryj3aKDZXbog8U8jSqre5O3W/svpson5zGjotK+FL9s0NSsrNgQ9hcyxAdYyBdwMkhPf47ce27u5loG0CMyV4jh/c9kKqMHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e013tAMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e013tAMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FC0C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727992554;
	bh=CEu2E0Tgz9JLuqxBpwGzA+VHmQplVegWIiV2p+5OJFs=;
	h=To:Subject:From:Date:From;
	b=e013tAMF9awRtA+uHTikV0TcI80ubcAy9JN1TJQun5Sgxrij0qVGclx+3td1Yh62+
	 Qymi3RzI0sJ2zi3sFZ6sk63AIRwV+jTSUJs6nu1pes/PjdwZbNz+EmLVGZPz4y7sMs
	 x+GXpcE7oYqtbclACV6nQsp/lL1E/9xy9Otmh2QyqGh4VV3vVrZBFyKZjuQk1T2A1k
	 uoc+7W2cK1YqYoQgEUfIdi+/j7+qoYSCI/GfZeFgONEOjipWd/Aq14xP2MRZznAQZZ
	 be9x2J4lg9FQjJU/Zb2PCwPsPcE98DHwyZ/50xz0LC2CPg/A/ariQeAM/BkVtV5IY5
	 o/uEIXUD4cTWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D5ECF34CA
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172799255371.5745.8080080909828952416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56bd54ed796b904801084ed307811310ade3a1054d8914d30aedef001219e344
Date: Thu, 03 Oct 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727992553

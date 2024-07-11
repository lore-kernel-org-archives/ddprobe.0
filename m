Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DB0D50F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720662443; cv=none; b=Vv1XDJ4m5QZ9TIFptX/ribnaN9rneoedrM2imgLdeQdFK1nxnCEAUXmJyNFzl4kT1HvKNJ7cYrEHNzUh3+v83nWGXU6TxcHfkko83bHVAPWze57Ij0C1bCxPCtCwWslPxuVmEoZfVWgpB0GuqYmbPH1apfbvEGBsWerrpYcDN3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720662443; c=relaxed/simple;
	bh=9ecfPzklxu1P58uA1/MTuIyM6gAB9oJPq+V/E7TffbM=;
	h=To:Subject:From:Message-Id:Date; b=dVL2eVnVA9uHWvqzuhHoLzoeFNSxdUz0vt5qfj3Oasvz+p9QVR8F0vnb17nH/VHTxxlxg3iqxz8aezUA22Tq6q24n44csbzeebteOaLe8k5hP3odbrBEPm0tiih1KtkV0mfpR0VVB1X9YRumt8mXLSm4bH/NFfMmWFwAX+r7H0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsrZeAxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsrZeAxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7077C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720662442;
	bh=9ecfPzklxu1P58uA1/MTuIyM6gAB9oJPq+V/E7TffbM=;
	h=To:Subject:From:Date:From;
	b=FsrZeAxP4W/Yz0TOwNOyXhuZYRKLEfjZ1wCtQbQNQ0EJQ00flMufMzK5SylfCqQad
	 2p0YwJeiZkJ1duVGkB6pRiVsMsMHJ8R1t0WLiRVbuDwNvAeUTm/Xu/C00HFb//dBlq
	 Ih5jAemlgzcEFWmZtMe9OUAEsMOBU/8GvBZ4XbKoRNA9Hs6ausGK5bEJu8dNJNvuAR
	 8M0Hnc6iE+fyH0PqModGWTvg317oN3H+UUbWm+mlRxPL/hcHpWDD28FLwUYFimND6Q
	 VC6+nfeNH93pIKy8ChwBmGwQhRa0FOk3/zwyty7o7IpOYQZ8QjK/KmGGXIc7Mu2iNt
	 JpUFAgDeD8a4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B27C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 01:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172066244280.13999.2050482013639077276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f652405224f08689a3d2d323a3f453c0e896aee2352e451b9a0a65b818eb92f
Date: Thu, 11 Jul 2024 01:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720662442

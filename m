Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC3B1EB9FA
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742636994; cv=none; b=q0coVNGutsUTcisZvEN3dspl416n2agpft87zzN6weW+fhztrXRK2B/SZqqBp6IXX84MS6vVsgk5VgQDQibKge6GjXuCuN6zR3Kj3eHzMlqTcKPuL0q7bJNTQKZdZ4eei9Yd6aDo7T/Sbzm352gprfBkg2IXTmmZ9KsCaNJCPis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742636994; c=relaxed/simple;
	bh=TxdKCuUeMWTLzYUyfB6fd1XOyP8st0+8Ah9XEMJ+amo=;
	h=To:Subject:From:Message-Id:Date; b=GGtQbgDhpjtE/vzc8qplcmDWIEmWPB625S1/BIlizZsezpCZe9MKIb420B2Ng7dWjfymsPDtetOpo39OMIsrOB76GRAQ0mfdAgaDZbcwPiVeCXaG+CogA6kgQn2mHSqIXBAB/VeLNPOGBwjkAsfkMl1jZHYzL/WodHN9sKiPtk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ66zwB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ66zwB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD445C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742636993;
	bh=TxdKCuUeMWTLzYUyfB6fd1XOyP8st0+8Ah9XEMJ+amo=;
	h=To:Subject:From:Date:From;
	b=YQ66zwB4dIB/BNhETdloZeVNIU3ynAOYp1FB4I3zzUtzkx4ouMnToSlRHNWh1uaua
	 /yUawPn47gLOngU4DAlqKBTMCJexWYDLqsMlRDZHWR/1DQ4h3S+t0T8RxFmBHKS70N
	 FT3XVZNb6wOIFDGhPQucJmgVCs1+dVbylSPPAF4qkesOYCgT+DAaQfHSR+C4Ji5T3N
	 mi6MBSxrGp4KxD6a1F2WvL2HoGBpslQYNQFjpdOSeKwMQr4hplKepCs0bxylqoXL5B
	 EU1MlTClKyfJszSEa2gA76JPN8jzyfBFDrgO8fUvVmH0Yt9AZyTMbHGsSdjKhVTt2+
	 v+0OIsMorstKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B324EC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174263699365.26408.35596069645683807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d03631f69851f9b723c4e8d6010f9a2c12d7c0306c7e287f5d2b58e10d53ca
Date: Sat, 22 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742636993

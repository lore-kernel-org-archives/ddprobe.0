Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6091C07F8
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728997553; cv=none; b=mUsMsYi3zbsNLtcWx10m3WPQA72Z4moVz+OBe4MpJBlo3Ztl1Sh/WDwGh6OyOkj2PCCm0TR1n+MW6BAXePJuOmGl2o3svCtRYpRyP7Y5pZGfiaVqqUs19+PF3Kv6Ym0+Qdcr4T3HcAsBy3eGH68phulNEbrQllex5luHSrT6X80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728997553; c=relaxed/simple;
	bh=hHM9frKlLOSfMZdE5laDGMLk/rmpZCBgH5G2PPYCVzk=;
	h=To:Subject:From:Message-Id:Date; b=Scv6VHRTDlD1In2NoNWQzKTTvIbt/942n2IYlPaPMdp2ZfKG1xw458TB2udXDRBdP5hQZpRDOYjZb8y2j9zqK+t7MsvStUqJvYFDhUVhdBVmwD3icL105waC3vMXdF9LXt3gucJPZleD6TiU8tHtjl5YFhmO4dPwu8wBMltBAKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwlUbWhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwlUbWhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4C1C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728997553;
	bh=hHM9frKlLOSfMZdE5laDGMLk/rmpZCBgH5G2PPYCVzk=;
	h=To:Subject:From:Date:From;
	b=AwlUbWhwCRRUZrZAi1MDtftqYcoGbKpIU9OM4aIWZk0eUNldCsNe4PzTDDWF4efWZ
	 /DYGnjRcn2CJcBI+8yQcG1FxAg8pRYv2KBZ/wNDX1iXHD2Hwss6FLsz4v+ikluZF+K
	 jSUqpiW1HObMK1UlJkyDY/WOiT7atKjJzIwOQsjlwPssLhhX6vl2FHLr8eaAcf8TMY
	 +giRpk0cqNHOtNiwepqHmjUvqifPkQPqL1GjwrSSrJCDC/vTlm4Zs9px8gi0w9j0tW
	 5irSc6ZnkuYlHE3FS7wQLHqwzbGeOY0IrYAb1WLAVRGaC7XaIP1ro6rvQ6zVCGK5CQ
	 jcIdw2boaBjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B795D2169C
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172899755361.17868.3915502426754403266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16537fc0c0c23a62d22e5e3cc8d34050bf3bb929b8abaac0676c0c822c599934
Date: Tue, 15 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728997553

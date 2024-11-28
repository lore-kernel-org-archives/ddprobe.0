Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB81448F2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732836954; cv=none; b=EQsGFut2Nv3ZCwWSZ/pxokQKUJWgoOBwELgrkryn30YSNPAwc9PjVO5K7Y0JWv3O932+dOL0UBV5WQsXeeMU0n/Apf1cAZ44fNzCBUbWkaOkEMJjjemw4Dqs3WRobA+0gYLZZgvBApGpR0/PBvSiH0rhkDOTeZW5pBi3HHPbkqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732836954; c=relaxed/simple;
	bh=YMRnwFyDdoQizmQWY83+7HjYkTNTzS8EaYQR3Hy1yG0=;
	h=To:Subject:From:Message-Id:Date; b=gpVT3hmoLLlUhobc1qlmpBl0N14w88jNratCtbDxMA4t+dGSJs+mJ8Cmu+MeAXalB8Mz4EKZkjwcPy1Ufni6VNcuZmfmO0wyx64RInhECTbOwou9aw3WXd7SnMupG9XjiXSvJonW7X/qpniPLlrLsUtZ/8sF72B3gf2weAshrD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq6ypIcI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq6ypIcI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC39C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732836953;
	bh=YMRnwFyDdoQizmQWY83+7HjYkTNTzS8EaYQR3Hy1yG0=;
	h=To:Subject:From:Date:From;
	b=mq6ypIcIvfRP4yNZ7izPNvkGZtP5TUtiMobLbKGih+mp3UnkW7YL4kHvvRbeTiXBz
	 ENVn56h5oX9IL45WN+PN2ubux6X3wAnEzQ8XudXCdmBcZ7cn+7ayvqhqjjAA5kng3d
	 b6/GfX+fQfqReHIdqeWkBywtFo7EgFE9Q65wdb/n/M3dkaZDnnsxU8bwYZE1R59f7a
	 whS1c7n5iG+bjhWidKQ/GU6Onf0Kg3nrKc4ZrSlMpwEXy+Ag4HUgram6W57Sal0w6h
	 pUxD33oYWKJ8QtKskRf8dlG0fybVCWCiJNHCMs+eTzuyyZn+fy4neCjKY6aiO5m+2X
	 9uDL1+CIbsscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBCD70DFA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283695358.25265.5969269538266077303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ad33a1a25d184bd18d2cae0ed98e1af19c147acaec2e729634da4f8fc68310
Date: Thu, 28 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732836953

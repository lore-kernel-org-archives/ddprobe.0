Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C8712D765
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718300303; cv=none; b=NwnM3f77nIy6a/s/ur6KYUfkBJEYydcM9Kkwdk2erKNS3+sYjtFsxRCq0EG5i0aa6xIhpVt1jgFYcGdpPFviArz76aK59DblhGGrXWdAcsaXc2VCfZIMlV2AwImvgLpXIWfJlL9gs8rxsjIekjUaE5Pu3fXGUk6rr34nwJwnELM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718300303; c=relaxed/simple;
	bh=4/7JzWU1R0eqUpF5gABB4JYb1RwLbdw6G08NPTdNLIo=;
	h=To:Subject:From:Message-Id:Date; b=LUQuvP50PyRMwpadJ9jtPEP/v+I6puR78R7phfSHF6yQ1NnX+jDMJ9Ef1UH7R9XhrCWe1nPg2sfPIUudWo/KSHeA9eWuFobcCjdNyQD6p9oT+ndEYddeAmKmCJjRjgS9LNSdse9LqpVeTgLWJ1Ix19XS1tVMlrqedMKzfbC6nSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkWyZBvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkWyZBvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D992EC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718300302;
	bh=4/7JzWU1R0eqUpF5gABB4JYb1RwLbdw6G08NPTdNLIo=;
	h=To:Subject:From:Date:From;
	b=VkWyZBvc/U2ScqK2CIF+bkCzzslffCMpQjQ4VwYDvF0ngpkZNWJpCUbmT6VOmo3pT
	 wpJ5d9Iy6EF8LmKojmKiSkToK1PzJnNb4MFNvXH7lJcGjWwuD8r7MfPxlhJDzqcf/N
	 UViE0MYuSYXutnlDqiS9RWn5jWW+472Jz/K8AVsI6Ccji3ptSS83g/FkkMh5mhxa/2
	 9tpo8CLTYW/1rP4/VgN3Tw4l9poAEj2uOyUD3m99Yy88VghMq4KpEoifFj5aiUz4kA
	 6aQp47MoXwEcxKaUNLnYtQhsfMqB8Is78Ee4KeaJYGecnknvg+y/RzIhtAd+xih/wR
	 Wlt/dJ7b3T07Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF24DC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830030277.2046.16967299187543001116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbb829edc9040067d6cf32b2f3d117739396c13ef1e3dcb5b45e0aa47211f5f
Date: Thu, 13 Jun 2024 17:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718300302

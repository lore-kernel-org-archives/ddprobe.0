Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2DD3148D9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783595314; cv=none; b=Gj6lb5TbRGYgM9x/XFWRfbp4ESX8G8Nof5dRqfAjxzxA55xl6wJMXxgTA6SlncNGI+9yqpZCfcsV2dJS1FaOVZDPgmGBDhN1sqKUzWwka7cm0Ct5OzDEMZIc8EOt/QDNXvVmRikFeFiO5YUvGSobesTs/ejoLPd07jRJZxtrEc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783595314; c=relaxed/simple;
	bh=iN0rOh9kzm+M4BcBYMOrjOk6Tg8Vnnqkz66xki9PKJA=;
	h=To:Subject:From:Message-Id:Date; b=mYDGrMeyB5ypIfwZobjAWZxd1hqsnbTttxL243PGBw1DR4xKqYcqBt08M0AP84T2Rw9jbgUdrrT6kQtSfj2iCPbOw8JGodCxiihzUOaiciSsi95kzRayFm4OXV0iyfMrRP8zZlrQDZTme0R0x2mqNzojJ5R9A6Khnf/advHiZ+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCHNv/Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCHNv/Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9343C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783595313;
	bh=iN0rOh9kzm+M4BcBYMOrjOk6Tg8Vnnqkz66xki9PKJA=;
	h=To:Subject:From:Date:From;
	b=oCHNv/Q5dSfPmcvwWXmo+FevFKcJ22jofpHvHXhz+VC3n7lqVzoQOx3eoCoqNqmyB
	 ZVr5C+1GWOLoD1R4pChHyDRkIKgBBKJEYUJTAi6s6oopO7l+Ved0L4ENxAAdpnlQjj
	 bviFWLD0NYc8ihZsZZ768j9fpHp8Y5p8VcdLdh5nQofPkYlcmKWqYaxNXtWVhcYMar
	 NKg6ySuLXNm2Jxx7XzCDvWEManMeLB//Z9o7JKhs9Wa6Yv/59ecuS2Nh72T4+wf9iR
	 wOTxlHLF5grgKDV9ARwdxas1Hq8Fep5STfvHk/PXdZq4VcCfjz0eJDp2T5wzS+l2eL
	 6BNeesHOymZpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8128C44501
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359531368.27484.15425481867684166384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3d9653059b79f26860640fb3fd5d44051e034c4136f1c20fd656e44ab3fec0
Date: Thu, 09 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783595313

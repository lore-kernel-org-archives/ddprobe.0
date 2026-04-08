Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42519386C39
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775691334; cv=none; b=hWZF0cnBj2HFnaOmbSXliGtjJ/AQD9MYAtc+C0mLl0E+qlN9cT/pl0mpkvw2FkGmROwzRRR63pRk7yJFuV+mf8N4YlF4sfRYJkrFDgBycpwDOjRhzVJrEnEKp2AkleqH/XodVPDaMbpU/nurGBl6kUWVhsXFpdJDzy6/g6nSWbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775691334; c=relaxed/simple;
	bh=whBHULgHdYeHRR6LqTUcxQtiYxAN5RVMUwCPrBc0Q+4=;
	h=To:Subject:From:Message-Id:Date; b=TxCHhTqv4Eo1SG6fdDfy6xNwQaZfA1lQ9ywgLz7+p/ofFcPGGU5gPzGBt3eRmrbun7t9ZlXYANi751z+Whwl1jGlvs0PjmeffTFQxiFQVzaWxVz5gf4dibxrFKg16MYYQDwF1S4l8w4XAUAmLYUzk61q/Jing1NBLmScT7Y9MAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTwb2hAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTwb2hAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C910CC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775691333;
	bh=whBHULgHdYeHRR6LqTUcxQtiYxAN5RVMUwCPrBc0Q+4=;
	h=To:Subject:From:Date:From;
	b=nTwb2hAXUOpGGssc92kiNafIxHkcJS/PYzOWS4N/8BtlmpjQc3CshXpUC8Kh4d16v
	 x/RjMQjQLtwx5NomdBQaZetoSW+g6xnSaq+su+0uT16AtjWC9VpMptCVPQvhiVB5jD
	 f08sBvrmDHL9WIqTxy4G+kVOLZJ17xcpqOxyTVUCgeh8wJY5IC4red+MjaZ1LRKk3e
	 acjtmsYIKVEA+1orZ7+f7OgXDXvGOmzWJFPOXEtRECQAvAuXS1q05WiK9DxDZnbAM4
	 nAWBHFubXWDg9/ZMOAEqwIm95lUE5DJXECnCUUm2XdDg+nwdWS82ufpb9oOOI24Ksh
	 /Hd+/dVb/moOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B474410FC45F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569133372.7621.1881347649896822364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bf2e6c75a37782aa4c4cc970ce618b298dfba4759d08bf735ae48a0460c19d
Date: Wed, 08 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775691333

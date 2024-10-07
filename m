Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2502C18E037
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728340554; cv=none; b=KLHgVs0Kg9jNbjY9DSQ7TvpidkFmnxWPma5WMPmEK05ZFgWXv2coeEaEyJpjwmmOcDX9jMs41hYHVPT5DnVMyLn3o+ocIem0VNZ0BOuDiVpYFAfu4WLcBnOqmXWTj5v/iVHPRn7RNgtehpSggxPud3scgcKeHHa0xEBKhOUuFEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728340554; c=relaxed/simple;
	bh=nnQ+lOVovQALylSRA3qs1aYg0Zw+SU4U+rnj8DgKXxs=;
	h=To:Subject:From:Message-Id:Date; b=hb+IIRW2OpoIh78rLqmHFLUTdjbmaTR70NgsdyoW/IGW5k2VDvXxW/K7xM17FZRarAV0PVxhQXryE0TA1BtmAiTm833pZP1G45VgsHzUCnkmFt3ih/XCBtHeNGe1Pyn1fXO4Y9CqXU2gCorhreVN2TbWQbgFiOS8gBkg32BYgnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCvyAldk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCvyAldk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E67C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728340553;
	bh=nnQ+lOVovQALylSRA3qs1aYg0Zw+SU4U+rnj8DgKXxs=;
	h=To:Subject:From:Date:From;
	b=jCvyAldkF1enYUtYnxfsZ3bnXcAwkvHICh4WxTik4IwWvs41gTnn7m9Dt/txJcPCR
	 aYtK61thsuOJ0z1YglEaRYrpDZQEkMhpEHHMvSOq/fl0kY/Ah9wdljksqXAyf6/+9T
	 OsOW+SzEzg0OolYcEzbbQdmDIbGORttewu1XoRzby1ScZskAIcCzxTHA2fb3eEFHnI
	 MV8AEOYsYH1gukBFZXhHxcRACkwl9Si+hkwSc4ywyR+6ZqC3WtnTovGSoCdn3VT7IE
	 yPZWUlaYXRxac2FkOJEznreETCSAshxdkZxmmut3u12ukrHjZ6PrgCTdYISO0STn4k
	 kG4YRz8YmjlnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B6BCED247
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172834055359.17586.4691401805898708252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52195d734a288577dfca5222a911b262b084271fec35f2a685c7b431fc6a6cf
Date: Mon, 07 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728340553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE222AD3D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765511574; cv=none; b=QP9d582EUhcKAqlHsALxsRZ6kxjoKmv2l2KOEHsaeC7N5bnV0L19cZbGhGoWUW5Ges7tWL2CgHeAwUlh2L+s4EssYaXq9/SJFh0U3AofBTzbIx3Lt5bNoDx8Vjx/8eixh9PSkrpd9eGI1FjYcJpKG/AO+3TgBm4bILwR7tmTxKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765511574; c=relaxed/simple;
	bh=yvTriBmRKUEguqeN420/J5ReOGrXaOghHFarDG9BsVE=;
	h=To:Subject:From:Message-Id:Date; b=Js3VCxgtV+/Vg9AJYcuCuoyyKn+z8wXF3IHdDJ08SkNEtlurow7TZ4bxExeAI96oM/NNAgOeWsehXb/3eGZzbP8md46ZH0j9YeL4UzvPMpag0FhEpZkusQmEmFPat5j785tCkg85bxv6tg7qFqzYiiyKJD0WCOUaSeuyBBY1a54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7KhsSOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7KhsSOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB224C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765511573;
	bh=yvTriBmRKUEguqeN420/J5ReOGrXaOghHFarDG9BsVE=;
	h=To:Subject:From:Date:From;
	b=J7KhsSOk7EfIXVLZs5xBsJDc/WAyQPWFs/6iJIdGWGDWmQ2mrxEReFMz5VjF5oK+t
	 O4TftSFV2TrolsU9iF8l7A5q/w/wUUV3Rm9Vv9YYx0cE8aFyVXN50XV2O4oRt/1TWT
	 SbLsfW7Fs0H/jyaGwyvFJ5473hav/qgmTf5MVqBm0rOP0DgNyhnoz+QK8dM68OmUxN
	 e6ZQvf5Vy4T3Lr7vBfSeQm/kyNBJk3qnog2fQKEcCMOeNw9HNFk6mMzeoxUmclPf7r
	 KjH4fBgsOR/QB9TnoQb2Mki/g4l9ccNV78H6Nsyi6kKgfmu497zo2ZBIEL2W7c+mt5
	 /qfBd9JtaJIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D0D43367
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551157362.21287.2424340892522650110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf02629955a05a9780a14b57ca34ba306d6f03e63ea503bed5e21067fa45f2c
Date: Fri, 12 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765511573

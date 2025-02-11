Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE79230D0E
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739289595; cv=none; b=D7vPrrquKdr3+oDVgI4gJcwTrbEkU0KF6kRc3WtwdhjaPViFgN5xkOVGREs2HJufgFxQaQGQE8k7TKUkdVAxKgiynWY4+J+6J0O4WI6vOe820qeQ1t0KnzYxvRJzfipcLbPUFUezZ6+IBQ/iWdyLPap28ilcqI49q2K1P34qlWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739289595; c=relaxed/simple;
	bh=YHBVbbfTEzau/rIZ4F5vZ5DXyoSe2GXN1ZaU2Bxx7DM=;
	h=To:Subject:From:Message-Id:Date; b=Qr1bqG6UkKNTbeCy90fWoYjSYt75SX7MQGXfkfAW7MqGrwupye86BQilqBxx/udrtlsDpneXZXSQJFpKfxcRN8Lqbpn2HPrtdrE5ex7/5TMTYnMwXllPKu7/neuDnPbs+r8Ti4rMsh32n41qrQ7dcYbUA/xCzMkPSGYm8JS5iUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaIDv2S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaIDv2S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E741FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739289594;
	bh=YHBVbbfTEzau/rIZ4F5vZ5DXyoSe2GXN1ZaU2Bxx7DM=;
	h=To:Subject:From:Date:From;
	b=eaIDv2S8XzyIicfHf98t7Xfv7AWXDykrb21WB1P8IG8K37uuFAAsjtbHdGf+YJaXJ
	 RPy2wHjgHZD2ZfCbQ3OfcosLkw/8mKKSrpMT/8MpFHfxtcS22vDwdpbJoZQ8gt3qJp
	 MdrX0GrNRsws1cFWFg3FjdHpnKXv2xkSAMMhur2CNrL9J1UsE6jqjDI0zLanRTxRNX
	 xTwZ66bzpOTClr7U7gSC9cxAxb5PIYhkznrpF+56ByKfsKS9Lf1zxqBzFpFXfhFAIk
	 JpUMq87yS0lKDu+tOrtUHZytmw1FUTEKyHl+JM/hbyybDRVlSf//a5+ENhwqEDXrF+
	 89FT1k0tt0pUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 357D0C021A1
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 15:59:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173928959415.26451.11595146884058760308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323fb83b35abe5a4d81323daeb12735e64533c6658c28aa8faed85b19cfcd22d
Date: Tue, 11 Feb 2025 15:59:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739289594

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 831481095B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713838223; cv=none; b=Y8DSnknzVmIiZqgDq8amAZbZrtoLDhu5hnlWVMycR/Y++4To5LCHKS72/vr+Vx018D07pww+oJf5so/QEmu9psZ4H+Rzqy568uyU2YdQlwEhecPyK1tn+RfdDMDgFWOTHY9hBeQy4UU8w7L1TPOOOolkZaiEXiYUvMtfoJQrlCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713838223; c=relaxed/simple;
	bh=4FQv0ksisKIx1P/YeCQo1YA+wGsId3VHlsB9k0RB2x8=;
	h=To:Subject:From:Message-Id:Date; b=EY6lDIIzKW/sb0fRzi4G0BNXqYzWLM9oIGqgQMKm3ANmxXaHgNhkE0aK3Ay2xzwD18bgp56Q5KSziLugRNiiggC8gQo7N/ymPcOtNIeFhw0yfHhLQKIe3Fsgjk2IzRtCRoZvtIP8IJ3S2bJHueqzC5ZHOx0E2+a4k4lc0WdRoXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owj3WiV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owj3WiV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6A6C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713838222;
	bh=4FQv0ksisKIx1P/YeCQo1YA+wGsId3VHlsB9k0RB2x8=;
	h=To:Subject:From:Date:From;
	b=owj3WiV2aULxA9QNZWV8kwSe2uh8PGXL4AvvJ+mxLPCa+8b8LDahiPr4HxoaGO8zK
	 TSoSSVRdDDkLA67XkeMqQ8pILM2e+ni9I908tN49UFG2M94F5SjKahssoaVKQikYD5
	 oX4CtLlr6w/Ujv/smzuOguRLx5Y6VtCXJuhHB8jH9Aslj6ghIhPQL9U0Ur84NdAz//
	 xKFdendDo1kKnNkl06790KRFIEL1pvCNKmV8E8Dl7xV1xHGOLFaogK4ZWfnaGlCLfq
	 TzYvVEf1dnCzuz6RS3ujtZaJcFjDFpSI2gbil830DvwOIKmIfkzzGac6xOnTw251DJ
	 0H+hM+mIRStMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CCFC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 02:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383822277.4538.12367133046511721981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f2394301e39559ba7f38e81f2c85f586d793ea5d2e63f8911988491ca6c7563
Date: Tue, 23 Apr 2024 02:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713838222

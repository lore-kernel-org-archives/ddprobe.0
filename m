Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DD223EA87
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771479294; cv=none; b=d1imEHdTnayW1kT8uvXiwmGkMKg+VlHIRDrelOVnKYr5Bwj9gSVT3UIUrzS5aIuwkffk45dbZ0gZ678RMXd/fi3Sv2KfT23LmMIb7jemJ2gsC5eJLtWKCWsO9T4Oath5FzceRRYwGLN5+NgFmZyRsAsLHJ4VPdlDozi7+DQ1qZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771479294; c=relaxed/simple;
	bh=fIp7s6pz579O9Zw9Ti3NVK/bKL0hjHSkOZGN/zLmONo=;
	h=To:Subject:From:Message-Id:Date; b=Njq9qYsXaievhPUMJyePfiq33Hv36UJo9arF3Apu8Xs3U1WdBdpNcbJUdbkfyFIGPwWuGjB0Yr5IA6KEH6JVxuso7zmHKJb9w8D4pzn7+n+8TAli7FgFW03EmMSF64UpB/pqpQ2Tlugs/2IdpMQs1DkrutxcfMzeRAByEzfYDDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFbOOpsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFbOOpsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6539C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771479293;
	bh=fIp7s6pz579O9Zw9Ti3NVK/bKL0hjHSkOZGN/zLmONo=;
	h=To:Subject:From:Date:From;
	b=nFbOOpsxArROQ10hEgEuIqVluPzknSoJvPumrdOB1yU1/XNYhWHZJ2ND2DwodRiYr
	 Q19cfzIY3vvC8PosFX9/nTEb//yIImXrJuMtfe779wuupO2xjIvriUG2YlNAbvay2m
	 csn3c3TkwVKwb9/ESnRA68+ENSV/N1nnirkcdTQHZXTYscahTozg9wZo+fHWqxnkAf
	 4sh+Fn4JIUF3A+RK5maEaWv47CEmuq21yUVwpcOT7Jw2D3wNenwSJbFLlU5bkFXT1K
	 a8DJ5TsgYm2b3bVdzZf+O0SrnKbx8FACBfCPBBYyczAc4Bnf7kHGcVf2UMx03xXVpE
	 aJxJSltwZ1dvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A0E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177147929358.12981.8004229457104207614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc8c12cd381cc0bfd891445a51b7ed1f4bf0f5d4dc8859a4606376aed9a2a78
Date: Thu, 19 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771479293

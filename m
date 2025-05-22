Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E65270814
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747906194; cv=none; b=PJK7ImkkOcLUg74XqJxiGAcwxI50LoxO1UZfjjQCvK+yCpGawFFTPzmKqNjdXuMqMi4Ci1IjUiAJOPu4nOQidrIAqBy17onwusA6YfDs/0NTdmVozeEIKCmycT6WPKiBpHROSJu7GwlKQPpwkI/I1hbPsGLLFIDjb60btAICd1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747906194; c=relaxed/simple;
	bh=VaFBTkihk6PfvBCDPNxBjIl/ebP7VOhPuSgssCFA1bU=;
	h=To:Subject:From:Message-Id:Date; b=ErhfZd7TVMTTFGni8MaaYKs4nwUiW6VwmclVkLTCjhOAXPuyJkHtKLF3FD/GddWAsWFiJ3x/FpCHpEGUh/efTasvQnrUF9r8s1TuTlulOFbjfeJIIsAYz44Yo+I140RgJSjbl1W4i/tbbJVvGJfSpPiLqr8OkMU6gFjhzBAsSCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK8byAVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK8byAVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98254C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747906193;
	bh=VaFBTkihk6PfvBCDPNxBjIl/ebP7VOhPuSgssCFA1bU=;
	h=To:Subject:From:Date:From;
	b=IK8byAVzWqqgpf5KAnTSEwpe3m/zWXUpFE4pOKhFE/N55mB2OeHepfUJs7u5WGEPL
	 VRpPUMaLrI/dxjoTPElupAqnSnzwXjGW7iAlc4pHrsytqa3v3a7gY65nXZhJz+BXCZ
	 sL5WMY5ZD5rTiflk890zgHiZcasWui/3TMcWj7PWPlrP0CKNsJDfC7tAEkHpEDxjX7
	 Eky6wxd2dcOOXtuB2k6i1I8JArMYvUvU02ApgxRBFVOOVg5M+1R1gDsv/lJlEINbvQ
	 SNvkOtgGMxQi+3/1Rcw3gY84li3GahvM7bdMMozMkiTCanUXt3JGd/iJCPPmfC8zmf
	 MhZPa2VAB0hgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F162C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174790619357.28983.6291833865580096338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf826bd159c94f43ebc326fbe88a2ac8ad0fb3529cf45bdf7d20c462c8e7803d
Date: Thu, 22 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747906193

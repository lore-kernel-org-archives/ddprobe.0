Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3284C1096F
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789949434; cv=none; b=TGCblNu1a1slz2DXOlhsEuTKRNi/0Ej1gq0LWACyljsVTPxRYkcLAxBokyzhqrmEVxleJXR/vtHuXm8btjYTeGT41uiPrCfZ8CTLDZDjwQNPSFbINLdTdmWKgxL8R7j5C06dHi0p/74SfXJfDiPrZ79JfvpB+TFD+8yUyA6s2pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789949434; c=relaxed/simple;
	bh=mhK03ebdQ8g3ZFm3bM0r0fEPfsTWzF/L1zM/nMpeN7Y=;
	h=To:Subject:From:Message-Id:Date; b=Wp0/QUzUC9a0r9Y3FBpcS2LpVKMCoJDUVVMoVjfJyM/10Xivpybw+xRbnhb6+frWbxl2nhp/Cja+aTgAEX5Zao3VjeTAY3JFLXao+LXqyLrGWRu2VsQsGekgrxhzBG+cnNw/HuiwEXTtM+Wiuv4XEUdF52X5VEcpuEUOYHrkSLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaHcuRgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaHcuRgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34AEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789949433;
	bh=mhK03ebdQ8g3ZFm3bM0r0fEPfsTWzF/L1zM/nMpeN7Y=;
	h=To:Subject:From:Date:From;
	b=HaHcuRgIgnTAnhy9EY0Erm9ncnq4l8+cYszKmtSV9t+xxZ2ufmv3oBLHQPI6Ktspj
	 pOHLFir0C4+khXEy8dHvAA9113z70k7fKvq3Xpgq4OOim87KZCzsjiFQpVn+gx2yic
	 n3vUNZzuEgT4/6knuSMsBH4AGnxEi6owS6xlvZdiQ+N9n+tXEobeg2949Ct/4gkmCK
	 J4R7/YnsNLYJ2bRXHTHPme1IL2sdGXkEpe2qjk9RopSNEyg4KF8mDze/jPFir4aBzN
	 1f5Y1WU4ktYfo1/H4XF+ZrzdaC2vAP8Fs3JVG0ItCyH8TS6iqRRI/PfhfvzLZuduxR
	 7tbyOIaOl2KXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF9FC982D8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994943369.6997.5234349665444932008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65960902e30275fc1e48126b1dc038028a81f3199f517a60150288ebb2e8a113
Date: Mon, 21 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789949433

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491EC331EB9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784973034; cv=none; b=IA/Ge7iZ5BG1Y4P7X3KznBPUwrbCXSTIsWP0BR6GQRferrUuw6dUto8mIhgwpQV7j2UeJyM3Rg1bsNRBrsvdJ9hUpjVhq6kNkLHWmeuVcnLTK99BLgvyMw/S2YocnhzGycN9HuS4FmyKCQmttf1Ht/6bK+8NA6AWg7a3QyzZ4BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784973034; c=relaxed/simple;
	bh=VeKton8Lyrbjqj8FAAd47i3vr8U0G9MoRdQJmWLc6TE=;
	h=To:Subject:From:Message-Id:Date; b=NAWj8r3FZT/AHTbMEH0Frzvwl1GlExJeJEFZtnp7o4bNMsoFTtlz2RvwJ61p6m6CZ2hxkTPmGjrJGNg60rfof70beAhJKBWcXjvK5L9wGgm5pQTbxe7t48aeeahnHB46KcuoUZbIb+SH4iwnP/BcNrVRyUiy3Rjym3rWNAZRe7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMJxzZ1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMJxzZ1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01C5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784973033;
	bh=VeKton8Lyrbjqj8FAAd47i3vr8U0G9MoRdQJmWLc6TE=;
	h=To:Subject:From:Date:From;
	b=GMJxzZ1eB1b/LHLmmr09KTtakRiVNVpT2mM03D6fMo5SgrQ6fGiAIIpS1n19wxngD
	 TMQp4Uum2Yiz2mquA65QWoJtsM8x+Gs1T9Qu/vc7LynYUjA4W8klFPUVFEIHSr5tpm
	 IBOr6LpH5yOvcyeYdrOoz5cMK9vz+0zeCawW5+E7lhK29HLSrckcAEJuyayjUH+Nvx
	 Zm9sIg9O5VS1oJCfXS4WRVKlfN6s0Se+Pl/yQX2lORx40LpFrJJPgvpmIQYbvVdakj
	 mQ0dC9aYGCcJvp7fTwtYIOj6etiznQPsCptYIZJ9Gyt9infwCr7bWjuM4GinnbTl+a
	 1/4PMer+IC+Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E5FC531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178497303373.25419.3496925209383313668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eff1d07c353c39de035f162692bf078e31e2ece9339e29e6cb92a5a3e633144
Date: Sat, 25 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784973033

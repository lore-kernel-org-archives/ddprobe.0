Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B3863D891D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792046434; cv=none; b=qZrLrVKW7+LhFTsSkFHXVGEv7KCUfrQ707NKuHA+ysEQOLQFQN4A35/2sl61vjLs3WRfWY8Hw8WS718ZqKp1D2hgnoI/pErSo7Zn7U4WAh742BZR9yi18v59MHh35NVBpsxHxzlNC8iEqVxHfMFY+5/5Xj/S47q37KZSgZo8WRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792046434; c=relaxed/simple;
	bh=hRAePbQ+lilq/M4OFJz5R5HVlO/ahTOja2FTAYDEc1U=;
	h=To:Subject:From:Message-Id:Date; b=hHCGgeX/60qor7hktZfySG8V/OVEXnC2gKK5MT5Hx8uPGdAM/cSQRAsICOyDMPFgVt/gVk2ljD2gHv3gNk9MIC9wffr61Iua7JhA7Pv8TIiTfRm4SzJGywCoexuP9gbg80Fpb52xGthSChreRTt5M5bZMRCKcQntvl6CjYZJElc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+tBm+AH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+tBm+AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D8FC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792046433;
	bh=hRAePbQ+lilq/M4OFJz5R5HVlO/ahTOja2FTAYDEc1U=;
	h=To:Subject:From:Date:From;
	b=g+tBm+AHS2wGUbF8Bmyl+BUL+88Tsds+6mbMuzVyQO7CpN5Zy53amCDEsz/VOBzCm
	 mKEMM9DLKuwsaxCHkLtiU3OujFpaJ+Exom8E4W44q5w2pDVJ2XyuaPmgKmSAxqxQ3H
	 fbOqo26Y9RVlWGDBEKg6NL4VRS7lrvgj/RiV0ga2e3vc4bpNGgrZVC8FFaFL3bYIaM
	 A0OPqSBiP0UXNcU0ED7GrJxDPUk1X/aJnPlH35jgXsJFFvEc/aJFscU1is6L21Enx3
	 A5TkZ134hmI/KRTuT4P9VBbRXEYAYudxcJUIlaSjWNEU7vvtfDFBiOqt+sHPAULXFc
	 P/lCr7OwDFBHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF21CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179204643370.15582.18255617033350023685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55072ad23fb599eaaa6a847bf97afbd4e00524cd4d25b4e00fcac83ab3ea45f3
Date: Thu, 15 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792046433

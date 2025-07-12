Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162E22F5B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752305994; cv=none; b=fqdTul4dt1LnQDMdvM7i66jLycnyCymx1ATHA+nbUnEYPH3V1UPdVQY0Ku5bOmkWOwFRj/j7JTclMOjDvSTPXTskqC1p/EKZ4pl74UFfx8NbPTZKt73C1xnKGJuMfytQZY6Vg4SaLVhHBQquaOwq7huFaiLWPWxxuwO2SRd2ziw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752305994; c=relaxed/simple;
	bh=jGM9pE53EqsfY9TD/dmJ3Xelp762vbLKluGLZ9vZJ2Q=;
	h=To:Subject:From:Message-Id:Date; b=tcZZYzsZfH1VcIbP1X0k5pboSdbpTkhsBGd6/xfzKKXiNHSiDHvC1Lt+kyNpVDaFgwOHXnViL0d0WWpaer4Y8827xvA32W7Xx3wvFMdghHcgk9F9zBqY5lkohtRcmj04lO8FvalklsZIsB7SF88VGsgK6HXiHLTMroKf03rpgSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXRITt3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXRITt3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C5AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752305993;
	bh=jGM9pE53EqsfY9TD/dmJ3Xelp762vbLKluGLZ9vZJ2Q=;
	h=To:Subject:From:Date:From;
	b=YXRITt3Rh38Y6aPwzAcBU2d415nboqYdufldbStfQaxZuFZ7ZqP51S8s7ZBeVydsC
	 xjJjJ0d/1Ct3o1YdC6SDs754W1TYZVeVkROGQnddY9zQeO8lF7nlDSq9mX2rbZNkHV
	 Py9gtzue9cEHhxtur1ZU+AXusxWqWS6LzW0pylCVfKRPPVqkx2ULaNPEBvbyBm46MJ
	 rPpYC75SeZz1Ff8O1i/QXACHR2BrAN53Ii6xAvdl+pp0pydNTQ3J6dgm8YIa1iG+ib
	 NjE0U2yHCYG/ozj23y0zfXDPAayLKKhgkxro3GUZfbyVZA691etP0CIFUIzJs9qmiR
	 2Nbgu1x2Xi/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DC3C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230599357.25977.17468398023520301470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59e0ca6f3d8e39fa0c1a3fcab5bc4f9c7ea455946c69b5de88ac8fead8dabb4
Date: Sat, 12 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752305993

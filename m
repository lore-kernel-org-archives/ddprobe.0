Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505C537106A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782373654; cv=none; b=fTMdDe7+AZ/2ykGh8gia0w378ZI8NlLNJgGtcDmnrhfStAy1v2K7PovrlsDoORoxoumZnmKLlOFlA2DYJ/rlevZDwPLy51N8XOF/jyFOhU9/2KAM613j0yzyEz6w1vvipJJ8/HDQb9ltP7NxLx6D3lq6mbtBlaiyRidPzHMfpvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782373654; c=relaxed/simple;
	bh=iTkaNnnADvBdgR8UBqMsDWH9sMq8eBIxm3fshHNn5ko=;
	h=To:Subject:From:Message-Id:Date; b=E/zXt39WroZxNgvHqzY+AredjiJ3lVcgoGGFimldpR0vck14FV+UFGlH/jcyrSquAaT/FWK3VjBoh9lblyOyn6QeWj/P8DOXbOEP2rj+hn2MlBplZzWM1fVmBTkpxCN94c9SM+1rdauATx5yc1rNMHFGIbh9FXCDWH8cWXoL/bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wbe45ym+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wbe45ym+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC399C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782373653;
	bh=iTkaNnnADvBdgR8UBqMsDWH9sMq8eBIxm3fshHNn5ko=;
	h=To:Subject:From:Date:From;
	b=Wbe45ym+hdzOG/GEvmQt12NqEvTp/P59PEJv7ZBtT3g9PhuP6DfiXnxHruSwN3ff+
	 Rg/xRfyO7xmG2Xs+UV72oeJphqckj4uxaigUJLolwgoENpkW1zVI/Xx4Xjbd6wKjog
	 +FR/5/+US+LOK5nIqPJN0+4Bk08ZGhoBVjE+/U9QMgA3SJQyz1vuCPc3b0OFbe/sqa
	 dW8/cE/t00323Aqc0Opr7XKcxMTwUWNqXwelWOOXc0LhMc1F6yOV/w/sbtJ+MZc/F5
	 Gk6cPqvSg83hjrklWznsd5N0ocGxtIQrjtyu0fBrCw054bYaYITxsQFJelPfme4lw2
	 rdVcXovVi3qaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E17CDE002
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237365373.10515.2032913493125945257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38a7a10c37009906042be371a3b5a6b9072e04490c182ebef03de5f146edf8b
Date: Thu, 25 Jun 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782373653

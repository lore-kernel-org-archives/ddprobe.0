Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB38373C1D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783057716; cv=none; b=LeMYT+Sl/kyGzuBbm88BrUAVv/wTTbUvSdpuUI4yoHc7NhSeyAiOzSpgwiCFGRkKMzZjlE0GHF+wxy4IOJLhW1sRjYFA7zu7FyvCiDAz17eYX5F7ecF5PC5hD15kMqauSLwDGZ0roIcYqgQAEe5kguC/igHDaSyrhm6bhBrDVag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783057716; c=relaxed/simple;
	bh=cJ8Pnq5JV5HX7boutyGuoDk3aE9N5KpfAdZPiHozI8E=;
	h=To:Subject:From:Message-Id:Date; b=dgf+yC9RaREo06bhf+5k7l2r2Kcn4LhHQTEzhj0EO/TrZqIBVHRyqq3NwJoJhKNmyFeNGcKcZS1UiH7xdy/opDEcOBnU8bLSXNjglKwABCssX1gqPZX542/OhBidR/n05p45P5ysA15Kg3kJ34MpnJ72VUULySwcuNCLqCkdaIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPZqob+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPZqob+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB4B5C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783057713;
	bh=cJ8Pnq5JV5HX7boutyGuoDk3aE9N5KpfAdZPiHozI8E=;
	h=To:Subject:From:Date:From;
	b=dPZqob+vPZytvjp57nZxSDozu285lgn2/ooaXZTlZLkrg+wgst7uAx0D7FZJhcrKW
	 OHd+FY4v2TnD4xyo/ovmzgpL2LqlIBvkl5OuirArixlsLiPMHemA8NpUWdCMr/rp19
	 IBqpyNIdBpduuXX12/dQl+3UkM+R6vcyj2mp+8C+LrjS4w8ryH6V0UG9sMuwUZAhn7
	 MBjdmovmMNtWUJ1JdHM9gRGfCtL5r0bV/kFlJhyy5RXP30zhYzxqF7HKXCtxg6193i
	 HY/nQtWNnRjdvcC2DR++46FY/d4zt+2cR4ITiyO0zPw1YLMz8AVizuw/X6ewzIOhW+
	 19uuw8fR9tXpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6FA9C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305771373.30254.13038674948174771467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a677aa217dab84f88e24d645bac93df236c6e7d8c0a59757a4562e2b4bd2ce
Date: Fri, 03 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783057713

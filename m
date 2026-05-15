Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6387634B19F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778853034; cv=none; b=htha8jNZEfpV5HNPI4bo4TmDPBJshpkOho1DtlvsBe1bsV1WLLs+T18jUSqTixzG0o8qEQysHlKUjyr/TsqcQfuzRnfWXJByfqU1Dre2sq/mq603eFbmJASwDyr4vFGtXOEA1yKxsUscR5NWa37Z4wiqhpnB500U0/2OxhR5pgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778853034; c=relaxed/simple;
	bh=9nq53fph021wBW46p0Yj3BaNloMBjBE2j42qwF/aR8M=;
	h=To:Subject:From:Message-Id:Date; b=BQfWckxCiA5t9hJUC188qdv3/rLVu8Wr4a0tFgghvS43ew72wSfrwv4iM+BxuPRkLA77i9leK+uc1B04x5Pk3BZ6rI/wYkhSPST8dQyWMRG2p7SkLJCnkk4KWt53u1rs/uFcUokkm999W5bcGSnAMyNM5dhAH3WGyv51b+mTGpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8jw7TN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8jw7TN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF561C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778853033;
	bh=9nq53fph021wBW46p0Yj3BaNloMBjBE2j42qwF/aR8M=;
	h=To:Subject:From:Date:From;
	b=K8jw7TN68o+mqOCZ7LoVyk/TDI3PIkVOxZ7+snjVhFxW3zf8tETBaRfrzNFpsVxZp
	 9MSAmhyAnnXs0TomqglRyNdh82EUC0E3Qlv47i1vymbhMxb2oGxwxp1b4pAI35cpj7
	 FzfMRHEskWJ4vR3L2cyTySYfINtUteTspuzX8oaer4ntAQ3JL/g9csUVzJ1cV2SleD
	 dGdb51fO3x//2rGGUpuPFzT51nO+TvDZ8D0PGwnQX5xBs12qUrj8QGQASYraFUKT5J
	 DFMk9vmNJzlMDQ33mF+DxSU4k+pe10G6NysJuKk2PVnJNbdnKYACc+IfuH7lBPjm1x
	 TcMidVng6GOtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF558CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885303370.15278.9795574889917536392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1307be11dd2766f08e6940f3d71fa831f0140ffdf18fc0e11611896d3b46b5f4
Date: Fri, 15 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778853033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3BF1F583D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768129434; cv=none; b=VS6wpdpjxZjGSCJpWIAF+Zs/mblwNLmL+qlqxVm8ibHY3Gh9HiTTa7WnGt8uNnu5UIWxGe5qwYKsdxxj6/xHUZB7B+2yvE5/0YFSkUd6ur88aeUTkI9uTEp7vrzxWZBwgQqI0scdVsvAS8obWoaEl1npX22Szln10L1gRkyonZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768129434; c=relaxed/simple;
	bh=+BwCdsSJQIWczyw+D4Q5aucv1pKgy2VQPRTDmAhMTyk=;
	h=To:Subject:From:Message-Id:Date; b=cxYHk+UDABaNcKYtHoH1dNjq2s4x9zB7Fb9QKiM0F4Cv2mfuq5C2nh62atkMLIghKqvblrS5TTggOD0IJfCQ8VhQydp76GmS0mXx3DeqpGHjKYOwi9pC2aaXcx+fspU8q9Gl/jnpaqaD6pI4WQbP34eh3h4cWtIaigRj19MAw+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ds9FMZF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ds9FMZF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAA1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768129433;
	bh=+BwCdsSJQIWczyw+D4Q5aucv1pKgy2VQPRTDmAhMTyk=;
	h=To:Subject:From:Date:From;
	b=Ds9FMZF2pF8uls0LbKu0LOdywJ28tKG72pMxe/a5r8N9HV8FXXJgpDm3UtxCnXRs7
	 MqHiROlhea1CUhy+5JEDOQqdu46/4CY5bC0v+/gXfKx3u+8WSaBBgEFjouTBcNuLnA
	 TijC3cF1JXKeSjwHKI0LixGldBN7nzDx6e8tIDv0Yki66N35qmXnV9tDf05RrfoIa1
	 NUrzq6vQpSH3Ix+rQE2fKTNaveDKf9nsEAoXV4f3s3Wpbv51kwZ7zcNKfdGDQdY33z
	 g0LxZtRTPgTuGDF/ywClsDNVOKI5k1d8cJULi8GF3M2GWAXUhH3wOdksemLhQe27pU
	 z4rNpWnTLNnAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC24D2502F
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176812943357.12724.12286106200618499233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d86250aa7d090fc28ebdbcc6593dab6f566af9d909aa02bbb08a2f398a36293
Date: Sun, 11 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768129433

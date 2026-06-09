Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4382F5313
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781042734; cv=none; b=SGaZA3cdbiwg8HTu4cEmPZ8JADcNEDjNinV8o0jBs3V0MO7ozUehvweSuKKPSNPWl9Y41M7f9mGj6Js9zTtdgKWLU7BcK0ZgzEDPNryokcarHJtK8w80Rs2uMClYq1ixHD+iuQWXnUDKWPeuk6Z1pkPezuIA11RAhAEKG4fNlGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781042734; c=relaxed/simple;
	bh=jUUnlNVfPa43oZg46TaiY37ssOoVcIKNIQsUglR6EX4=;
	h=To:Subject:From:Message-Id:Date; b=UqDXs67Ep5YLRsnXjQDl3P87ipH34pkojOStdikaPWJLHuWXkb3xjvqvguokh5MoyJ3jVfrg+5azmNojQSs3hnsNPChHG41xUGuOK247W66S8tgAyN0TKHgGDUcvV6oSwtJcnwestNj6MQ6CBGylgVGPK3u8dAgT5bSev14qbQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MICvv9sT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MICvv9sT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A8EC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781042733;
	bh=jUUnlNVfPa43oZg46TaiY37ssOoVcIKNIQsUglR6EX4=;
	h=To:Subject:From:Date:From;
	b=MICvv9sTY7EwukeudFTrMEdb5yQ/BN2+Q+fZjW55/kcM1gzdbqyHVt8L43JVnQ3/D
	 Dovu5pP6nPhglJ6S3uT5WBq0mTlVtYQGafkRF6BbxJERGP2D76NqM8ttWWww7FvroG
	 kMOGUYksyheY0jjlSB7nEY/jP6beKD7gfTbAgysvemZG09TxXtuRT7WlEIJrj5m0Lp
	 /xkzdCv6zk1DKb6Y2LwHK8D9N1dSKxNYXkJfY5Xk+jltHp7PVL5zrsaGBuUQD7NlI7
	 x7rGJinT/D2x/kr/DYYoLyiHEVLIei92aqJZQwMPVhWTXpdnCx/BFsHNrEXM98V+Hk
	 3z2BlALk3dAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0630CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 22:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104273368.12381.1488528088479774804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0baf77b7dcd0d444f49ec6a3f88ed106783503e32d93b4096cbab5360225106e
Date: Tue, 09 Jun 2026 22:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781042733

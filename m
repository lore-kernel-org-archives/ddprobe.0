Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4859840D579
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782644914; cv=none; b=NgFmziG9QiDR6CzGmYgz+pq5wVCjKUFVVcXQdeb7O/9kOjvGpn8XOMG1bkd0QxJs0EHPLv80BP4VqtPsB//XXiaqe/NmMUCVjNfhjE4ZQIjpWEriTpvlH6JLdOotWSX3YkUCiMaIIaRHZDpnz+SQ+m1C8VVp+vHznviQN0Q6758=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782644914; c=relaxed/simple;
	bh=GuTC/Q9rWRgv8195K8itMh3Xj2U3tWY4xSfj/Ax7v/s=;
	h=To:Subject:From:Message-Id:Date; b=b1M7qW2wnoBNYhKIxhnMRSweMgMfRcJqW5+ydUxMBZCdpWX6LrL1AnIOi2h7SARlqapicw9aUxtCjyyNUctymMf2mH3KkWighc/qya8wNMLkzTjhoc87ozxC9CTv6lPOWIWnStp3N/yeWIno3Mf15uKIN87qrtMGhpK9IA9hib8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHCtl6yP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHCtl6yP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFB4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782644913;
	bh=GuTC/Q9rWRgv8195K8itMh3Xj2U3tWY4xSfj/Ax7v/s=;
	h=To:Subject:From:Date:From;
	b=MHCtl6yPkAcNurqONVNwyob0p44C/mhKE38sa9wSQKw3YKbPv7XDhFB9lr7ep1Xs+
	 3pXcyn+KF2/3c9Z5AVKUKTlyJ+XfNMG0OANxRQ25LUIlxa9GxEJMeenUjdb9FLC5uC
	 ZUOuxyZG2PWUH6NFUgQZNgskEMJqybmZ3VOMnuGliE7v+38E8VvHOMvQLt8u9Wb8XD
	 7Cg7slybFHYeiSnJ4eX3qzpbL5GyNNTUJkPw5k7DnXPjx1CS1lIlX/dW+oCvqIwb/q
	 y/GVfzQc+/RJGypsDMlPOQdPSu2d/HaP0AiBGWQCSKY9v60NqmL6SUfit+lRz2IVHl
	 lCNsucGpiV3zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC045C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264491369.12418.7329920337896259822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b3546d000a01cd3296219ddc64fc5f86d0066c6b96392fa0d1f2e5d1e6407f
Date: Sun, 28 Jun 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782644913

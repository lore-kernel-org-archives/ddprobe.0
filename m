Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F9817D6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777070854; cv=none; b=S4RBBlbji9ofXS5VB5irEVbX9ZEEULBwKUE6fW5Z/EEmaZ3+MQAbkH0mbJ07OEletyPgOF4d/gQiz0ssA+RH8tsevdCbxLaBa3iXnyKNdZ6ejbaVPPGjp6zl9LiUH2890AU7M/1jc1WCUAWfpNwvvP9he2M6Nr6IWwlPU4SDEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777070854; c=relaxed/simple;
	bh=seyueukhd/tF68HYtu6DpUS5d0XFSOjYSwhbaYTDi/Q=;
	h=To:Subject:From:Message-Id:Date; b=MLpXkMc6o39cMhK3EFEr45qhM2dUAnp87EQdIAcLSwcPvFQ7j+lbhbCIxlpPQ/7sCgqHa9pRyroT1XeNd0iP5rwKyBlDkgJ+CHDY9OtgWahivo5iA+BU+OWcsGPd5PWrvg8CZfZdXk3YICe7Qs1bxwhe1Nx/Mt7GjJKzUzAKKpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btbBmAZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btbBmAZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB0DC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777070853;
	bh=seyueukhd/tF68HYtu6DpUS5d0XFSOjYSwhbaYTDi/Q=;
	h=To:Subject:From:Date:From;
	b=btbBmAZa1bxlytv8OOFaYVzyFCwL07Eb903lrEEf4USkPepraOTCkyJNg9cvulBHn
	 q15ojsOdbIl6feKTDDW6UEseIcZX+kZcORcHqfkver4UVaMTqY/TlPQxuaz2GrXl9I
	 EuNBiWDre+1LURGt3oTAZCPNszb6WwgGik3w1dwHKH+26EOBKl/2a9+iKRWTinFR7t
	 H1Be1JO0PoxkvpI+MY06erQWa56TMoF7ugTcIEPbjWVtPIhM/9eET2ViLWlnrwQQjS
	 kBqvEJkxy9lURjPOJRyWDA1nsx0vMCwLUybEpktbsOBh7/PGeLvMlmyyHKHu9Av+V2
	 EojIKCSRx4+Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF7FF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177707085368.27880.9292894137604439522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d821f76c9c7240cf510607a943ea90b0bdebd725fa56412d2861f4e1f76e6e0e
Date: Fri, 24 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777070853

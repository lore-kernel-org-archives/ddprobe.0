Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17128393DFB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780399474; cv=none; b=n/I1zc+RYj3PPpDy7LQQIOV2Eta/NUyICOhOlD6wsyx25fnnlUfz+QJBqwI7L6qbw6o23eHRieWWw7UHEv5dXrgf+DFUqIQOWRntaXx1W0C9BHE9YIbM2qA1ydJvZ+CcfHNSToIJuFZ8fpuCj4Djftgge321mAvNs2YFfFG1nv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780399474; c=relaxed/simple;
	bh=XSTmbm1Xakr+h6aR912SdM/AVssTaU9J8h3FHG+izKg=;
	h=To:Subject:From:Message-Id:Date; b=JesAsbnMpktz2eJnjOzfpQJ8+Mu509rjlUikWpKYrGwcSNuj9NLmZDJnYHAW+aFFTrrLo2/rYndURoCHf9myKD1+jMcffQ8gR7FyiQwAB+5aqOvYZVubMKCLV7D0onX9k0+ZSYRwSy+4dh6WJEU3xDCtdjA5uXYgGk+IytwD3wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6xt3oL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6xt3oL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B929CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780399473;
	bh=XSTmbm1Xakr+h6aR912SdM/AVssTaU9J8h3FHG+izKg=;
	h=To:Subject:From:Date:From;
	b=X6xt3oL8jPldw6s0m1thmN34d8It8R6cOwFt4lfqY7+/Pa8vxq//FOKE6FD6JtnKm
	 ajSet1qwspht8PP+8EGC6tGqds/WWdW4ItYxe0G2UQyCDeOioVM7yxFdnvuk8n/JCG
	 yOV2+XC0YWYj9/4EAvo5jyHV+LYc0g8SMGpHsz+CJb8ukpKtPPYsLLHCzFK8GG6Yal
	 DwYN91fQGu6f7qD7xC5Qwn/oesoXY5feVCf4IzrBmZJE+WjAiYOVgsQWfs5PEsFjxY
	 e628QtsE+YGxyzYgRgrxAuHMW21ZTiDRI7hBlGFtFP4fmoc3OKH8BEhHmD7T4XcIbC
	 2LQbE76zey6Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DACD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039947368.28167.1813692758627079339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43635144de419f749dd7cc9e4d9b050efe58e96f7ba5580d089efb5d604db502
Date: Tue, 02 Jun 2026 11:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780399473

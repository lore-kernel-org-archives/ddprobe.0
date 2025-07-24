Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F49C1E868
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753331994; cv=none; b=Tj3Uk1qI8uxikQehnLF7OspMrC4KrRNDa2eFeGegemMPNPNnF9FH/S9CQA809UptiD7WnoNITNB1jHs6WJ60QyA/Yzhg5Q8tpQIuWTxlSfAa+36DNRL1pvfaxtD1T++OODsQVfRq6MPkOjfAtA35YZCbmN0fYuW3oow+o+PpCXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753331994; c=relaxed/simple;
	bh=cEtcABmlNfhvrocbiou9OyQ2C8NtRd8tJL5LYAdwLI0=;
	h=To:Subject:From:Message-Id:Date; b=WQ/RLfkL9dt+TerzoNiOjcIxOZkFH1ZkeNcE0p9856C8MSVbKYCQH4hrjRvvOJ/omDakLo85vGwlgMhfUKob3Blz501AH4Q8TQSH4M2iuwRMzcUAuNLwlIvoA1+BmBhnrkpnI7x278YsFrAo2adTMGfDVABHULmHuyOkuugLnLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSAs0+K8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSAs0+K8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADD5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753331993;
	bh=cEtcABmlNfhvrocbiou9OyQ2C8NtRd8tJL5LYAdwLI0=;
	h=To:Subject:From:Date:From;
	b=SSAs0+K8+gIHLDW1BK0RccZhmzPh0155v0seAQN6JlQZJIomiY8ayVt19CmhaU3oX
	 UociKYc2nrHhFakqMVgkLSpDI8VOfCgki8q98gzZNip5IhR+xT/eo43EE9XIZaT3jo
	 4+GQSQkp36aQH8jnD0RYc4hyA69FOVdBWkZBxDNY8mtj1w3o9Hs7aW2bWjWM3mi0dN
	 oZXzC+M3+OS3rcM2fxbJTyeJyMT7dxczm9HNLHWAj9meDwxT2TW81DlNLzo4MsxDEu
	 JEG7b+B8wXYqUEZZPWsdLWsQuGyEyyv7FmixNzK4dbgKKrxBxD25iCYqYFuMrL/+q/
	 C/x0xmBmmhLEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92554C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333199357.28345.3534788486542535954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6d4face42650b524c9174f9745ec10236bcdba279ede7fd5663788a5909b5e
Date: Thu, 24 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753331993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5706436C9ED
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782631714; cv=none; b=NkeIFd/j+GBikcJ5eHw30b0NUfGSL2ZS1zY0wG0maPt06xQqbZnaEcnjK2giGAHPw8f9xnP/NVQXGkUraLMYCax0GFg+hrlJtwK8w0IVf3qGYCrptVO4URID0XLpFR0gbLFQmx3KLfhC8woGGCiTmWDhvh7+pwDuudT/kf/t2T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782631714; c=relaxed/simple;
	bh=Q6Xo8YzWGtgmmLKW/O+F6EBPoFNcFpSKJcO41Tz+sa0=;
	h=To:Subject:From:Message-Id:Date; b=DcnGN2QjjBa3SanKV4bAn24iVuzYuMfq/i0BPYV+Fp7krnRR2IXecF5WlU4mKbChWmex0Qq0r886XaTZX7Lx8myXAoFrXDkzSUnhLt5qZwOFDELihxuGdmHsZ1ODfFtUpx9gQdQdvur+WgxioKFhaDF3KtOJT6pOuQsrtG5Upbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihd6kyYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihd6kyYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB51BC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782631713;
	bh=Q6Xo8YzWGtgmmLKW/O+F6EBPoFNcFpSKJcO41Tz+sa0=;
	h=To:Subject:From:Date:From;
	b=ihd6kyYhhgI/faATsJV8L1WbWMf6w/bUXNbuShHs7InMeBXWhC/L+5DG1VsWhjLRv
	 KRNByyyc32FYeVg3hLx4VinQne3wtbpErNVKLJT0lXcxIuDKfSW7J56UVT2KA7yihD
	 +MKTPI5DrcLsXcRP6NGS2v/zlnp6PJ1l3SJx8y75O6UAajXMIqEX/kij2u1EvGSDku
	 COpo4FZ2VZIrNij+NVXsdpuUXE417F1zdexIIYI5kuLQLm44jsxJCXWZwF25On9bF+
	 8dNsmdvdahOkztdxQ+rs7gcYv43f06+Irx/fgpwckCbFk5EG2dgzQY9vFICOaKlqh6
	 2RnoQQEvZZb2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC467C43602
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178263171369.16033.13478044741298086566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d867eb45ee24871b3997d1345fbe562c77b90718383702a685aba50fd03c75b1
Date: Sun, 28 Jun 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782631713

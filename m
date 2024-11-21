Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A186176AC7
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732226754; cv=none; b=ngMeu9Rpf41y2L/XeSNCxIt2xPNLjTkblQIaD8xs6dmDbKUVJ93zEdgNZXcPOvnTh/vtrZPrqiLKru5BuTza4zv9urHtAMbEPIVTi/QmciIbSJHb0cCEMb1M0a2LOqYen2op0o2rl9UQjBtGTyS0FEgWQM+/mX8pYswQVXKwsdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732226754; c=relaxed/simple;
	bh=pBkzR0h6dCTC8TnGuwukEKp/zSFLwsTSz6LMgy4amjo=;
	h=To:Subject:From:Message-Id:Date; b=lV/3RHfT39jfKGL3ikf7LuwPFmA86rZsqjB7rs6Obr+cynu9ksmnC6m5GgRWLOKMl8hZAKbUG1u+X1wFwLVjx4W2colBrkV4OMSfmQejXb81i3lj0SWqah2mlZqFHcz9GqerUg0A522mlrQed1Cp6tTOOBqWBHbVCnQwv7eMC1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFQXsawb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFQXsawb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C79C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732226753;
	bh=pBkzR0h6dCTC8TnGuwukEKp/zSFLwsTSz6LMgy4amjo=;
	h=To:Subject:From:Date:From;
	b=JFQXsawbVSf4hrAY9jNs4lsYXL5/Sqk9jAwVFeUOm77qFpzCyKvQyHj0eKGzyqn6w
	 ukkDh8n3HKZlimKpCTmexLPOvvYNarlsnCWfblPeASLbtUC20sdJXAmOhTT10DWmcz
	 Mp/pK6asyVjBhBKHVeFrZ6kwF23YqiZMakHh0LISf5qTSG9mKrlBqIzCHUpNk4Qaj8
	 dUGqKghiXtr5Rj5gGPaneeig1Z+El8yRStnBkl4of8jka5Y7/MVrQ8o5zbFw/I5qf+
	 CZA7uGTH1lvPPq4+1QCyhkuXX9W9xx5IOCDGxNcbAzgnhS+ON74cLlxPYdqYHv3D3E
	 Jlfa1X+JDfsXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCE5E64025
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222675364.28132.13901746774025809901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1456f526d34c4ffd1f252ea18a8dabfc1a46215ddf72e53e460451781f0075fa
Date: Thu, 21 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732226753

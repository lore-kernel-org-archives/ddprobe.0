Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2A0292B2E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767821634; cv=none; b=idBpRFQ6svMpi6jumtFNtUA7TnDoONhO4PAgjOCpO3nvkPNkuUOdHSgfqapxOfBWrGURin/notASYT5gHOT2RqKMY612jWaF/UAwBHi1UJ+Xr5JPjPQ/jAaGVemecEWLtCz/FfecZHdIJABkyWT9qmLTdnaraZ16h7mHMh+aVfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767821634; c=relaxed/simple;
	bh=yJqFST/1oMS0fTrJ5wI8tfsGlHsaIrmy+cEFgJFkwmU=;
	h=To:Subject:From:Message-Id:Date; b=FhhbmqoMM8XWgltan/QDfmxLu3c0pTz1KGIH6LnD4BMTf991IX22X3+H2P30mKzJE02IgellMRLHIhM1U81ftIRWpRfxLis/NpLnw4QlEqI8Hg7PGI99Kc8bvfchuscjtkhnKrHr3TVwPinwDbxNyq3pzgQ1eXTmsW4dpw7jgis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQiBBKfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQiBBKfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A325AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767821633;
	bh=yJqFST/1oMS0fTrJ5wI8tfsGlHsaIrmy+cEFgJFkwmU=;
	h=To:Subject:From:Date:From;
	b=eQiBBKfgA6ntYv2UTNYifCJW0lqeNcVHM02prqVcBYCTOrQdi/kDM3Oci1I8B0WSe
	 8Bj71uQ5b+6ulk8QL0+tMWaPBTGaqmDE99HzqOOZW3V7aN4/4enLhLzYf7hMiU9VIj
	 CCbw/j16m4tJpZQwUZGnHPqF+h2g+nbD6czXHQyiPPGGmdKOiT7Zxag2jzayiMTo+L
	 nBtIDazgKebuO+BbA5F7/5avNvGO1R8DeETKKpT+x1Tfh3gX8O9gdTIH7N75rI8InN
	 yX+y8RLxhWznyomlw5PQB32NDd/dlqtNaMrLl8RM38DZ8u25SLsfyQfwahEVoKtj7K
	 iFxfvcUOEa25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D0D0D170
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782163358.3359.17120892099462603105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf8430c869a90ace202f3f42d45f97f10dddaf7e6eeef0dd84f2c1d12b2a63b
Date: Wed, 07 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767821633

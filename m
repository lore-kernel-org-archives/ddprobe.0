Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509C5378D89
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781866594; cv=none; b=DJiVlmlDOnn4smiSgalochncinot/GjoUg6bVpgNv043LQO34wkMr2DIcAiBnfHNeYqXx+5L4avapWW4oVaD7gcTMOzOdEbLb9tBfsCnEtcp5B7SNMH9d14qKtLF9ZGlmRtKbRGFATfoa8mWLAe4a1YevPCtx3jNtuPVqVjJzo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781866594; c=relaxed/simple;
	bh=K0562ehe/JMePIrTPSWz43839iaPQMNvKrvbs2MCLXU=;
	h=To:Subject:From:Message-Id:Date; b=sAZCK41Degl9mtYpKGKcpoV0QtQiBrSeg8hxFiI079Wv/tJVcOZfmKb8WxAi6eJPSx2YcZWbopl/iqRoyFnVJ6+O+HBnwxH3kqGm2E9FyT/3vQd5xYBtlmVSE+KbX90sni9Wf1aL87fr1qOEmXqCzXDhlc+HGjpSfhOOyamVFq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIVaMrMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIVaMrMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F9CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781866593;
	bh=K0562ehe/JMePIrTPSWz43839iaPQMNvKrvbs2MCLXU=;
	h=To:Subject:From:Date:From;
	b=cIVaMrMczYjGcgVz1DODH7U3DrdwEQd20zPyaseBfLVWPloHEKG6SN2o4YdnMu9my
	 OBq898K6w5ak6yrsRxf9tOBPYk6AMafXmqIZohCPjelmKC/BmfD+YVu+9QjeyRB64A
	 nROscfPHgeAfi4ZfcXEkERS+TwlXKgPKt+N1mKaBRHV4IlAvjC/LPrmWbfrUVNrcH1
	 2jsb9uanqyWWZlma4DmCVCfk/8bai7GxS+uSYPvG+u9wbzQdl99pZqzyWYk3oFw191
	 E4bfR5D+LTrEM6ioGHYLkumbXciowR4BIs2oG48WMqzFZxCvookX9ev8f3M206j9uS
	 KbuXFwThmgOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB034CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186659369.10467.11565194780068421582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8b5f5542dfe2b2b95477b37965eb0c858b8c5456b9b2e42f3fffdd2c29aea2
Date: Fri, 19 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781866593

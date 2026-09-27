Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC26175A8D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790529634; cv=none; b=oMS+9dJzr9i/s6QLfO+hPp2WPFdRi1wod2GoWoXacMtgAcG+p4zNIrOVEd/73s0MRZWzxpE6fOgheRmNXTPh2rrasXCtpsoFEInbt2W8fd+vo3pcckFjCcO5E2MQdWLmgwzzWeUTP7Tw2SjdXWUjIuvLIdqy/7Y3MF0WCbZzDhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790529634; c=relaxed/simple;
	bh=GaQws27PqrPQmy9QO02/lx4YtJ4tpOd57IPaN2EK/LY=;
	h=To:Subject:From:Message-Id:Date; b=M+aaYaLt7+tCz36eZuODuAj4s3L4fqUvzZDj9QdssQ5ALxNORCeHB0L2pQojLb2zG057V1NcEPHovxGbW2mMt/mTk0LLOlUrmnN4+CnJZkbx2jSjF3lkuvKbjYp7Sj8oRlaF4jbAfEETtPgj6l073l8x5QaTKnXQmXGpLOE+C0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eko9/zB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eko9/zB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD068C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790529633;
	bh=GaQws27PqrPQmy9QO02/lx4YtJ4tpOd57IPaN2EK/LY=;
	h=To:Subject:From:Date:From;
	b=Eko9/zB+mRXlhZGtGAi6fF/7YlM7QB2Lb++S1Y7JhUQ2WEvm9IE8ojVrmgrKsNq+0
	 ivB7Y6K+ll/QizPOcL3X/HSb5qVu+035U+db/nhjhS0sbvtA3KAn24SFBGEtk6CDww
	 gx3+mrQYvAP2ZaGPQDcsTgCcJM2GwZaEgq70V4vHHCM+eKdh/k+8y8/1SjMxrBBh+a
	 mfnn81UAD195Hrqi+CKVE0XwZ86z4DvTe4BsbF0ccL37eDoZgnaYFVs56aj7wnAU35
	 Z60Sc/GE2Hx+duhsJq4jsTeVAexlaWKX68GrZ9dM9nQ73E8WqS9SiUMuUDHpyYq/vW
	 qnMqj3tVd1sfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B0C98338
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052963369.8755.15681651037070138237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0956609da4d0528ba02d6254af7b7a60f354e6ac5cbd5eccf720ba65ad0176b0
Date: Sun, 27 Sep 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790529633

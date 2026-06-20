Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C861F938
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781930194; cv=none; b=G0zdGahNJCjBPDXRsfGR8zgA9X/jm5g6dwIAhdYG2nuzBn1pRNIYBtU0B+ixjkhLFG+Ae/RotRRnTSqjXyWPJLM+rAK6pWpwg+f5v+x7KDIe1B/OT1D2gZaX3Z/d3fTGLmAGs2xCwlN21cfy0GJ/gW381QnCJ+qSem41GVjCV30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781930194; c=relaxed/simple;
	bh=VU7El5QU4jPQ3NsNEFAqAiNAloxJ9OdIR2T7UHe5Vhs=;
	h=To:Subject:From:Message-Id:Date; b=MXKhTiJ0nBwniterjcLV2dUBEO568Pr+qR8vnHDKqLP0EdwKgUFs4T9EmIInMaLkRYyR8MdoyL6i1PEbzTGMQwVko5gtB8buWjNQkraKYDKA28S+exL2AIM4+YUqe9S45rsTFvMfKOxUUos0IfMKyN70CkpT5wjdJ1GDmJKVZBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYINlAZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYINlAZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A473C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781930194;
	bh=VU7El5QU4jPQ3NsNEFAqAiNAloxJ9OdIR2T7UHe5Vhs=;
	h=To:Subject:From:Date:From;
	b=DYINlAZ0bC+VuPwSaaQiGg9d5FrMsdmW5/cZtiLPaigAZ3I/ERfMNkU9TiEJOJUrn
	 RkiJ0Gj+MjPMVMB3xuBcYRMyHSCmHx3B4EpgzWkIeWRtMKufI6h2vLpJ2Op+J07ROi
	 0fN/kOuQIaE4B/i7/CecPlNxhvCKQo+L2eb/5fSzw23nZdYPnyaYOEQr0g11YVCpfq
	 eEL0NzeXcdu7ggF+ixCRYoHuHCHylv2snDgiKm3T11aDAxhNCA1EFkEFdpwEMuXpeC
	 qCkVMJbU6ljEWGMPMOair5E/6K+G2zRlgYwY7stmUuuitOkW5fSPvFhTy/ETbPlfoI
	 y+9uG/fWerCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8C9FCDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193019387.31765.7271281705398984855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d72784cd9e03b8abc3eed45b8e559274be9f007f7836c8def8fdcff0bbcb844
Date: Sat, 20 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781930193

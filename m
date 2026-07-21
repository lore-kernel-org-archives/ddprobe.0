Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA7C369D63
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784600314; cv=none; b=V5SPqUxhCRrrQxD1qbM72RGCJlQPYpPOHyJTO8bwTMRzGAIzASAe4CovyBcabwYgt0GxNtW3V78UH/BBQ4fqn/w6o9Z8a13M7u70yKgdE/hHNt/ppPQRRSh4W8BsxoFhztMk1E6uqL+Sg6+pk4tSlDATJZwlDae206qnkZZdFGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784600314; c=relaxed/simple;
	bh=YziVL3Yuwq582QCYW1NwQ6IZdCXj4SJfeA12JjL/W0Y=;
	h=To:Subject:From:Message-Id:Date; b=tOUKuMX1nJfdji756TgPEYG1sirczS6J4/7wAxKO+tphZKQAsyLJmYHMvo4e2ZLsGd+obVvTVzaNaCX6Wr5HHYDoUIKB37yxYIKb5p9Xln3A3x+XxOA8uNu4sQkcmpZkR19y3RJZ1FfbdVgLK3OGYVamxz6vyKSSPgVUU1gOF9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAsTAa0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAsTAa0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8F2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784600313;
	bh=YziVL3Yuwq582QCYW1NwQ6IZdCXj4SJfeA12JjL/W0Y=;
	h=To:Subject:From:Date:From;
	b=aAsTAa0DHekHaiyK2RIYwHg77Pj+ybywTaLTm9aj5rqeprzUsSlIfVRtdoEadGp6k
	 m0r8lr7zdqZPnqUuKwPHsg4uLHKrvMshOrYsye0PxVsOWZdpmEUSwFpmQpf8yb3f7A
	 YWl/JzZtzGwKQIH4j89QPYIWKF0scaXe55gjgyahn6f4DGhJK2dMnGxIWmLIXBMgDM
	 23trhAc8ZzitTauXTNOTDN6jv/m/wro6TQp+O1fuchllx/dkWFjw3R32o2QytMx8+I
	 tERaf1Ow/U0qy9IXnPk1WVixux3qffxuSERfgGlaPAyM/GnmoVYGv2pyiKxC+Quw47
	 qeXIgpbm4bH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27ABC44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460031369.25934.8807080278792028301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e4fd5899a45fd2ce23bdf3c87387ae7eb23e692e24a0845592c9e45df90491
Date: Tue, 21 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784600313

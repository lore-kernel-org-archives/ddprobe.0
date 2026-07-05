Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205BB360EF3
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783238314; cv=none; b=sPafSRIzWCXB+yc+fixXYL1rocPpbKw8ED9sT5NGMhrr7H8VUj/dUKSYKVyp5JORTEv+esr6F91YM1MIzHsmnyzFspVQTEpmB7AqWbh87nUsgDeMgMtto61QG1a8aGqItD0U8eVbnhbjB+IPuMdSQ22zB83RZcP8LQbtkwe1F2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783238314; c=relaxed/simple;
	bh=N2T3EZVkLTT1r7YVzA4EsjxCGG7zIxdxcqfPIMHh57U=;
	h=To:Subject:From:Message-Id:Date; b=oHXh/qhZMQ76ZCfMnE22LL5yE5TmfmCaGWefGEPk4UKXKPQGsdb86CVv4fqrPtgxhfdki6xHRm+5stDVXi35SMRnIMLgkIuenxPs7b3OVmBx6rj9ZqpLLtaErtkpWtjdi3RhuhqcT7/zSWMltM7/VFZ9eIPIObXjBrGk77V9zVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+aqScZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+aqScZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95F0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783238313;
	bh=N2T3EZVkLTT1r7YVzA4EsjxCGG7zIxdxcqfPIMHh57U=;
	h=To:Subject:From:Date:From;
	b=Z+aqScZ+rFRwA4gUpJOL9EOAqzgFAmru6BhB66DRqLPKmcaFrXp3/6utcFP7L8dZG
	 ZEzpuCzu3RkD/OQt7YXAbAdCf8FHXj7GoS+cmiir9oOLRBs5k9eVXC1xH2gSnhoI/G
	 Rr1cvmpvPLlE1LT4FGiT5wF8rwAI4rX3Ir8TagDDVbqqT2TOeyweYKM0JIqmSGoejT
	 0gKSLc8WWVjsjx8mVnbvShTTGUMckqgh8mNBSxNCssih9/pCR6J13lTThwxsIE8JZ9
	 E6/hc5JiHK1I/JPo5aaHrxUW685nzT5lKrnsz0Tnd/x8gkutpClNBvUwQhCPRiswlW
	 3IyTpnuKQDJ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8692C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323831368.3572.13081701431176733543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd098db5818c92923bb332dfc9495ddaf4dd08f15c8240a77b7b4042a3441ea1
Date: Sun, 05 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783238313

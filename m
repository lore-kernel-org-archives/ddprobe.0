Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436FC30E85D
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786683034; cv=none; b=P5Y7Ooi7K2742zjOi19D6B0L78rQpgb7d7zWuRpMabbRECstsE7ygmUmoLywZOPwPvwo/BU/frjcRKbRDVOXACtEYuaqasEN2JEngn9APUhTnxGC0kiYH4s4a/cesiQDJAlVW0foE0eQyHbWkyDdL56dD1a6k1oeC6900bjn/P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786683034; c=relaxed/simple;
	bh=jg3KTFq2z8YYuL+L+eJp4TiYYdnb9zCLyq3CcFmVwGE=;
	h=To:Subject:From:Message-Id:Date; b=gUIuKnJZhw5lV5lxUnYJNkLJZOkK/KOfdd0M9dJ50GuRu+w5MUvjvrIMMg+jTEk2Y4o7x34jkOh14MVmoEAcFYyimxgr9XAVmIa+yOaXrj7YHeab2hRanl2TS3vwRnTiDX3UHePuIqf2DTYmxqGAcM/zCbWxXNOqSRJJbF0fzII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfPaICAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfPaICAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8134C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786683033;
	bh=jg3KTFq2z8YYuL+L+eJp4TiYYdnb9zCLyq3CcFmVwGE=;
	h=To:Subject:From:Date:From;
	b=BfPaICApQ5vnfgc0cd04hIlq9kCq1mBdIZaw4gFt/tSLAm2ftV5pyiDIFm3nAABLG
	 1z+LifkZUzNR6gVnf3zL10yteLP0vu8WhCxBF1dDLh4W8cMzpt5dLLJ7OD2UM3GSp2
	 C+ZFuaKNaRYZw3V4CdomN6coPidfmMzpTv/0eeUCFbKN05KCQAGTvYWqL7U6NEv7zc
	 zp3l4uQ2+FC87eZzPVZ9vNYiQxXg/tAar/IxnzOas/WOlNE30CIRO9b31CN7DzhBDP
	 j8t3Ra5+Adt+4eB+zXT9phmIcIkxlQAAXY9lhev/1TNAMb21nOxQoD1Uucy3HV6/zi
	 K+zInBW0X3nBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF574C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668303368.23966.4391754079949264095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db4782846d4e29a41a0abd0bb5eb74f99dd166c517b9e89a07fcc91932ba9c0
Date: Fri, 14 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786683033

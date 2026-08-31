Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8E4340417
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788174034; cv=none; b=b5AAm7RgLAeVw0hoBrEkveWCARKa4zrQoSF3Tr/3fmyXxnlr/Ow9AtIrLJ2PnFef58K9Q6xhDUoy+7ocKWxmHKWtRQ+hVViMc6n8bMF4Qm0z7BjdEY8BYKO9yXhDanGWwT+qrs79GNo2YGkyUgSONF3p+0fyL3X6QIzZ/pKqik8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788174034; c=relaxed/simple;
	bh=HRGYMIZkPo8ltJC+ufmRblo4HrwGD3LlaJT3mGF2C1w=;
	h=To:Subject:From:Message-Id:Date; b=kwsWAqjesd3IPPYoL2h6L9UrxJzx/Ivv+o1fsoqKQTDYxEizloRRoZ3lciN+F3itCT/S+fe1SGlf76RP4qoMJo5uVWHTpPrRNAgiqqx+6SE01kA0OYr3oRVdcZeQ2KDprtGu+rNak116UcKxrmAHxi5eBFNaCBMXpLd5BMSGMes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLQ0Yafg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLQ0Yafg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF41DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788174033;
	bh=HRGYMIZkPo8ltJC+ufmRblo4HrwGD3LlaJT3mGF2C1w=;
	h=To:Subject:From:Date:From;
	b=TLQ0YafghbPwH58UZP3GUnYqE7U5lIuAz1Q9uc1khajTxG5xJ+Xzf6/kOpLrq33hI
	 mDrCUu4Np8AdPxfjvskwmkdHBp4KMReOYG2arDNvs+6ZxKwwaLon1P2PJ06nPjPhcf
	 JeqOY0FPH+X18ngUki/4ztmfbbLJE2Ct5gThUZ0J1irhWNsKitWhz22IBH3jAnCBId
	 tj25vDXBD79A2GOBskBAFmpJ1zUHVQlivc8OcTLkLCYGCbizVjP9yrWnlZXlNA/2Hg
	 nxvaq0+uAfJknBxkzfp4k2ASujVRov3qdvEXe6iA5L6TvW/AQ6F8+Ob5YgsJt+gyJU
	 KRNegBCP1jyeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0C2C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817403368.7815.13461137913733047543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dcf2537f2ebf806ca4c29553b5863df7643b43051ec751aab3d63f4a324504d
Date: Mon, 31 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788174033

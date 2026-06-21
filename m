Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31593238C1A
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782027394; cv=none; b=XwUT9NUsrwjRkhg9WZwadyAPQuYQbsoLHFR1Xq0efxOAtNuheC0o+6RELrBg9vXfwOZTjfs+f5StXoVd5pRyywhYdwRuUu48muULq8+KgnP5BT98wXrXyuNP1IUkmgSVGfHjSo44agr/KBbE4lF5s1LCs8HokdF+OMYsUKejLmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782027394; c=relaxed/simple;
	bh=vgrxySRBScwDYbDjw11EPgKzX1FRCCPHo5uhZoZLaEI=;
	h=To:Subject:From:Message-Id:Date; b=jPYdsmeNH0Aw82vJ/w/6HAA+8sMId5ojkM+7j6aT4MJeIin97vESWqH0vFJ0a/Pat/KmkzpG/Jb6Ljp9jcx+cuRwxg+8Gk7sei1gN50SB7P/D6HSQPryoMi5gjy/3LUtPqo0WY3Che1pwMv5dk4fDtYBbQXgl/jFIpQUv8ZY2dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nW8EwRvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nW8EwRvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAADAC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782027393;
	bh=vgrxySRBScwDYbDjw11EPgKzX1FRCCPHo5uhZoZLaEI=;
	h=To:Subject:From:Date:From;
	b=nW8EwRvWAZ068dwZio0b3xbGnDNBIZ5iRtHTjeGVe9T5QHPv7xJf2Qs3ycLZp1U+A
	 5lnm4IToK9l/lHUamsTaAHXwK4YlreylZswjneMBfJBMSieFe2zKt2pPnUNoQC6Rlf
	 aBOQ+SjROg7W+CDYQRaeevJ708K+rG6AoPaqAhBL1aMuaYCUgSkIFCQSO+OOYaUkfA
	 BJVsjQL3hZrmv939dgsVo+LbtmOXOfFtfHmtZSav8EYIkT9bpofFBiM3yPoRPCTvP4
	 bF0JVRxCXPzK5B46BwTorBbN+o5QJbvJjvDeTifC7SBsKgUWXegzNgv2VtzzbpgPCb
	 eVC1YXGznCYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C09CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202739368.22905.4747556060803591371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c43a16519b7fc2da230a0f9dbb71120d53407b161a5b3852ccd8552ba5aa0e9
Date: Sun, 21 Jun 2026 07:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782027393

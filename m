Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B13140E5F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772688895; cv=none; b=T4i9Gpo90hpnezkJpfG3SxnNfyBamuCuqXRL8KOFAyAoNBhGpWkauLynpUYywSKQzwDo7KhN5Nk5NGGm5qtlcCyQh1aXTPfCKDT92OuMoeLa3VCJP/+FE25G8vl1GQX/dZCu7BT41ksCe/eBz7UKuYiAIUvxOQMdFsgX0zJ0sPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772688895; c=relaxed/simple;
	bh=k6weGO/1YxIlga+oVW5LvRWngAONBWY9sQr+ROJ8Np4=;
	h=To:Subject:From:Message-Id:Date; b=ed6yEZhzrEbaIKuMiu0etUIv+8wA6Rj1Q76VCt/vtxBMpZpYibM5eMVihRpqvSSA597qjn3LvNUJzoIeVUHcQ6K69YFaXaj2p1hiluP8hSHb1Y6nSHi7OOvqkeIgAJ8MBiwuD1L6TVTD3Ddm7UDCoHM+VhJA253HD7NGo0JG3Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGrc8iFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGrc8iFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3098C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772688894;
	bh=k6weGO/1YxIlga+oVW5LvRWngAONBWY9sQr+ROJ8Np4=;
	h=To:Subject:From:Date:From;
	b=nGrc8iFtwOz13KqYvdH5MbCrSgpwzDwjycojbc34aWxdbPO5AODvzbuNOQ+1aIpt+
	 51HhfIr48wGDiTis3b1viJEFmnLOfdx6GkWlYjHT6ZXH5fWlGugoJdIG0v06T3ZVHw
	 wFewFkG6R6+TGUdrSYMx9X+VizMbNXOYduAckreLWkEdW+/TQYip0kcTSQ4es/3Uzn
	 1NWUN3OnI0LHkwCCfr3eQkjQcmD9RoLRzkakuuzBM0KlKPL72gmI04/HsIOGh8AmVQ
	 97rl4yg/fUA4nHeTperqeaB20SKWRsDZwTms9hkqB4NRI9Hc+GUjOwdxY0x+dW6eWg
	 snVK5LAbrsrNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F287EEF301
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268889357.13574.15022116830367714470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6180b48aaa123ebf00e4c8e7ed623e9d732ff9168aa32af09584b027a2433524
Date: Thu, 05 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772688893

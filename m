Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E977D85C5E
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735272954; cv=none; b=HVHRwN3O2n2xgZUtw+a1ZAVsMeUFm7wiMJFJWUNXIPsSzceseuh5gD39TmJAib5hzBysS1a+jooVAni1+5AFiON4NuZj4rVL50gS/vlx/NF/HEdJcIhAg4L3UwQDTw9VwjshwswgcdsuFGglyW3yJyAyroRMF4z+65ENbixE01U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735272954; c=relaxed/simple;
	bh=BqlNGrRBZ22nAB6Exl5RP+FmsOvZSTCrcddw4c3kG40=;
	h=To:Subject:From:Message-Id:Date; b=nyeqrEC0go/tHc/u05RPDbHtP1JzamvPSlFCGzSJEC0nW8P0D1NAUSw1I4CtFWFSjFal/6Y8ZVj3nRk9hq2AiALD4gY61AC4H+S4e4iQPuq42nFuq7HZTKGJvSl5FXnioNn4rvE7BVEbSRe/IYE41xG5gjAQbXvFKVDl5XZYejA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4Iyzwjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4Iyzwjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64C7C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735272953;
	bh=BqlNGrRBZ22nAB6Exl5RP+FmsOvZSTCrcddw4c3kG40=;
	h=To:Subject:From:Date:From;
	b=s4IyzwjkkCCdsBYF1GpEfaCEOVWsdFSHsa6T4nbQ2GMGGCgguBMIps+IPHXzGjOHC
	 VAL75MXiXicDqiF6GOpwMmh1H2r1+gpkIJbzBB1M5jWumjJxzqJhOVtpkTFs9iuPb6
	 ZhBDpgSghxQICD3U40xvng2lwAB+3s5zmDTLzjf/2uwKyxAaSMPY2bk/5VK06XMgYj
	 lXdeDGbGJsSsFyDGC9PtmmEVo28FkbYkDsuHrWg05Rvaa3oxbyOIasyOR/zF+oBubs
	 z4ZoyLmnB/6QvnMJtydTIWkZdLF/GtXDEvK+p/YLT95TGW4x0hLKALvUKvaKf8YDnB
	 VuoyhE5WycmsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5994E7718E
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173527295370.1816.2921045700498850350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0093769b596b0c1a7c0328e8b10bb074c4e5c023046ebf1cc46a1bee4f3428f
Date: Fri, 27 Dec 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735272953

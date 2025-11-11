Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D2A4369A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762836594; cv=none; b=THN/rVX6OcpBbrMjHXYp9d7/4x1TyywxuZ8YKVNP4lRSzAGdCroea7PmuiICiYi1rIRwV736d+aUeWKHV3aka10BuKcUkHX8rTmmaxPyL4G0NWVRi9nVaDJMyIacMXux2N2KuQYk+vwaJw4d54Ludap+IRzGlvSW6YjnrN3pJJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762836594; c=relaxed/simple;
	bh=kxcmdiCaWqSNpx0X8XHUxoZ0MpPVCs1fJlQEat7kb5Y=;
	h=To:Subject:From:Message-Id:Date; b=Ri3fNW5HwQpGNWmz20NM46nsm9kfoNW7dy6DNRqbFfJWkIs0b17I54wNGNFlvvpkLrPoopwZgymdyfHUlp91gUBaNatnB12jS+tEyfmlHqc2X37ki5+75vr1F7vhS/qxMmgHAljeDIVpP68BeOMLBz+oF708LxSHlljaFKXM2NI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS0p/O04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS0p/O04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DA6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762836593;
	bh=kxcmdiCaWqSNpx0X8XHUxoZ0MpPVCs1fJlQEat7kb5Y=;
	h=To:Subject:From:Date:From;
	b=eS0p/O048TjNbbbwIbtP+x5IsO7HgM/fEJDfYX6TAsg8bBgCstqO5qbxkPeK0c3sL
	 WjFo1bfifKzQtGRKikEfNNdsMPxlbg1JPCuZbjZYrSHB+UaH4ni9UdSH31pJwtW01z
	 HyNZCsWpuhvPtxnq1Co5g5aSfexl9eBLV0iP6Z0urxPHE0phHwZJBf7R4kSm3/oyj0
	 nzSpHz/JVlp5momHfogMLRMtYlxis3MRcHDg9xUwYhmJzA+J21aiAODAOa5U5HEgJX
	 pvnWc8zTHLvvAEqZTMYRr29cItg61TIh319f4Ffe5+wtRPZyIIKQ/vLRuQgaDRj9lc
	 irUbbzsRR1gcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95972CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176283659360.6054.14631331886358530340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d619108ad0400006c1d46232e5fb4aab904da59dea245382eae091407e01e99f
Date: Tue, 11 Nov 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762836593

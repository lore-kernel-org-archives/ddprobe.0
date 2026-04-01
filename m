Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26723A63F2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775034934; cv=none; b=NlDw5kYsHD8zuIlRAdTcNmcaOTY2K2FS2H2OddIE57HANbwiGOIH9zdsdKdYhmLPG2KhCgdviCqbHfNdQ/6Pzgs/kR/tWG/BGF1B8+czDm1muiiMZrxgbviGVVi0T3/GQbAIVg/u4dVcjQqYhW/oC18c6dy5CGbQsWG6vZMb9Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775034934; c=relaxed/simple;
	bh=ayUzx+03SUwCQNkVUqPCeRaFQ2y8z+I9eVv0XIQJXh0=;
	h=To:Subject:From:Message-Id:Date; b=sP47qSg/0cnnI+Fcaw/DyJVXk1wuMr31Qq1zOx3K8DQgTPUc5fiGMPGPT+02gImdp4PUDMpM+4gz0QEnSRd3e8n7ChnKKVdZ0jNSA/lBN1xbVoCtzBLO0j9xW5Tr7YBx8UoaaxgUlQfHZ3OplVUPu9ECVvNpxEIHtcQEZag9CRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCgQ1DI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCgQ1DI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB043C2BC9E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775034933;
	bh=ayUzx+03SUwCQNkVUqPCeRaFQ2y8z+I9eVv0XIQJXh0=;
	h=To:Subject:From:Date:From;
	b=SCgQ1DI0I4PbDqZJgwxGRYDjeRuC72uhZI6uxA6LfMq5fhnQTj1LL1Yi2gnpuvAKG
	 SDE+k3qtK+33ia/yWpBF83jt2Irh3xF5c0Dmf7Nv9sCpMZ0QqQZfPlwjtS8XvT7d5w
	 aDQm09lPrGOPob57kFFAguOfyol5nvSSAWCzAAYPCThxx7kgj/Zfii+DqKDggzoEg/
	 h1S2efPBMgG8mimIrfnQOQXjiGu5GUFiXzBdY7KGcS34H8EQWU9EDqtb24K6ZntqAx
	 w6dhmMIpqRT7JxHktdo1LwL6vjyOc3O2GMRKAdLWC2CbXuXrbZpF/zdfA/P73mG4XZ
	 DVIb0MjwVGrcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9070D3515E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503493374.32586.6964905081997876916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c40f282c96e1d6fc64c145aa8ee360d78638622cc76f5c32fcb14cedadca31
Date: Wed, 01 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775034933

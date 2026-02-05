Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DED3BFE25
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770296034; cv=none; b=BNtiZICMC6qOrG8mZgR/md9PsPd4mm8tLBKzAmot/z2izDwbJFejzSlLDrNn46NoV34Ye+FSKdBylaSB10jVXQSjdLd2fDVC6CpwwDYy/65pEt3NcyHzu6O1NzjmnChCpHu52ZRG0i1Ks/neCGLwwvpYjXtxV2VFlbbXjmgY6xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770296034; c=relaxed/simple;
	bh=iwv5nc8sIS6LhMfvrErRgkh0unav0Eh6JzM29/4vFRg=;
	h=To:Subject:From:Message-Id:Date; b=DRSIoj0jUONvIW5BBkQZnybAekgTGFZax9MvWrQWRc+aTmP8NgbFJYW82W3OyamYnhMSoXHuRJdoaUMcTlLn+5vzjLUXFFiht9ZKdPQlWZREVnSc2wCCRlUDS8zkerR08pFx9wOESfTTpg/giePAi4gSbv9Dx6Lhl3O2Ze49AxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eok/zdr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eok/zdr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62B5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770296033;
	bh=iwv5nc8sIS6LhMfvrErRgkh0unav0Eh6JzM29/4vFRg=;
	h=To:Subject:From:Date:From;
	b=Eok/zdr50sG66F3iT+n7bFwZ8CyCiT52OX16Dt6EUglYrKNCyCK4QT1AfzaMDqsCG
	 0iclx1Q4VX+boh9EAvep9P1Gm/uUTfrp7SxYR3GxSh5RU9PjCXUbnbuxTXPi5oWCas
	 pnVqqggEElPQkJ+s8lho0f4XlCkh9puUfhFlzYvBQG645dcpTCQJPzpdAW5fuGZLra
	 oPvKoAiWrowluCwLCUIrpG47UEavkGVeDQ/BaAIIVHKMaXMVYnGrUv3sMyi1YQeSOr
	 8uqhWDKHkq9NZA2PbHFgPG0w2tNQoFunNEyLsym7Or0A9VsqktuicuvwJPtB1718FB
	 0PrB5v0I15Pow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F97BEC1EAF
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029603363.26210.18412928689484365089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddab92f3caaa37f338b7b353067b784fb3bd2d7473d5ecc63db5736fd9a9cadb
Date: Thu, 05 Feb 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770296033

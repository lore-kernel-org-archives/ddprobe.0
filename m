Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D211220F2F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747390194; cv=none; b=uC8EdIwYPPdctYxL5RZxQdQMBGdDTkFqqBVwu9udIr3hTdQlT0aWow4ksEPiAkJFmsVbhXg7iWLvUgJhpp09Nf6P0bhxDe+1mjqVGsHvujJB8yE5OeXvaUd8cudu1bYn9+EEcNl6ch5CjEZnX9wVU4Roq396J//X/ykzKpue23E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747390194; c=relaxed/simple;
	bh=395d9DbVindfmmTEP/EtnwvlL9JmV8CXfjMxEwZcBhc=;
	h=To:Subject:From:Message-Id:Date; b=MCNS+Kf1Kvn0MW3vWwDviJICTxZuTvhMvNsBDhog3jRzk4pTrLTQ2kYOUxhAX/Rzpycexfg+wnsTSTwha0oERCxQPEPuq/chdx3+RjHM3lP8sodAnK7dxbQ/AcQcc0b41dx91azRfClRdRGSTvq/ckPmdlxOQl7Xg/C68TM74iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4vX+qYY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4vX+qYY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6B2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747390193;
	bh=395d9DbVindfmmTEP/EtnwvlL9JmV8CXfjMxEwZcBhc=;
	h=To:Subject:From:Date:From;
	b=O4vX+qYY/eYoDhKQ+IASOxAjcFYJUpiCS/K6mRfjsmKZNEAigTssdxgqUlSJ5Bvdw
	 IxmQjAfZu3iV2rPywNgBfDbE08etdVHxpG0uZZLUebh8NGNYuTuMXZ3WsTyMwtnV/Y
	 JHgzUT04C+3qC45BtcAfwkD75bXtBWq8H72yeldXmFXfj3hbw+Qy/MdvzskefXgtQ6
	 wKTa1/88PcBDi2qafdFoxsmdqstFWYblza95QU2GM/YKW1gCodNubGujqtYbrkH+dq
	 JBdfvu1LuBr+OrEyEHKoABs8+eFD9QXmT2MdC1lvRPFzzPOVyfUQ9JdqH4KwNTDQVp
	 /5wJbkP/jVNvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6494C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739019373.3735.12834029575962862245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f3d8b5e22ce388690be9f5b9ac74a4692cfe5865d6091246ac98b0c4361307
Date: Fri, 16 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747390193

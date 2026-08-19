Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3F292D7DE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787143234; cv=none; b=cHaAVVPfBYa/gKKodMZD4eOocds+9kGt5jupCfGQh+G/OUvIkU0keiXXf1TlwSb6evDLyku0LCFYVst4SP/cK2gZK/4ET4VHCgXJIwtf1OcAT2msphFM3vNG9BEJMzpTZJkzbP8GcJ2l6+5WPOoQ3l6MoG4q5CfPV2/DhjvK/bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787143234; c=relaxed/simple;
	bh=ghW8/iivydo6yA/nH/hS/pHUwR/0pek+NsDoAJBvRRg=;
	h=To:Subject:From:Message-Id:Date; b=c2cYjo3a4QTQOPm84ZWiWdciD7xGmm5fL8SELKyp6hIuXaA8Vy/Wfn4ERzFxx1Y1+TDrbTR9tlKF3PjUC4oR1kPtFWL+t1/Be5wxamRLLT199bOdTtBuPuD7TJn3ssLGLFrzyYj8pBVq/IzbJ9Yh8k6rx5jY+0l/6dOR6sJeuCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdktUBI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdktUBI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0548C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787143233;
	bh=ghW8/iivydo6yA/nH/hS/pHUwR/0pek+NsDoAJBvRRg=;
	h=To:Subject:From:Date:From;
	b=HdktUBI/pQdx+tWkOSEtabqowe283jgFJkn145jU3waJt5y+avMhiWApHJBYQwENR
	 so/nx7TSiVdd0UkAPydmmu4iVZTtx2jWA+UmEsSJ/anlUo9s+cjEVEaNaYLmrBOMMq
	 O0jDtNwzG7Xv2eO/dGfyrtuqsyLRxSeiWHtyowSc9vVRAnu9jFdAEDydnPZL0xbuyX
	 HQ2eNPv0dbIBPdjiXHjHJnPlr+ORn55b3WFhtIT++zio+ol8nlurQF85Hq3dj41L7y
	 Khi/niS9RFpmwkOted3Lem3DdE9Mq3Uak9jwYpbzFOONJDTJBpli8ZMLXDgajnyyVO
	 T3JZXEAU4BqTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45B0C5DF86
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178714323372.29516.2828006260077125034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386fb41255a064dc382ab30adee30a260206522ccb3932a9859b63e12a7cc687
Date: Wed, 19 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787143233

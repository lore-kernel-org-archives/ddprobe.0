Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C6A1474CC
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759269594; cv=none; b=JOpY7dWBMbduPR2/4hx686UUWQWFD+3BLE8gEsV6OiJTX6JBut+xCaR7BQCMSApPWiQUhlPYD2cTmq14QTs+KTXf04jU2iNRIKDR+vtLYxF84kiiZUNVFeHZKG+EbdOJZ4dwdwm1SdSNtpGmlhpJ+0PTQoPKnVRmorWyjpRwK0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759269594; c=relaxed/simple;
	bh=HncRVfY63HqiA6pQeCWM41OGDjGE+NlgEaWAjDXkj+w=;
	h=To:Subject:From:Message-Id:Date; b=uAlYV5/DrAy7fcJU/8OKNZeNFbRBbmelqn/A7OfAKuacotiKr2dPjNEiEsKXkki4ZWkGv/6MmyUtoiZFuBXGYq+4MiDQspPzhcxCLyCm66Pv482NzlwXOyl4cxH4e8bg4y7r0rPiJ51F1yUywZ7bkuGkEmeHc2ubYCK5MT0Z2p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXMOhamD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXMOhamD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C45C113CF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759269593;
	bh=HncRVfY63HqiA6pQeCWM41OGDjGE+NlgEaWAjDXkj+w=;
	h=To:Subject:From:Date:From;
	b=pXMOhamDcUQmFtxgnqTKUyCsMxAVYucQnMqFQ3vnfVQ6I6w2+QMpFks1aIXig7aVw
	 pGJsH8qqo/qSyGvwF+DYkWA5gPWy2l0/h3IUUHoCMnEAk4NTv32+21hdz20sOLyKWp
	 8wKxpO1x2WT9spKeFmczRc3oU2JpiGtMw+o6Uaf0OXp8xXgU41UyS1TfddrLnJAcx7
	 Xu865sWnkbMa2siaPMcRbLY27Mq15JHKRFgvVXeUBqMvjLQllUcMgBnW30kbbt66E8
	 f7fDE6EBWbVv7qcGNe8W5g68U3UoqrDYbEcfsGu/Yn6V/fTuvz6R8KvGl7Zy1ubJBo
	 lmtEURNZFlZGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91711CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926959358.31264.625779695799406086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f229a0698eceb586412d5553f8021ccbedce337c75aef0f4adb980c69b9820
Date: Tue, 30 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759269593

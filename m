Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC985FDA7
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770465234; cv=none; b=ZMB2qdPfAYsa9zbLCvUIvyMR10SpmBwSjKGUq+M0G7IrUxYXFCXmXc45qfZbhZHbzkcDGICHrXPya0PLjd4eeTq+u9BCBgSxPElGHF5CSp7gUXeVreuLdOtBmuvclas2N1Wd0uFntQiSZsd/Tem2GRcr4w3hM3bgcxAhquoLWsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770465234; c=relaxed/simple;
	bh=8k5gXh1zw7pHIP2XFnnu9BQQ1RZAj1AiQ+Yw7MMqrkE=;
	h=To:Subject:From:Message-Id:Date; b=ZynQAZ7UzAMVDJcnhjVHX4i1ud0pbs0FWwkQrmFqFk1f+OMiwR8t+Jj0T9+jaJcxG2e4JfdFH+Ztbh3zEIA9chOrzDvBUSt5+XytlD2MDcMFJqSqconCP6c2pMSPHECT83aVUX+nIIWLht3TwzgN4tqpiNBExWrbCGeFpdcdwh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0JxhUsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0JxhUsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A67C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770465233;
	bh=8k5gXh1zw7pHIP2XFnnu9BQQ1RZAj1AiQ+Yw7MMqrkE=;
	h=To:Subject:From:Date:From;
	b=A0JxhUswXCKJ4IzAahnCTbd0CNMCAtkNjmJPKUPrNLelHSS+g/agH1wE5H3N+mS33
	 61RoUT4jgDt5ljjcMjvnjzfGSBvHNiq+cLaXidZbvOYuOwdVsA/XO54dWLwMkXFOvJ
	 Bxr0WD8aU1KETQ1Jhtrw3m18sfFfmoGO0Ehu0ZH8TD3aM6zFdbrwxGTj/rlCJxgFTW
	 oKZCD7OmRLq1mO6g5Ozurx31+55Twj5G/zImJy5piBmBRACkwzNqvL3DGTA/NSfVzo
	 6gxobhTyZxTSOI2k4y3nnq4yJRuKmWH1Orce7Z5d8w1sCEsuYphTx6JuNs9hEOwgml
	 +x/Etw6Q59WfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F5BEE0ADA
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046523363.576.15926983691725478360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93b429b316292ab908e4b38781adc5877ed1d102027c8b2315e0d0ddf8961cf
Date: Sat, 07 Feb 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770465233

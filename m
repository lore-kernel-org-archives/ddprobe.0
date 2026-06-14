Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A2E35294E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781433994; cv=none; b=lLz4uxIG+Yc/xGKgJiI1ooWNpe2LdFUSOoZPrfQkQpHB/rw4161cZnKWjjcJIxwzU97yn1f4NwutFrgZdA5SKdXMyYUMiTFN2+1f0pGTn7nuYWcg7pxPB246kihlngXeGlgRpp+Rjgz5L2AW0vLRsSNBOPGifdSYi8N3wi+x9h8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781433994; c=relaxed/simple;
	bh=IXerMz5gmj7B1B86JxGjQhZSARB3mMs4/GtzYUTfq6g=;
	h=To:Subject:From:Message-Id:Date; b=aWaydr+9DPiU0QOxTxK67Fe+RSVKIdDbbHpoQNCn/HPWWR5bzAyj4mpmniveVJoSXiL6uNOLGFFzrrrdSvv5KLHbXYdD76C8k3nzCmNkavTDIAJrPV158xhgTeLp9GFDUw64b/Ep5+m7gjISka4+rHo98Z0GMyZTO/rCNwGlYbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byH9N7vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byH9N7vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08C7C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781433993;
	bh=IXerMz5gmj7B1B86JxGjQhZSARB3mMs4/GtzYUTfq6g=;
	h=To:Subject:From:Date:From;
	b=byH9N7vsV9vkJaIDnE/Bas5GUxpv3SDyU3+EMY/uS/Tj9/j6XNjfIrG48LylYzI6u
	 tjWvP744h3PICRTIOc1VuBlptKmenIaRx9z8JXXjjn2NAsmZ4AWFDx/IpZXeNPjaHa
	 kPdXgZUcMtmDm+eA5EN1SYFMpu6diPhxOZYRNXySJodg5HucYbKdZacxXQNt3+1jXl
	 ltK1D8xKc0cH9HtLQgXFLstoZ8unjdv9+7eWdkojWPD8hgJMsMSr3kukxUG7FPDCj/
	 HoM0DV892fz80KrX39nais8Xz3BYxlXl1fl5GTMh9NxWKTaIjDa51ZC2bec4OkBChe
	 E81VQVsbzC4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9BDCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143399369.29310.14861852556586037015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359a542394f175f26f31df74211ac6545a38999d0687fa6777bb696c8ec864f1
Date: Sun, 14 Jun 2026 10:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781433993

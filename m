Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1590D27281D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774807494; cv=none; b=h7EyTNs7GnwqP0bmXt4+MenJOYgN4BKcuNW4AZv63xehwuQzgQAEHyvyu/XqyEljwXO0MncFrBXp8zby8V8Scv2022o6gHePsvCbmY00PbUIbvI3lIxXjq7i3eu2oo+c0vCsN3E7lKvmSAlEmXkpTkMaAUUdSjQszOf2NzZ+MEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774807494; c=relaxed/simple;
	bh=8GStUunozhDnWG557PQ7sWzbAO4HXMSMGX2La2xjVo4=;
	h=To:Subject:From:Message-Id:Date; b=RuNQeP5ERgkctBRR+3LV3bs+y5jOUP6RyTr6gL1nMC9wNaVhepGPdlaY+PDEdLoRAOMFItzDi9TOy/VofeYiJ2+p6t3TvSrv8dCNMmpE878y/S50blLQNozK2qs92k8gV/r5BJB12WS4lKKSMrMAJ9oxKNBbVWfCbk1uGQnLZKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkBcRxeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkBcRxeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E49C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774807493;
	bh=8GStUunozhDnWG557PQ7sWzbAO4HXMSMGX2La2xjVo4=;
	h=To:Subject:From:Date:From;
	b=HkBcRxeI9kG342/t6NVAV4OImPIfOyeIgeOsj3pPMBe5SxmvEFXKMRMy7JoxeU2D8
	 xI9WHysiRhQPlTzkJnoFFN6xPkZoyuXY2rpQUHq7ia+b0o9peNO35Hbdl9MIKEof5g
	 DkObQYOa+yygTTSh5pqE1734ZDdIexx+nqQRkxzJRtpw0uH30xKRkU5bo/Ag7Q8KVo
	 GfTO1j67XLx4F/Cr0pFOZePrN/NWTkvCPEMWXI4eTPizCXFOj2jqdN+BLCcIudx3k8
	 VWCRpFXOM4Yw3s5YgkpND7tvT6QHOeYDHFaOgJmQ0jGFlF1t3m02LFpa7yt+I6ztdJ
	 z9WtkvnAS6y6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93575F3D60E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480749359.20938.8173177355427513494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba04b31c5857a65883e48ad44c143295c9d952e266f92fad3b55958c48debcaa
Date: Sun, 29 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774807493

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2D62F617C
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758578995; cv=none; b=KID4i5ggBSZDo8KfeTgJIH8JSFRZ2yHEhyvusUvbP1G0FVXoHr5ndqSCxPxfFbQwWqf3fKQkBFe8u+Xu1o4uSmmSnUNXkvCck0h0AP79Mjjc+20X9Ng3+gzx1DFSrx0e1wsGCGyBFW48uVznOkP2XHIkTZfTablZWxPMGLC3JeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758578995; c=relaxed/simple;
	bh=qON8v/r0GAksfTXvQfUG5VGSseweW2dBWdHPd7Py+x0=;
	h=To:Subject:From:Message-Id:Date; b=huSLnSr7iho+tLcd53zIsWaWcyh+ai+pLtwOE6UqAhGIceGIoag7bAuEDT918DB2unWkGhEEyekUut92rjXD8g48YLlRz99tr02JTzIMoveViqGIgDke6ZPvzhZAS7amBuJoGF/AWrEZlI9bgkGIaMVg2xIw0yHrEszDItxnyVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLSMkSWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLSMkSWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C2C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758578993;
	bh=qON8v/r0GAksfTXvQfUG5VGSseweW2dBWdHPd7Py+x0=;
	h=To:Subject:From:Date:From;
	b=dLSMkSWuNL2+FpXfe0MHZKaVHcAc98DIRLn4U8Y68OVVjZIlt6kf1HZsG+/em5Oqa
	 BSHufgxR25tSNrrTTyIdjhpQnhLwOWRjhYbHyIhLBv/P4N+Rl7Rj5syu3VYaHZbTeu
	 qamEgB3M5OEL+Qc2v/gjeiiH4Czg2qX2Q7aqzS/8nPYCjHO2zUtTkCyxa28twyLthm
	 So1m1+SInj5KzenMA1MKJJ0ut0fHmj6c0IcV3a+zk5rvT/a48wMof0s0bY7jS0Pwwv
	 ydKopqdGDJDIL30TyPn8Lurj6TTWZ8AcjAiy0izRGCvR02bd+RQC4ULCdU0iIucRhG
	 8UzAubA2gZlaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E65DCA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857899357.14324.1363742335702658069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaab3d28e276bbb01f5acb958430b156d92b03c45397c86adb1b218e7497c9c
Date: Mon, 22 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758578993

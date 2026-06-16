Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B7B14F70
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781568394; cv=none; b=Ipg63CkuAPTTFxkSMBemadaENbBQ2cbcgevwHXHsfpLAuDkZvO0eJX4id+mb5uz+6P36aW4NCGDo/cQrqTPHZjx7lhG7e7wVRZJm+bIChZ8elK9edoZaBQa645BBlBjkh0YAFT9f50ch1ayiEj4hWy1MQIFNGIa48F6ENb80skQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781568394; c=relaxed/simple;
	bh=RjYmu9FkxmJauHIAJgu2TrAE3VzEe8yvdBScAqyioSI=;
	h=To:Subject:From:Message-Id:Date; b=BNsoUsPQgBpC0gtbkFZikViFrlC0U323v+aEfWv3jYWqHo510VoC6sKDlA2LUlvYY5NluSFLab3o1Dz2x3p2ygCgf7g6zolaxioiUnumkO/CGf9xRwuFo9aG8m9sFSgDvEGM0RJrVWe3l/Lk770Ymh80d+ziEXzaqysFBWg7jCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFI5VClr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFI5VClr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3928C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781568393;
	bh=RjYmu9FkxmJauHIAJgu2TrAE3VzEe8yvdBScAqyioSI=;
	h=To:Subject:From:Date:From;
	b=kFI5VClrU4I8swFSvMZYSr/a1aaPNeb95s9ye2EWmRTkN5L+B7sA6j2FqvyebePPQ
	 wCJFajf3B8aHfIMEJlauyI8KUGiHugKaCFNww2I8oewKR3ix8QZCyUav43POmtfSMS
	 LHt9+QhjDTiBGh/a2/SJtfDx3kULvhpaJ11nR1X0Xyg/PcNzC763bfUKf6kHPQ4NCC
	 09/pvETW7DRbqfvoI/8ikPf5lBK/93mBfOKdHN7bSkJ84OZ3V0noI9koI/eTjtPQtw
	 z857oXM4H4Wva3CXE+MdNaxE7D+aZ5LAHt1BoeVqNALQ7uN2jYwMmmnVtskPk6baXk
	 57cIV1gLR5rLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D90CD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156839376.18895.2224989425692832798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96edef5efceaea088dc8c1dbb2708a23098303f50929c003606edd83808a93ae
Date: Tue, 16 Jun 2026 00:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781568393

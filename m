Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5191D193064
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718364503; cv=none; b=GfACXjCA+Dv037rxC+xgyiKjRnH5yLWztdjqBqQPr8w1+T1AGXtBnVi96mLevF/U50JdzmHqX8bzN1bgExP7mIqtQN3i628OJnbo3/LBGzJrPkOKIEs4qOsN3x7wNTFpU6gAfPqeWIVFMoL2fEuAbrmM16kS4hVIZqWR82zCkA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718364503; c=relaxed/simple;
	bh=2kI+WaVuPWRvnHk6eQErYS0V/Y7YUTs4KddZTb/OBOg=;
	h=To:Subject:From:Message-Id:Date; b=KBybDEy0mUthhzWTAQjH+dApNtMiC6XWtVnNwKa4kE16S4dxe5E1ZCvUrn7MS1hdsq598JrjWpHi2BELXOZwLScXbM2xUfzLe4sORw86/bqymNEGG2nENEhgWxry/+R/1Kq39sxddS6oDPV9mRQUBQNrkdA837dOlHAWdNuA+aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUTlsokT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUTlsokT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBADDC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718364502;
	bh=2kI+WaVuPWRvnHk6eQErYS0V/Y7YUTs4KddZTb/OBOg=;
	h=To:Subject:From:Date:From;
	b=UUTlsokTf3mFal1joLB8LfSsUddLSaBGA3Dt4bhPtcuCEX++a0TOoR5irq9fgjnGv
	 mduAI7QJMN0McQp3xLaRyztcwTuvdtU5Ery82wQyvSjGiMgxzp3E/ZZhNpDHe9P7LX
	 b9f4xampPBqR45FnkrRWF0Yt1l2CD10WicjJd6iXHwZYeSFg7yBSsdfFI5zw5yI54b
	 9X4mdsVZkTQ+DLUnN1d2QT32l+ukqbgrJ+5bhlx4OwLO1ZPvJ7Fui1fIaFuFQjht9L
	 5pc4Wr905kteYuqaII8bTanbG6RaQyiHhAGv+pe4DCvuRkS1e10g3udEzJGj/MMDtS
	 X2m597DzhPSuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF466C27C75
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836450277.28501.16228216848752091536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852b218e72e9e26543d095bbc710df45b0939bf3f0b2e677f526464d926ecd31
Date: Fri, 14 Jun 2024 11:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718364502

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA85148FE8
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734595554; cv=none; b=Vm7z9e3Wfxo/BRSPwRQ0s8H3IKArX7+A7r2epFJpbrOM+hUwxURai1VZ9xlIo7wXpoXKvx41bxiFvtgPmMRF9nAPPV0lAXszvTbLwj8gSfpRM+K4ObTyeJu2GJysbFabnKaE1I6BxMokK+TE4ygDmvkViWThL1utdng+bwHR8/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734595554; c=relaxed/simple;
	bh=gUr7elJYn/h1Jl+Fs97l54Mxrv9xr8uAmmITkT9czQY=;
	h=To:Subject:From:Message-Id:Date; b=MrS+YD7XRA7xxWqNmWnIu/sBJQHgn0E7ezSp4ggJpZUYadfdObZaoiUyqk/6NIrmAjf7jAlmtpslzPYvOwgQCH4LXtjOe5bc6X/5ehp1hO//DxnowpSryrgs6NkTp3gYiB5c10g0L2JaJ+GPQXaqe1W1Zm37gjkYhq+CmQ90Tcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBHNpPDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBHNpPDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58BCC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734595553;
	bh=gUr7elJYn/h1Jl+Fs97l54Mxrv9xr8uAmmITkT9czQY=;
	h=To:Subject:From:Date:From;
	b=qBHNpPDjtmbj433YvxPWR3Ljydm0RlT9amYhCBMwb/DkjPUvC9kQVCJvDVWANQoAJ
	 RqIPD64URU1eNEZgCnZ0Ua4yCFqiA3l/QOzhx++RsEoRULGQjmU2yOynxET3kjtOGA
	 PZ74reUkICAj7onFIzNcdgaRv5j2i9SMYSybdSMZ+jXSNLNmAjFvtxrgX5UkWbqOSs
	 enAWL7ym2SGo1ZFKN9GQWDlHZl4dAFovBMXAoXs30W6Nh2Mu0SpwW6n7fRstFcYUlq
	 iNyQyIKPgIy5TgEznEA6akEUY4ADAk/XJgo4D6qZcw51nZltOS6QzjicOw0zvLgMmc
	 eiuAcnEvppV5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9006CE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459555358.15243.16975208379879529696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7495dbddbe38e02658e31809344a4bd55e5e9e75cb53647078b6e659882d1c
Date: Thu, 19 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734595553

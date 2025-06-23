Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263597263F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750688994; cv=none; b=Ydb2g4glUCas68WD0utSYWZ7hmrWHknBr6aFHpLPLfKq97vSznoQVmEmQl5JPm4byv+UuI07f5+35NaIF6vTHOlmCvwWKF+VT2SA852ldnVIx2vfsEQSCaJlNibd4Pg0ihKKMIRY7ehcZcBhbXCTibeUvhWk2/l0/vV7kQFL0qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750688994; c=relaxed/simple;
	bh=vIDDF9BRP176bRysvy2tZT4llmldTGn7xH4OFvjBpCU=;
	h=To:Subject:From:Message-Id:Date; b=lSbsadQsMej+BWesmOax5fJO/UrhrTwVk+dzCcFCMWl+uEe8UDlN5Kq7GvwLKLjp8RQ/vnYI7BaWIm6MSnb7llemoM6LMHgbgmhk1GdfOOAZpCp4h7e12KwkYhT7N+8VQwFx9NM818TAYSHoYJYSMIKMUcTH2wZtiDV/KRWmRHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBMLCjPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBMLCjPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D690C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750688993;
	bh=vIDDF9BRP176bRysvy2tZT4llmldTGn7xH4OFvjBpCU=;
	h=To:Subject:From:Date:From;
	b=UBMLCjPiC5EC2afkXJ9AvmnOQDyTzTnneqGnon6bNbS/xh95BG7VTyjuY3g2uo4kt
	 8v8mvLxpQ6KQFqENfeWxPj0ecVrrhR4Q9b/9VISvcOE4x7U8D0MIz4yvVrZl7qBrKY
	 AUkZQOWrMXlDXyvEZCIzLGAluqlGenL2DRFMa/icBCDYf1UPFcT8+Klt1SUOzXn7gp
	 tBtPHShUD5B9Tz2DtJubsxsBjHrbkrgS8xxCbU74MuWDrS5PUzxDivkpwdbpiYR4LX
	 OUJATwQKRnfKRZQHe9ON9tgrDMgHMv9/1ktTXVsXW9WfKZusxdrbOAxXM6FsMpR6f0
	 40Lfv/f+1ZQTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC77C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068899357.32047.7434626943726330430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9a1f0ea94b7e1f8206e6f08382825f8c12dbd4d4a084bb5a584963600e4c44
Date: Mon, 23 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750688993

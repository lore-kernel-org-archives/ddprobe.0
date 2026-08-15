Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F32376A0C
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786782634; cv=none; b=FJ9GkMrrjeJITcmLNsAcHZSqy+qkouv2gTYYKHnLJbJvOHsuewhjv11owEL0svJg2aPbiMp6rlqB2IEx1UHWryjl5Ncms/X21l9rD/zBcc/5IhfcTCzeYkusG9dRHixIKQP5r4dmGLDlz6p9EVLDyfO6P4dFDke7Pdjd2RDpcuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786782634; c=relaxed/simple;
	bh=nBo2S+k2t08QWrWIYB7eaHPz5dqNBL1mETQdRxz5W8U=;
	h=To:Subject:From:Message-Id:Date; b=mVMKuWEAP6XvMBEwrfh260OoekLoxPwUqWSmdV68uB2VikpRRrT5AiMo37NRI2JxDGAtPmmTnd9xo3tLkgQAr9CDwqBrvKVM8FgRNb/5da/Y52Q7WNvgSfIPVtdzUnJlrY4hGk2TcwEeM8EHA/rq6nIkNwluQeOLG4qLpVMuW0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvP1DHOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvP1DHOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DBFC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786782633;
	bh=nBo2S+k2t08QWrWIYB7eaHPz5dqNBL1mETQdRxz5W8U=;
	h=To:Subject:From:Date:From;
	b=XvP1DHOMAhem6LWUeHfXQ1QHQ/6i9iWTny/WPw8I/El3jISl5tflGe0FgoORtx5dr
	 Co7F0652AdRICuWtIlEHeIKf6rdh26M+Cut51j29qYEOsiEvKz3PNM3/ZoPm3+Mp4S
	 Ru4uSic5g2BY8jGmTppcGWdHHN4+yThJpihyIjjDdMdIFKSpU0PvJVnyA6W7UaXqdK
	 WEIVNKvOk2qlomHJlAQIzwAKeCHMfBKxeZBzsEW3c6pXv3But7tiTjzYwJ4pjxc3uO
	 w+JumWcaIKUPxzEAzRe5FUjIoHJ/ggKn7yuzU4HQ1H+x7hl+YPl/vsWJBDm6n4gqMg
	 BUuEX8OOrQUxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01D0C5CFDB
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178678263368.5735.12808839053886509140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a509984b3e8a09b57627fb21c0c39c5160e8c1f50331ac656a409feaa6131e51
Date: Sat, 15 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786782633

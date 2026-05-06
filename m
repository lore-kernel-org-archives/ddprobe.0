Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CC814B08A
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778034454; cv=none; b=ljPWSyfXLEquaYHk3ptGnKZVMMh79fUhJmiRwHH6w1DbSi/2DYToWHMvxtI+D0TYB6ADOMsEJhHaEsZGcibdX3BFRTPwF1lpMvMWAKqGPkhPb85FAkc6FCq+UvECdzsh45cE3xDaB8sBV+giLSo5220bAC1H7/INw81EZwcCLJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778034454; c=relaxed/simple;
	bh=J8gZ374jBPGqclVYWp0w6Yqw0h+jiS4Gdy13ZQMjHa4=;
	h=To:Subject:From:Message-Id:Date; b=YUP1Asv8I5yhkCzJWeZ4EzoS6VJMBCAJmEZqgrcZClzEetOSeflNsAzUzevgaCl74vAPDxrlMiIFim3qreLqOUUqDjU3T+mOlwhO+NNOEXI/rX1BxW9H+vCJFqiDZLF1DDvgp4PoJS3ii1Cm6mJ3CUq4Woqj1ovYfn2OZdWlc2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9fCBlmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9fCBlmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF38C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778034453;
	bh=J8gZ374jBPGqclVYWp0w6Yqw0h+jiS4Gdy13ZQMjHa4=;
	h=To:Subject:From:Date:From;
	b=i9fCBlmCXRQpC1+D5pZ/YkKw/7fYhA9c/4pAQkRabQT19kV2BN376lFLDejuRoPS5
	 jbi6AQHY45Lt6kWcZv+zMGkBlGYGqBRxuCbmXqwNULaet5yYxsOQJ/gyXDncOycXOo
	 WoCFxwrcXgILh7p67cZLvjS0nYEhY2PpefWIJgYHkDw7SC3wbXhZbwJFULk+SAFNLI
	 Dx0oS74V0KhJEVaG4fq38CuSimp3Udwpgclxg7SNPt+MGHtD6waG618s5GFMUjhS88
	 eaGe2GCI9IzqpIiRnkz1uJWgnywa12j2qjzxSfMMLhS/dOeWp0XN+dVdY434oguLH1
	 dXHZ76EAq3McA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6456CD3427
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803445370.30087.6827122892353034705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9334f3e9f77b87b8b213b4778a2a7db4faf2b400e7c02f2a920e67d281eba66e
Date: Wed, 06 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778034453

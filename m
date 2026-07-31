Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF4F3A8722
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785483034; cv=none; b=r6tsBC4YOhe0iKurzCLF5R0NFWFxAbVuyNpnFs8RU7rN9crwr9KOYvF7OSt7nnjT6NfHAdb4pBOCjw32TrnAi8GyL0Wg47w0FY1q8z2n/qBJ6xFNLLrm60ovvh+rE/6AS+UZcmnjNnlxEeixgytZd78Yw4Onqqj9V2JT7MFll+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785483034; c=relaxed/simple;
	bh=iijV0kCIAUVB4ysFh4AuLz7rA2IG68WWH52QM0TtoIA=;
	h=To:Subject:From:Message-Id:Date; b=o5ptIgd6nWR9iwT1G0d7vQ9xR3fnSvcvO2gmzkbw8Pk/V4spUgm2A+mvyiGTo8zv3lUGUaTDBD4qzDa88qNJYTsllaGrYIZDC7qTRFPSpxyFXg75tK019Q9zt0M7wNy27vpazOMd1xsVFyTclVOGh+v1jGT0ID9yDzz05e1XnSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srPKYo9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srPKYo9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8361C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785483033;
	bh=iijV0kCIAUVB4ysFh4AuLz7rA2IG68WWH52QM0TtoIA=;
	h=To:Subject:From:Date:From;
	b=srPKYo9A6IocSwexiSjIg7wciUeHRWs1QFo5R/PPYLN78KZZhB726g57flVBGyvzd
	 INLfhClwJF8i2Ft0f4XrgtjHhVilfgJrwaM1m1GPc3XFXY8sP0IptR1CyHRKdeTsNJ
	 3Qr0IZsf0Ag9zANVqX8OiVcYd6VWRwEsY7MCfb/2VJR8ARkOHvS5fI65YiGV/8TGiQ
	 g7ENaSmaXNB/OyRWyvx9fWDDnBLU2ON3rJ/C71owQ77/pQdiR7Bhxb+LNY5oQkFEOb
	 iyfuhOCKoxJgbYwqPnbdIpdk/DNijbQg4w6Uo5gI2PkMdssShBL3q4cnVMR0rqSkMs
	 KZn0DW9gm13QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA75CC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548303375.27474.2730013950407032800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63296c9b5c7187d8190648c69cf8c576fb44810a2e3e64f391b190cf529451dc
Date: Fri, 31 Jul 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785483033

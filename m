Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA521E7C23
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752401394; cv=none; b=njrCQt5Tu+TX0lzxMKZkjdx3DYwyOPjuCARu7+zg2vkN5vHbNTJC/Hk2PAZ20tGOlKJLpOwxUm6QPEnuYsEs9paUmfJEpazNRF9/fWlA3xtmsyHTTRJhiK7d1pWXFDilbyiR4SMUUcw0s0WhMjawps2phyqHtviDvmp9MMgh4G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752401394; c=relaxed/simple;
	bh=NIz3BolDPcatn+VavdU5IjZyflv3uEtSm+jzn80oZkg=;
	h=To:Subject:From:Message-Id:Date; b=BOA8qFHqiXr/XfCDoXi4kiWWAHnGAJunN8ADxcsjfH+yWg0a4sUF8p+VConFyoAt95IAr668BcKmwZ7gB85iJxDRMOqryQCUsGdi/R7mz3jLFvvDsziB5okIdIEBbDfV+Hi2zyr6v8VQRB8ytHbmV88IA1QF/NzHBaT4E1xPiYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjlisQe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjlisQe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5763C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752401393;
	bh=NIz3BolDPcatn+VavdU5IjZyflv3uEtSm+jzn80oZkg=;
	h=To:Subject:From:Date:From;
	b=pjlisQe8IAkmFBzgPk0ojOjhGnqZ8H/BUX6lqi2MzAjU60JhlxSDqu1ElCFhHfWIN
	 RpovQqz4X2Veod31xrynSC4gMdHiGrQsQoDU8aEygGrrpY4jUiVWyj+FxLO7lBPfAC
	 7MgCmyW5HELNmEPQ4PxnlgNQ2cUZgpKpVABBg7MML94DEvbnMvd2/KsU1BXCgyqOje
	 8sTruzwFMq4CpG+HhU2h5nFpmd5ypQ9qyWEPPQsa5a+QRdO6mcSep8ac74fH/AsNJx
	 XUyvunLUKj6xsUPmO7gDMYHwXK6xFNPNffPzR8zplPxaoj5YVQqY8alz8YUosWuzJf
	 MOxIQuMQskVuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936BAC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240139357.30781.4081203387851588694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2a33a0c4667ddb17c42afd2d799e4aa701d726b40f16b32f7aba8d7fedb39d
Date: Sun, 13 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752401393

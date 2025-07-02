Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F28719AD89
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751455194; cv=none; b=shBOXD4B+1j5+pEDnRPQ4qJz/aS3hgL5rI/5e5GlWLYJNb44L4Nua4LgATuPvpX3yl1Ljoy4z8om5FW85J4iMfRg2a1WsfYR/7rXfvJg8OddxzUiETJjfmJlGgMoT9Kjtow64E3fy2Z1Cyg743gOO0lPCoYmEJTQbjZg4aYDTAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751455194; c=relaxed/simple;
	bh=Fk73w9LT9HugFGW18qAEL+4IUxD0TmIW+drQakiPwB0=;
	h=To:Subject:From:Message-Id:Date; b=bDgsiSMZVeLrzR2Ze5w6ud61uvd25RoVvYQRqJKoq/M0FKu27zZ7ZxU6pG+2ZwJjxUQoN4CwXCdbIVRL+D3VHiXpiTh6Om9WAkX9LiCgK4tMIszFR40YIsHyFg8wwJdbOkyviAoudwNUJYfn3MJl4BBK2QU5oDkReeKGec3uI8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ilk15pSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ilk15pSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F51CC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751455193;
	bh=Fk73w9LT9HugFGW18qAEL+4IUxD0TmIW+drQakiPwB0=;
	h=To:Subject:From:Date:From;
	b=Ilk15pSMKc+DS7V5xbqkX+Ql3u2Ei5oWxD6rpC8leHhhDaax5a9QWc239tSozFVvL
	 9Th2UWPtgHkC0tm5eC4cyjiKxqUB7gcA47xExihR6chr0F8QCe+BmEXS3iFt61nDkU
	 M5zWRdp8xU3CLzLPY7suFxxbX5qxaZ0cxIB1/SbVhtX8YEDhtTKRYDSZmYyn4obLt5
	 89Vhz3fy7zxP7aZ2XhJcUb18doVC3sI/EQghuN2EEFMbZyfX2jUftgWfLfnQHbSchh
	 Br/RhwoKJv9oacxNhYCzv9hPyzBFFEDLHi91jS3lp3vu1dIwJzP/LBu5U2iVhvx5bO
	 Z0+n9RD022sqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEDC8303C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145519357.9017.14764541048057151819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c6470f300af388f75314e5f7423e32ddc7692f965dce4ee19215b47c2e44872
Date: Wed, 02 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751455193

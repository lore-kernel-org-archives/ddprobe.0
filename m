Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B1AA55
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734224754; cv=none; b=AkSZSb3lDGzRkaD2NXhcdVs7PVcPeYEHjRN7Y/Bny9/15HC5ScU7ePPWFSeqjLcvKF2dxxJNR3T+RRVSFfKd0515BcUI4Jl/bh0AOUAECzfIHMKxTK0x+IAl74LzyltbJoAVElbcd0nbXou8792wtkX8FzkQShaDVv721YPzvX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734224754; c=relaxed/simple;
	bh=SSTXpwh3U+BS0VgYSXavOik0NZPzkK30nzDwBbllOvM=;
	h=To:Subject:From:Message-Id:Date; b=kT8QPrOljWuPZ5BTm4p+5Hemoxonwci9tBGcgPoY1YuPr4A7wExmLtLJebslS80m7l2/tXmUuUscmTjGApxkJoqSy80FPI3p/UOUBq0/XhEv4Z9qAqbC7dO8805khB4OSYW06WXqdN7AeuiCX/pjC7g+OQ/mw4F/uHt5ntFzWIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FkXnW1Mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FkXnW1Mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD42DC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734224753;
	bh=SSTXpwh3U+BS0VgYSXavOik0NZPzkK30nzDwBbllOvM=;
	h=To:Subject:From:Date:From;
	b=FkXnW1MzsoJkQcKnA9TxdiqD5Q5TVlMXc7+rPhoynJtaolCSa6rkxJ3Cz1MpDUxJS
	 H/YdkHRsmflcl0TDvRiTKaFDeR6NCVmld1hEIL1ng5ZjJizuYSSnuW3jrmrLan4hOi
	 KD6fKc+iQtXokqjIHEOa3D/jRpV3O7MBkCsaq02kXtYljhjEX4P91yqBFNkU94SKnn
	 mhBmGU+ZYXVG7NGEwJgaS73C3sQFNpnOHwpU4Xo0xSp3Ou8nru0Vm1sq6W9o2VDenh
	 +gZNyWqxamY3CDykUfnuyOAqG1A4lfQ9zQw6m5pUZCiNRM1lMwUYOjAOjRC/BlgENd
	 jL2SLc10Dn+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9767DE7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173422475360.13402.15203728933050202208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f66350f31b7c0bfc5ff4bac9c2379f9845cdda04acc16ee53e49f40dab7a655
Date: Sun, 15 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734224753

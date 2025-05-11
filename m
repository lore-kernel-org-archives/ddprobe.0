Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39298171CD
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746991194; cv=none; b=PF/znakYJridvxv4MDP0cVW4cP67JGRfR9sjM3CGgX9x1G845HGBPD+tyiQtWpSWsOHSnWZpoFjYmDaG8IMTrpW/H3Iw5ITMJao6rjzaCrGlSqIUmn6B86x1q4XCE6y/GMQkmIb/54yNuyRBJpKNhi3JJHiLNlXTEYNT9DLDIW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746991194; c=relaxed/simple;
	bh=nKmZ+tmUiObiq3Xcvv09HsYZYEw99l7DCCMRzTSxw9s=;
	h=To:Subject:From:Message-Id:Date; b=VierY981iuzaZmaZ+5DoNnwdzEfRgVQSEblU8E7vJRn7GzaPiRpmd6QsqgnyFKZJzpbemLtewumYPzogdmof++LGnF5rbJfUN6rxhjMPhcVy6V1gWZ61N+5FNTgctQcQKUxHL2JENOMwxxNb04hskNwAH9jciltaYDz4KwaBtKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6XPGmfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6XPGmfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD9EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746991193;
	bh=nKmZ+tmUiObiq3Xcvv09HsYZYEw99l7DCCMRzTSxw9s=;
	h=To:Subject:From:Date:From;
	b=H6XPGmfXxicr/2fJNh9wBn0yIc88vgJhlRNep5hOCj2xH9+no3vkdfKpw5/BKvzPx
	 DWgvYfSsbsy2jIck5fObQeTG0ncN7IO/J5opPvK9ZIFXV/+QWGlh9z79WuPzfghaO3
	 pjf6crR9II88/zhtEY9N0cfvkSbO/JQXM5cS9NLutF3QZMuoEH63CeUlNBrRE8OGS2
	 LI2SoUzskmPezlqzpZYmhK6GIGVNxn6Wjq7ikjugfXbxdWj0Hp7zNuDvWeFTAslGqz
	 grVgko4LTF8xa+iphXOzPROv5RMc8b7kDnirOHhE+sjdC8TWXt6cgMLux64yJ/UdM/
	 EsBBAZQXLU4UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABB9C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699119360.26793.10142973495327344941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 005f03e37a5399020af03c29e9f2e15461910398a42d9bfedea9ef8cbc1def5e
Date: Sun, 11 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746991193

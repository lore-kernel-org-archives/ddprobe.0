Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E2A38645A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772711094; cv=none; b=c++HSHMRjIQp6q6cITBfkHT+za3yRHyf63RxY4cku9gHpvwQKW/WRidCEvVknuwQ63jNQHaa53Q0HS9W78coHXd+zxZYxRQIlHJteRXpIXdbROb1s+W01Cb6wK7mm/nLJmmyoH3P8GGkW9wiJpg4DR4Rv+B7g249tmUn+/TkH0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772711094; c=relaxed/simple;
	bh=LOvnitn5BAFIZXHlF+D58qucXN7sFqHIqarMVsUtaJc=;
	h=To:Subject:From:Message-Id:Date; b=Xw6RixpjOy34hIGy2Lj4/MBspSz9I8N5ia6FsN/Kl3pMnV9GdxLfn7y/5MvzOSQL/Nf+WvQ6Xpg8qgWXko81GPGgdwnYd33NGmgA2QiBlZBM4oubVYM3dFFRfRFV5xrIpQyMZlRQd7Y2TKUYjeMtAjICy6KUcajE101sVK8/03I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jo64XsP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jo64XsP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61B2C19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772711093;
	bh=LOvnitn5BAFIZXHlF+D58qucXN7sFqHIqarMVsUtaJc=;
	h=To:Subject:From:Date:From;
	b=jo64XsP3C1gUWeDgJiuQKwTe1KB6w/HQ+jkkzqhvEy8vwgBwVZMaWN/drGziloGk3
	 lcz8l2fz/j/FApEn0JgTROO7DJ2GpN/DVyM9fxTfoVlu9TbDNMz3++lMc+N5c/E0is
	 eWx3tkEClOlDdaVIfixyKbkgBIbhRH3yzuTr/a8G66HaNjqMu49GZpaAfEgQI26brf
	 PficXz/hezhunDZ0sitRC+CLu3UwFtnZO4S9MTLWcBSvlPdodp/9lKUH2LAYToCuR7
	 Ve2UO4cQDzyFGwi1rdQ/3MCbygiJYhBjiHcb7fxqoC527mhHoYxp3Cyz92ATF7GIzf
	 Em1na1vzh5muQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90682F30946
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177271109358.32011.13700732875980362531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5725434acb30b4fda3ac89dd19c6ce99ae10205849a73c5847db4fa9285f2dfa
Date: Thu, 05 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772711093

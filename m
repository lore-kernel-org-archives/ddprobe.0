Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1988721A421
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761323994; cv=none; b=kSBCkwcDkrLFTgn/EnjnQa7//t25af8ELjhjUfaLsyADXd3dh73PKnbuQmLpCnCmQF68a9hxaqEXUUwwauPSyJpYR9piUMOiLOq0meB34RuHtw5bLVyorhMxGdScH5It6MW2WwnwWgg3UlN731f6uHcmoRcMiUJMQKOTSH8hH5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761323994; c=relaxed/simple;
	bh=bOS18LiebDMdN/Iz1bua9QAEawiAY2n92M3cRl/myCs=;
	h=To:Subject:From:Message-Id:Date; b=I+CC0r6V0y63u/XV8SPdstyvSADdL2FfqFiDYNWkPF7YcIXzFrKNWOXb7Sfu1ERHwaAKdiuYW/HtDkF16kCleLmdCezd3pjVvrl9QzgiXQIfPgbUcVDRqfCioJjp+dZeEfgf7aH0VTj5BGXK34UJwLnhhENVjlSM/5Jo+Y3tAR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qf1ayWxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qf1ayWxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5B0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761323993;
	bh=bOS18LiebDMdN/Iz1bua9QAEawiAY2n92M3cRl/myCs=;
	h=To:Subject:From:Date:From;
	b=qf1ayWxk4eHKusEg4vm53kZGa+wmvvJjf4t8VTXQf9qKoF83Xi4IGxqeExcDIO+0x
	 X36tM+AkVu34pVDzOukzNsaozLYWqKk00+YMyYxIal55znyEx4TBNqoHjT4TxkdHWa
	 XUWISfgR2AxKN9wBnNehQH/XXM6hTgdYCAsSDjP6Zoh02KjlmBi/sr2tCXc2w6M/DG
	 bQbmexCaTqZ5XFKOKldQGZqrAEz6Dz8Dc8S1Lbi1EkrrXpAFH4149Nxn/5WQs8jL4N
	 6lYUdhhzhxS6Fb3worVi7tuV4Zc9bVYAcmj0EUOZbyW0dxf427y/GVlNyW/bVkI8IG
	 oQupIYDAwu8dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C8CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132399358.814.1408024941334826231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ddbc1bc5b481678811e8212b7886f03f1aacd93351d43af680074565330f9e
Date: Fri, 24 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761323993

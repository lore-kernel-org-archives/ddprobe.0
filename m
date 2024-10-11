Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6A01CC141
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728623154; cv=none; b=jthRgJIN8xB522dg2t3nB3REWoUNbPng9vgYifhO0jRsHNWOecktpC/xDgqvoV6w9g2I30uQgEzU2EXWQ8NIEhlLdQD5ZDNbtn54IIXaQcvRd6t83oJtujqCR8uekmfFkStKBKGM/Iz/0wIqts/lMmUrMitRoJaA1DAr6AAKrUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728623154; c=relaxed/simple;
	bh=knaEcGTtG/XYTmwDaZx9cQy2wd2hDAfNvV66uJonwTE=;
	h=To:Subject:From:Message-Id:Date; b=YPJf+lELUAJeoVB0mL/HhwqLrbpvOQnGajGFzTPUM5EjAYhZy584Am1hTGnUevcIjpQ+yFEO0dc6KXapugBYa2BQcn0YObTARZ0ijskbGbEfjyJpsLuC+7GV3PDsXo1hdA1Nt6WyrYh9jP84GzWBtM5OFlYOohJQOCCv+ZwZvOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYaDO2GA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYaDO2GA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F04C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728623153;
	bh=knaEcGTtG/XYTmwDaZx9cQy2wd2hDAfNvV66uJonwTE=;
	h=To:Subject:From:Date:From;
	b=UYaDO2GA1+q78zFPDKX9zVFUQQBTG3pnqK24CHhOJPrpKqEYvih6ACobGhRZIcVMr
	 tbKLA1HJiXgnbeqAqgpF2CUJtTlXfjjVwfZJY07SnZYFRYvM8SNHBhhrpEyTdfulv5
	 fYkj0FOXsuGg0Wqprvi4Ow791Sz0NeJK1NBsqlJnLS4aNRwAj+MpF/RXO62BI8n3R8
	 ktdfwD1NRSXlsn55BHMtuMUowjaTr5yVn5W4jeFAak/2yY+nEGVwi2pkRI6V+e4jbb
	 4TvuSmxJvaJK+hFoxA5Ubdnv2x8itDYft2h8HmPjvRz+Ut9cK5IqRe+1m0lxFXMoLQ
	 6vbBT4T+ks06w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C36D24458
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862315362.10992.758438061783519138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307e8a679c9214a98dcbbbbfcefe94db6c1b4f4925378007062828d1fd73eeb9
Date: Fri, 11 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728623153

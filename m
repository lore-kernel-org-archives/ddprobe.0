Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C18366820
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778883634; cv=none; b=ts9XI5C94jwMwjOOIHX07MYVUDdNbnqquUud5BzXUStkFq1k+p0cW/pWvsw/nd1R+MFl2PhpaxIdZMda45zOdLCgeSsoVlVKxMPj66aVMzM1n4/SVBi7glB7MpmlUxrSa/+WZdqi4vLXzJuslucTArQsIdsmvSGHje/S6BFQcy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778883634; c=relaxed/simple;
	bh=l7sB6UsVG12C/L86e8m0miC4Sans6MMVCQ9vwaDL7Hc=;
	h=To:Subject:From:Message-Id:Date; b=BhMPKzynLvAQp8xh3EoZD77L8evJ9r3olYtyiPM7ooGohjQTsjLG9A1WbNPVNKjAlTVhYSk0H/sIjV8FY0mRzk+adPmUl91qEGGPBcquFeVWpcDkmGERnmutdIe51pdIZSDoOcpI5YS4Xb3mg8nUtsXNdhoabOFtXuiPVfcjf5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/YhHpqm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/YhHpqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF56C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778883633;
	bh=l7sB6UsVG12C/L86e8m0miC4Sans6MMVCQ9vwaDL7Hc=;
	h=To:Subject:From:Date:From;
	b=J/YhHpqmCFsIT9/ZrJjzrB39WSI4QS4VdtnBTZj/zh7YtIdrCH6T9y2sL5IylO+aT
	 pel3L3mhPHG9M/betMW/jI5RPaq82Y46B/8V9Bz1uBNsJ/4UOnLLD4mdCgchkRpI6q
	 TK9MucbDn5Vlu9FcKoLBlF2pXd7jLZDyfhNcpPuA1ZVCHLJmBR7sQChv+tZY/tiH5q
	 VdoGUl68bAXyLaJaS058DI9Hz0SJjhbB1h/cTpVn3pJN8lve+Kk+tFnXn2ymd39xGP
	 yXFIsCmzCMTCdTfMz39npRw/zCnQJmbqKP0p6+EdJgxGXz6gm9v49dOMzGJ93DWYqb
	 e+belUkTaC1fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0DCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888363369.11159.13063769754572000973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cadc2ed15f22d2dc6380c6dd63f5fa266f2ac19bfa29b260c9f609750542e126
Date: Fri, 15 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778883633

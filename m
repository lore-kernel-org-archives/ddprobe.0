Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588A51465A2
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720171523; cv=none; b=Jt/0MLFDgu2PnncFAqFf4tw9sobA2ePacS6kh/MYDwkLj5sVfgU/DYpazsozDJ2VSiwnsEYfdLY7zZKpX2DY9L4In7u8UUHNxxngQh/dy9Myw1+b4ymgIM04MITUu2g/a4BsFAlWrlN7rkhhWVEcnXmsJTRcI9T1R/wIP3XV59g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720171523; c=relaxed/simple;
	bh=TXuaUDOj7TKgkYl8ldsx2LENSw/jsQFGKoYG21vfcHs=;
	h=To:Subject:From:Message-Id:Date; b=Dd4fpGFX4Z7n+/5v+S1bl3WCMp82iv3NsmrKqUdBIa7lbtRGErFh2/j7V848xwrfLQW/mnoIYwrs9WaQKv2hMNBL1rQm/hYzZUjM1lfL6iyA/kDI0uQAyLEdpIXXnKhpybZNB/Ji7iLrJ530hEmnbfU1p9FZnCGKHDtyVxTzl4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHzxtuJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHzxtuJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4357C32781
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720171522;
	bh=TXuaUDOj7TKgkYl8ldsx2LENSw/jsQFGKoYG21vfcHs=;
	h=To:Subject:From:Date:From;
	b=eHzxtuJ/tutQ1ohAuEgPt3r8jW7l2m0QPtqY/G7NpM7fwpigR8Gd1R4Y+DX9h4n0V
	 lqAVyMVzhn2jt9icln2GLVyu2VqV+Gx+6Cd0SbGyMabXZ5Nqm17yBcffsnHwaEasHQ
	 Q56U99Ix+n3BttpkZjM1MRPFzwOCKPWe8AkuoZTB3F8MrA6k4tlZwysVo26MmAPENK
	 7ujfUG58wksBrv+33TMOsAuo1fu2D4uKCiUxny+XzRLiDqh+F8xo8Equ6I8EoZ3mny
	 RKoqVeqHiOkQDGzscJWVlT+fovu1rvsSlwkYTMSg+N8OYBJV4opNI1p8J9U7OBKFNk
	 g7UHoLJLJeT2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3D9C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017152275.6895.10491533273034882677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375a94c0da0d84b2edc8e5721395ff991a96012e653503a0bcdf84c638b9afa6
Date: Fri, 05 Jul 2024 09:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720171522

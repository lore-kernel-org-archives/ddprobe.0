Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A83125A9
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759611596; cv=none; b=GHZgVkQrEdbAhc1MFPoKyVG09iCqXgFB6avxRKBBmaU7RD6pYrcflJd9F42nocVtk2UbLEJ0XeGXcOvRMgpdSTyDlpgyTnl5diFG98Rnhnfl4xM8znVe9CXlXErKD4/VXmV5MJztUEMh+jqGuwE+qSHaKNSxnVuI4836k3VT2Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759611596; c=relaxed/simple;
	bh=aMC9NZQbV67C8/cqYcLLivQi/o8Hj1DE833xZR+d+EU=;
	h=To:Subject:From:Message-Id:Date; b=Ep6O4ev2QQ4Z9LCfo7981LqcQgsPfvWBFfwkcZ2qtQwwIAxALNQ+cUQaQQoUO42lYNw/kt0lsmYU0bBmX7GbzL7wIp9SkM7Sv6eirfJi1DZWN/r2Az3aXxkfy81GbAI0ZsdZpk03EA8wjKOz+DUAKJ/wpqhlNjQg29NtFGI9Fiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGNQvXX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGNQvXX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D61C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759611593;
	bh=aMC9NZQbV67C8/cqYcLLivQi/o8Hj1DE833xZR+d+EU=;
	h=To:Subject:From:Date:From;
	b=kGNQvXX/2dM70mAWnzyA3no3y0n9vPWI0Rqmpeb+jHxnZ1JHBwvb4WsTzf8XIsZYD
	 etYa2TLwwg+3jo6REM+CW3WrItDDm40r/DdSwc2j57ya9onXBV22Obcf6DJVSw0waz
	 Dz2jG9uRFF5ZLlY5mNS6LZlJr2C+M6TLXMya5eQqwwE8fHilDnipFaetoekdr4iiY+
	 T/XShY6brgEJtUWkfDXDT5zyzsxPqC725DJ6y5lB15oCgH2EYgQc+xhgyOgH3Ib0BG
	 MgBPZr1O/8wYNncWhh1iNWDxLFO1HkwKceBGhFzkr0e2b0BX+2rmDKHsnIi1D/19PN
	 lG+jTIf5X/c9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93632CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961159358.20033.3456243210965206446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c058cb3ce23c6c988c4647489031f742468de01c6c10e7b256cd2aafb41b50c2
Date: Sat, 04 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759611593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BE3370AD5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780442074; cv=none; b=UeYq9DRKOoev7P5D2pg2JN7knTb1DG60/DlCMBjCvfmjW+/N6ZvuqCA9LqW7+me9H2GbMo4RIoIGfZkb0aU35Jj8biPyN7P77wisGZ+64sG8tGKn3aoHQJph78hzXoZhl4+ytl5XiUqWCieuHRzlXMIByBD+yPy2kTwAMYPLOkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780442074; c=relaxed/simple;
	bh=6lxEwkAOjGorRN4U9N62xYIuLHte4koI8BUicgzAaj4=;
	h=To:Subject:From:Message-Id:Date; b=GwDfX2jzpfKOYjYq1B13Xm9+b2Pufy8Tb+xA8qjxwnBC1NqM8LWLVrlso/yjxCJDG4UxpOCtfe+t/+D/m8wp/EJIrPCwYWkiI2lZjyrtTGWPf8GWHvH7lqaZYGqW/CkYxgaS/UUz0mrvMC67qRaRcz/NzQCL1LLDK71y6gIvDHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HY+ZN91X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HY+ZN91X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42D4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780442073;
	bh=6lxEwkAOjGorRN4U9N62xYIuLHte4koI8BUicgzAaj4=;
	h=To:Subject:From:Date:From;
	b=HY+ZN91XZYhBPYBpX8Dyd/IkqN/lCZLnIaAZeZ0+0y3d9OU4BtPStxWQWRWJtpzNw
	 z+52Wk4uNkP1vCUzAu3OnNu5pv2B6FoDleZBiR2fiNywZtiYU+hxsrCU++P9q8xZyx
	 qRtui9fKkCA/mf/lH/YNU6yHEei6LueECq4IzN4GzqD/a3B/srdDJ9UCc+1lbChniv
	 rxqD9UqNVQ0sKeDS/Jd/0Y0XX+ouVFmh0B9eYSc0agZ4PbMGUDSjNTszF/EYx9h1jC
	 mRpXtLD4yGQCVfpJ/73ijGynyY827ramG5+wobWVBvdQbqn0z1eO/kF03FabiPPwbB
	 SIGO7QK7XmXcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B782DCD6E64
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 23:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044207373.13861.6771205073897559519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb144d286abf28173e7dfd4af3b345aeb4e02c544efa0b9631adc3395d9d9fcf
Date: Tue, 02 Jun 2026 23:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780442073

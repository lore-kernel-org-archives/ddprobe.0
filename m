Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A59C4A00
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718757563; cv=none; b=UBoaDnxOE8BlUKsnDPHGie/ZROEpL4p+Sh6yvTaB2p1cFkn+l01hMQRGLUIgKknT/f093QNjAqIjYs0CQWysNniX9tgiJL9fbw0NYEOF5FPivz3pkCgXGw3TpqYwuoBG2eLnxp6k59gGF5Gx7pE57M4ApnxuTHns9egNluIFsHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718757563; c=relaxed/simple;
	bh=xxrMfG4a1InrvzfCgRoIsZCkHdd+j4F0ZzLzGyHjKFE=;
	h=To:Subject:From:Message-Id:Date; b=kIeN9LbQsGgWFfZszFSIOJKV/YsnYyFWjiHOyR0Rv4qcRkKYPvCZB5FRpLZYJAQwRBHkUKu20LmPiwUJiWX903Ir7yM3Dc4G4L9XFBw9fsFKZyoA9Zbn8eLC5biMRvXcYejt1UwLHHtA2BHk7rfSasNMKMmUzLicO3623lZaaBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXfb7kgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXfb7kgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D61C3277B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718757562;
	bh=xxrMfG4a1InrvzfCgRoIsZCkHdd+j4F0ZzLzGyHjKFE=;
	h=To:Subject:From:Date:From;
	b=DXfb7kgEUcRzBNt66U0mmaNWGY5sy2wqz7+074hW9oFqv7Fspj8u4D3JHDqL7PYY9
	 iC6oXrHMs3hYTmXNDcBCct2tUVoR+g/a4yzno7BmsSFQegExkK7GaND/cE0qMlOu3X
	 G0tUOLogrLK5diH+yGFCSBKwyUijpHwEttPTLMQudNJt5EhndsBUVucce4iPko/+Qk
	 wFMINefeTPq9qteSmBy7w0nFip8aWQj7gNx3PZfGMyfyR/SCYjKtW5qPjEJJ/67u5C
	 JdqDPxF5aXVjvl6FTLty/pcXtyAecuVTdAuV+tiuhRe5fSs/CZhY9JLFi+tjyfKq0u
	 LDF2sxyIZLQfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9FCC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875756281.27624.3196485770863708039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fb28fb6e307ee040819d0d7486b2edf0938c1b42e69ffb0f84d269edccb186
Date: Wed, 19 Jun 2024 00:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718757562

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549121CD15
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744094394; cv=none; b=RqlM/vAQ4f+/R0SFh4dpcpPdx04Annt2jT5lRlybaKry+D7tKJswEvsLRSN4SuRWgN5fgN8KLzO+eh9inK/GWtj8C0VQDHj46IYMES8/7je9GKjWHcN5z73p84SmFsO36kucfkhrRitWseFEY1k5hDbHe5jRY6yt1PSHyON+cRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744094394; c=relaxed/simple;
	bh=fK8Qn4AUgLNTX5Gyce9x8KZU3sdqt/KWMTTw8V+L8I8=;
	h=To:Subject:From:Message-Id:Date; b=s70FGWMotusDMBGDcdrnhFr/7xsfc3N5iRbBcv+3OGZgFSBOR97MnLU0xYrHCvO5+7nPFSx0qYOCY3bVnUETqp7kranvMBR0aM8Jelm1eKmXpsDht1hMREQsuHF6eJZ3qCKwlCau76drjlFcE1rWVM4J3F+QCH6kYc8/9nHti04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pT7QZWHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pT7QZWHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93B7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744094393;
	bh=fK8Qn4AUgLNTX5Gyce9x8KZU3sdqt/KWMTTw8V+L8I8=;
	h=To:Subject:From:Date:From;
	b=pT7QZWHABBZm4dA0ef1rTU6YMrFLRaeHdQjWsNPMsy5+Q4ehVgs0Hmoe+lNAB4K9U
	 /5KTgzSDaP3BppYFZcssAlrC3hCgurc1Y497QJ4nJ1L1jJORF8eeOBtCtjkdoc1eCt
	 beMIjk+9Q4RtYRVKNvgDIoxnwuCevXoi3XBemL0FxF/9ppUEkOgrgoG+tSdlbue10E
	 6aX0A1Rh1/OYaQpo8b0psU1rEHDZcorJZrCFMXl3ImT+Gf9MI8d+cRmekxtQ6BsRy2
	 Dj7he+k2X+nO0ZAczm6ri5x6cfgG82C6Bk4hUH4AlNtKyTtIuWhoyjbh5qN3vi7Kf1
	 8HoAM1Lg71Z0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9131CC369A1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409439358.801.7639588092290711051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd24f5bbd77d02cb5d80ce54c1f92a413a94d1391c505fb60e0f494280a8f70d
Date: Tue, 08 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744094393

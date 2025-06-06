Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0B71B040D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749227994; cv=none; b=Mh1oCcdPTKKModJKgF3gCDHXYQjSE99XxDADMuXd5UH0G6rTECjVLEpOm0Ayk9XwIhF4WYVQB7FSRMxvK2ZInp7MEEe/mRdPPU7xA7UqGuxuiC5ZsCSvuEV9eN8oof3Nezp53xrH7QlBQp4TDQVVPnFfGCdBqFuqgg5Styu/jNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749227994; c=relaxed/simple;
	bh=kI5vt/7FlAAZ56nF+SJjFP1R+vZ18DW27y3kNGvPSsU=;
	h=To:Subject:From:Message-Id:Date; b=OXrSQrjaFgIaXPJ6I5HoFp7Lv//oB4/Xhdi5TfVfD9qPAbGbbEOiJU5MJLchzrdsczaIDGqs7yfkJlgGvFg4sVksJIGqziOfLSefSjxRSPGGSXR+w8SkxYFMXFarl2GawSJnJH3hSbEPtx7XbkjpjnoMsNOfgnjFMcnQOFKwASY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKzgrUpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKzgrUpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EABC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749227993;
	bh=kI5vt/7FlAAZ56nF+SJjFP1R+vZ18DW27y3kNGvPSsU=;
	h=To:Subject:From:Date:From;
	b=aKzgrUpdn6CAX4tiBpZTpsiDtRLeSjvYwCGAKDeIBG78iHfiFqMW4pkM8iYQR3AdN
	 sQeGMQ45plyDtO/FXTTCVrHwL4I7RQtWzD4RchMhZ6UW0VyoUlLtFEA8RtDxMh0L0f
	 UtG8PMlBwiFNbYi/4sf12pqXgfM7QW5O4wgGWfV1UKazNCRkLrxQRqp2O5b60b4n7d
	 AYcpI7rQCJj/ZX0Sub73hcFd846HloAg/od+ZRsWWYC8uyJvlM9NRlM15LiCd+2Cq9
	 bjWduJpZe/W3k8SfqgEOuE0TTS4a/S0NJdbG1BCQT+8UkMKpQNWCSKuxrhsZy9q+GB
	 oEvyDUT9WC4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7FDC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922799358.3193.7626660736018446387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1e0c31112ce58be0d20ab14665c4878de2805d1a215cd4bc48087bc8dcd0dd
Date: Fri, 06 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749227993

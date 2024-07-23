Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C341FDA
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721699154; cv=none; b=MeHthXt39KtMRyiZkLiwLOSp1iJ1Oezex4ARsLF/T5D0jqVa2IvusSX01LCg/BcX4KyW13sg1nxxPRrq3Ul7C/a0ITppvzyHjd3mf2c3KqevPhoBsp+r9N5XyzWoFcpRWAUMLAjxvA833lQPA2LdoXjmP1CdFp0tzkgrkiXchcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721699154; c=relaxed/simple;
	bh=7lKcjmrcWyg34BKD9imql0g1LJUwAcZdDqMa+AJLgCM=;
	h=To:Subject:From:Message-Id:Date; b=VdCtMfEl7dlau3jSMG+0k2A8QEGKCMMijMUTalwmIwpG+JH9d+G8PQANU6zNG+crXX4Ws+QfiI1wuHdBnkPtCpuAE9QQ2f61FZp8xK3UHmIDPHCngP8q3DFniV3acjjpQOs6GC05KOmi4r5fX7Qt1xiaQ3p9A8htTqmVVMD4jQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3kP2rIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3kP2rIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4E0C4AF0F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721699153;
	bh=7lKcjmrcWyg34BKD9imql0g1LJUwAcZdDqMa+AJLgCM=;
	h=To:Subject:From:Date:From;
	b=e3kP2rIkLQSyMrCwyVVjU0nfOInn02RltHgcnz+jPNDQdshJkG9K5r8VGCzS3Bwaq
	 F9ODFMFH4704TVUkdayMnlM3+fv84fRMeghkx0iwDhwu6mGAifcmBECPWbw9XseAze
	 qC+rdsnyfZgRs8NhCMS6XQ+2WZgizYM+ojDzuDbBA8wGpFWexGcuGPnGwAKL1TgTdq
	 C/ATsAN+MJ6La/3WGSdoyVCGNg2FMotMMzJKqnl6E88m4tIPfZFpDSwHlOqe3jE1nG
	 iHYZtVGi329X6dxQEb8Zk/S+o4sTUgd/ot3X8Cc2WsjkHOub/J1g8WDQ8kQoK7Rsiu
	 b0MgGdGJC0rFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A667BC3DA5D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169915364.5477.7712274922950483485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3bde792ef49c2f5d7707407c38c066616d2764d7edcd950de69891632cfdc6d
Date: Tue, 23 Jul 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721699153

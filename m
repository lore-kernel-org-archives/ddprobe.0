Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1897D228C86
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752065994; cv=none; b=CgirnVtZEIuc5m5tJcKGiuGnpXtP33Q6EG15NH5TPMLsoEW1DBM4CngAWnc2O/xmoUPd30UKcAI3whWkttKSYVfr4TxP7+Fq86kd/bUPziQIgQXCpUeNE+23/6tyHF/nvwP8UUhJAT5IUS/hXBGJquGAb9V6QzzDnfQkHxbv63I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752065994; c=relaxed/simple;
	bh=JN7oOFWQnDCZ9u3haxi7d9rTJT2mYwzreNdFKE1iZlw=;
	h=To:Subject:From:Message-Id:Date; b=Zk5PUXYVsbrGaY9TkJMXcX1o1BaoS+k+CXZz/ab43giu0m9xt2A3TB+Nuyrsh5uqoa0eUYzAbzKB+Az55AmoHt4mujJZZsyCPC+kGF/t1qtAhYT+1b6mB1P0TEeyWq1bB3dV+05PUnyDM5w/S3euXWBxjYBvJoEpxtfVJ903TQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuXkwfe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuXkwfe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6A9C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752065993;
	bh=JN7oOFWQnDCZ9u3haxi7d9rTJT2mYwzreNdFKE1iZlw=;
	h=To:Subject:From:Date:From;
	b=IuXkwfe2KsfjIbwGMvHlTorCXDlryp5BgPHS9Fb4fzodAki1H8YIh+xHChLGoDcHt
	 b/Mo8RkAVoRS1yj9XZNC5ymjR02guOUQMo8HgZPFrARvb4meqrkZ46fYFLp4Q9SdXO
	 TGfssnhv9J7z30jo34yoxubrCQQ8/f6iMYOAos4P9qraBtjdevAgjrrasM17M5TOt2
	 8jWCX6fEt0exTfm2DM4URl6vAVuyzE9mZJTF53zBhQylbWFjBSNNpKTMDTAgJlKTeb
	 3JvADPPNphzgkPltYi1pPN8LBvVTxxPAnjJFdSnys+54OaYc/W7S4Z7W/zp6eZEZti
	 X6IxvvJI0o/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0C5C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206599357.7467.7851150130327293171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b93da1d27932e1f9a2f66287c5055537faf336a4142dc2cd14327de4aaff7c
Date: Wed, 09 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752065993

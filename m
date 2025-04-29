Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298091D5ABF
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745912394; cv=none; b=UkGFfCqBB/aia2Bcb+6KxZNwDuqc0eaklycSWkOQCSpFWFBqS39Qxg+KbSNUj3k51hC+H9RlGufPVApRyadfo2jdtY1W3okGkzqfES2CeH4deavL18N+obUbf2Lv+/IMifFwwaXyfqnqTvMLvspNxt9meCb39kFr1N+/S6aZp9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745912394; c=relaxed/simple;
	bh=Ok+b0VhocspJbpRyZg8m/e57Wa//SnxZo5XP5toE/To=;
	h=To:Subject:From:Message-Id:Date; b=jL1bmZX0gilbifOvvmdXZH6r8YnDkddAMY8jegqDwDslvJ+bKE2Vz3G8NLHgd6Cu5tg7pEFqyyu+civw0nD9LBYKCf6g0p9LhNAaHGEzGnoGzanL82xz9aRauaYUZLymCKBJ9KO/ghtfUL4LmS2CUzAfmUIgr3c3/t+xVFJtbAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJP9Q94N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJP9Q94N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98D0DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745912393;
	bh=Ok+b0VhocspJbpRyZg8m/e57Wa//SnxZo5XP5toE/To=;
	h=To:Subject:From:Date:From;
	b=GJP9Q94N5TEL2pSjZAI/nmEmKLURUA+3RaQaan3BZa7AHfnrzQ3lcrE8fmfStcsf2
	 coSgy9w3DNz7CBtm38kLEqCZF4elBYAak9n/jodJXhwu0959JNnceOEpJAxjBJ1nxW
	 XE2k4eJJiHQB5v80Jxt7PVcT8zHzK/7nH4nk+IhVGjtoIhM6HZ+58KqIvIKgLgGygK
	 Ed8UrJJSuo6VR6TvdnciP6ay90gPw1PbUTB7p9XxHdNE0MCTiOuyC0XpbjToUixDof
	 kF3oHAKEdgbNaNqWbVhKtSRyloH8KFhoI1CSp/CoIEUSEM1H/F9R9Ozq3WOWn5mLRo
	 wpqh++jTesleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B3C369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591239357.9158.10845642669493710618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d217e7b35d1c9b601d8b00661341173c8a47451174dd79b2040901d2f816f0cd
Date: Tue, 29 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745912393

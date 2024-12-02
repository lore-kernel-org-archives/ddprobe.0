Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF4F1FC3
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733103954; cv=none; b=bqFQAQW3tO7NPcBhvL9s6u/BovysWkZvVF1rny6pxAoquqym7mYHbI+h7t74TSq+W0xq5CzmiV3Sq/nIZc4HRSefmJ8PMFSYDOopUTwKrAJjjiKT9gf1k8vyQT9RHpitOwiwoXYQeuxX9amvsktYlDbw2nPpylWgp6faiiB30n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733103954; c=relaxed/simple;
	bh=SbzvL9Sc9JXMw1wgd4TD3TXfcnz9/QELCVFWRiNkdIQ=;
	h=To:Subject:From:Message-Id:Date; b=ejD5hH5u4tc4XLqaJC0FpQiGGRfc4ZVtnwQYvty4wwjLqS6OsRUkj0FczB4DuMqWV4ipWvHy3fSi4Ar0IRCoFE0A59gp2y+SNpTEs+HTkdFXJEpq+r6BSZR2keTlP1WkwOKgYuZFVFiSH/km561KQGvJQf9G5oOdThlr1iKIU84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Es9CCzkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Es9CCzkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3FDC4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733103953;
	bh=SbzvL9Sc9JXMw1wgd4TD3TXfcnz9/QELCVFWRiNkdIQ=;
	h=To:Subject:From:Date:From;
	b=Es9CCzkf+WueJJEuXoidfG3wMto1zqDAi2ujVdIVN/HMiS76+hkbZIYm3+JrmLk7X
	 lUMdmJ/WA7oYVFGbLWw/tIoxcLduGm8ZznVrHylinM33FVelEK5reSNhJwR6I8Nqcu
	 G4MvmhAT+LrBiDZ9tnClTXs5bIGZ2UBRLGZDYYLLPQP1N/Pja7irrA1nB/a0ucn045
	 cbll/NFLOJUgpxb0R9LIWMQmGcsdt++XUqGtdop6xxPEV+9vo8gPYbZqB6FsgicJ8X
	 sEI9axHa50WOslAGAe0vs6y3pjtvU7Mak6TvpTAZnKkV2jLfkk27E5W3vbIbUtzody
	 8rOFaS17+g97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB33D49793
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173310395359.17359.16860405023536412803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86579ef3620dda7bb496a967a57d082f699c661898d53783dccfba2563af15cd
Date: Mon, 02 Dec 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733103953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D793DDAB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757890194; cv=none; b=W6+OvzysquTwJB6LdfJvHHGMadOdggirdZVIvpeKo7VQwLTWi2oGw1zvDJeWvSgzKmWo7FGz2C4aeKidMyUv5ASRKEMR1GN+OlB29cHxZmaCIMHsBryaNiJqJONx8BFS/zOZh07wcJpbrqtgCOCiY8n9zGW5ScK4OgNVGbec/Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757890194; c=relaxed/simple;
	bh=mKkwwiHGCuQXNBQotAtjQ2HDlZkMqKHmVvA93dmvTYQ=;
	h=To:Subject:From:Message-Id:Date; b=ZjsQnVeamX/Xq+7Gj6ZGhMKyfHL33R75AH/+7v4GT41gHOLJNf3bsZlTvlJwyAGJvIFUj6Daj1Nu2kq/geEmoaq07aXfNJs7auyjzuCI7JLWgKE5oooJRgVYwhpW3Vs7mCx+fh0wylGLcO7wOirucv4lOZrOrEbpgDDVgC2dDvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoJ/0ILL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoJ/0ILL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F3CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757890193;
	bh=mKkwwiHGCuQXNBQotAtjQ2HDlZkMqKHmVvA93dmvTYQ=;
	h=To:Subject:From:Date:From;
	b=VoJ/0ILLQ5IHlnEgJIoDcjwyqNu3iyf1bYu3ITHXKUQqh3JtHgFhclkukDmWIaGuh
	 T5CmDqIzegU0DWy1HZPdc9Yx++whO3oBWgRf8pYc7jEbke9wGCKfxWIQPIqGpylDkF
	 4FTtsGfPfKfogvXGkEJ2D72HnWE30nNRM7PYf/62LmW4RA0/0z5AvzWSHS+4juEZiF
	 GNcF34W1aktZM527OYWtjFdP4LdnpwHAKCmHdn/7VeP3X0FTeKKRPREI6MOAV0qzo8
	 eeQiJCz68SyJ1F6uw5XKzvP5S6H83nA5byL5/XEiFQXH4cI2zGXVVpn/d3Jc0FuLJF
	 sVLJLGODn99Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DC3CAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789019357.16323.1885471198401407071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8f895b2de061d82237ee7717083409968715fc61c6c9858842f56c11c9026c
Date: Sun, 14 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757890193

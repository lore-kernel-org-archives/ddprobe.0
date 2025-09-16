Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0582E9ED7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758063594; cv=none; b=SmmLBaiI/iygzpLJwxNQfeuZEfZ4b8+lEWvauNYTP7jFBnG1tFGAz5YH3EiNC1lIwz/4TtgM5lydoaVr6aGrFz87E1lpavrYEGyuecregu7r94M7hIm4VWOirfGtwwpeZ+7mWfD3VoXW4m1Rzilwe4ar1mNRIpJSP8REoYlOG6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758063594; c=relaxed/simple;
	bh=vyvnaMwqz8gSDDFjoHEbzSb6bbblyaQYWRxBvP2bYnM=;
	h=To:Subject:From:Message-Id:Date; b=u1tMehSKL4IgEElXmoU4PgW2OHaoFJIoZYTkaNMHaN28JvpD5Vkaal6YMZrs1XqQE0qKGJJodxjFINkM6zJlXZ4KWsyGha6Uo3OEtZtYOvEsQ0h/KXcIJKX9alIzqGHxqjnKzAOFoFdA618ZhN7qBCanjgRqFjssG6U/P1A4xUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvUnM/uX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvUnM/uX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6532C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758063593;
	bh=vyvnaMwqz8gSDDFjoHEbzSb6bbblyaQYWRxBvP2bYnM=;
	h=To:Subject:From:Date:From;
	b=tvUnM/uX3OIzerZFV+LMcfdf1az9kD2M/chNgNkT2UiI35zQKnjdndOdf8XuR2G7r
	 wUSCDn0nviZ+YGNuJ0VnlycEshIKETHJaSzNtaVf/sX6xDueG6j8V/894vXLoho/hh
	 yFysI5aZ85t6ck7hILbS09JJG++j1T5qTvQ0NbqsSYZBlsk3R7Vpgco0PYiZzBDuD0
	 wvThjhaj2492PeC+FE4bDFuyevWSQLfinfyF//NZrIKgRlUY1q6OhRdJfm98zStKfA
	 Umkq8LihantYZc0YgtKYoFWOsaRa+Gn+Q04LCF4eAMc1VF5P9rjQYRW/yNkE/y5ReJ
	 5L8svEAItNL2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D65CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806359357.28434.993567260764643588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f189169d897cedb9e1551b795e8bc0bfb5d6ab27b3febfaf3e34ed6a280bda8c
Date: Tue, 16 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758063593

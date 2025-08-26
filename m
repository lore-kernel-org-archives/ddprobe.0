Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36D6227599
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756207193; cv=none; b=WdXn8gdzLa3N33cVtblsEySIQY6sQwOagxHjW4aFCv+8HmRjWjFrRIu5VOAzxJVZmyV68Stb3il5BfbZL3LZQfQYP43mhU9bUJRNOw5IjAzval17fBqyZlECq6VlwFbRSVScaE6ZvMEXYrVS7fgi06sbxtPR+0c0j5qd5d5r0sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756207193; c=relaxed/simple;
	bh=4Q3g8LyUd3SwsCKAvbFtZa1phJzo3Tpx5f6usOqg2b4=;
	h=To:Subject:From:Message-Id:Date; b=O0Kryi8bpQ0pOvpUvYY7Y/cGWiC4zZ7uzy0iVOKzAh48MFrWXTLfIzWMCc7wRK/0kZBw7v6zSQXFhGmUc6IuKDrCnpAyyqUx+KeeiYKzyKyRi0pJU5TNBxux9OGHZuWiIp5rbb2PvCiPg/fmBtXsHB/FsLdd6hOPhHwW9pvpGOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhDOZjsC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhDOZjsC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D536C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756207193;
	bh=4Q3g8LyUd3SwsCKAvbFtZa1phJzo3Tpx5f6usOqg2b4=;
	h=To:Subject:From:Date:From;
	b=VhDOZjsCaJ95Xdl1ysHZXU/aILtQ5NtYLHB4W/SNF5W6+Jb7si3SlyuEgXvVmh5wn
	 nydb3adI8DIRFOVifwXk9ALhgMFqm05ergmTBd/lH4mjtlssnEGTDOkgZ6+GRX5Cjh
	 nAKItKhzHX4IkXKdQFHpfXNvUPoRCVopZIxlRBeC7yuYTdIbD/IZ9VU9uL7QQapa9m
	 uyjxc3RBpgxC7DChYm00CKFb2QiNjJmyDfcP6VSQ1bhzSE4VAXN2GZQMXbEPUK9kUx
	 S2s/ac3YyQ7nu8OJXEYFta6IYL405QO2alMF5Ac0i8iZuL68WUQ84/e89NP/FjLioP
	 b8NfxmUS9P7QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED26CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175620719357.26576.5349682254364302260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a236511de665066a94dfee71ed16985abd093288e186041df66f7de0ea4ec0bb
Date: Tue, 26 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756207193

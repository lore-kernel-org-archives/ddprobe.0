Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4396114A099
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735125354; cv=none; b=X9DFC+7BC8ZypKkWVvOjRe281nM9zdQ9fSGW6rXZVjF+ZyhJHhtk2VNO9lS6myYOVCavInjDsXZjOaxA1kLInfrOEJANtmShuf0otuAzZSIcd9SiFPAc9Duza24r8Brrat2m3Ydnx8yuYXlm0gOLntLWbOEzipzmGBRlbbaKJwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735125354; c=relaxed/simple;
	bh=aZuSUC9jMF667StkqEFNNtgTR81ih6J0NYo12qMha/g=;
	h=To:Subject:From:Message-Id:Date; b=aLELNJrynCDt/H8j6i2xPvQXjulK0UrQSmucXl/Q8RDWqXadM+zArloR/gTuLZtHfxbS4P3AE/dWMZ5auSg2u6eJBEDzw1QYwY/7+ge/9Vb0RugP1OAQFoIER9lqI2F1LqXKrAL67efsGpwEWr179vHjqzojs+XSr7Trj48/A9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaRlgw99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaRlgw99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA638C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735125353;
	bh=aZuSUC9jMF667StkqEFNNtgTR81ih6J0NYo12qMha/g=;
	h=To:Subject:From:Date:From;
	b=gaRlgw99dkIz2YuPSN6Hrn6EhoqfB50oFmXJbVGNFVg0emZvMDolvWXQOWCnSV5FJ
	 AIaWwO3bhmp5LvTsHYBKQwyonPTQ17JH80nX+J2sExeb2VVDTEUeD3letFqUAvXXYb
	 T7j8EpMVvNPQ1XBliUUJVfV1FlFqS5yHYrX2OYOuFTGnWxhfrI1yQ3z0sg1P/wf8Ju
	 mz0nt4cTzUuhSAfMXL9bzL1WVWva/0gmDoRUPQaj0E/SSaAjA088NPhh2M4xZ+yNLc
	 TNzsjmR7T9xzkJtK42Qg4g27/NzgMevN9Kr/w31ntetRrezqfxyhg5c2oe9DjbKC4m
	 koAhMvG7AwJOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976B0E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173512535358.29252.7663783256537630441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdcd555171aec4ce35c175952f441358dcc6c202b810bc598f92e230116eb5f6
Date: Wed, 25 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735125353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4025D17C77
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744428594; cv=none; b=rgI2Cgqq/xbhzOQ9DhbvqD5LtIxoI6HWQMOdldu7Nr1cmS9rg1UWo6KT+4xr6Kpa6tFRKuG8DOhtT28/9nyb73GzP3y/THpjvLjvAdLVGg9c6ihkpJ8nSZCas6oFLb+ANxOw9peKEpITQYuMbwvH0uJvsmBTcgzTbln0Y03KY3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744428594; c=relaxed/simple;
	bh=kxOfUDXV8lkssk5Qqh1/4lz/rs7j7WtJTapCMGC1K8k=;
	h=To:Subject:From:Message-Id:Date; b=Tr2RThSkQ44FwASr7KMNXx4zOrzTohNgjUkvLsAYorID3IO9B6V5IhgLkcR4ph9wN4XScrVbBBCfcNiAkrPSRxd5VA7+trG+I4vjxjm26TV2K3yQqKGWWWBmHPinTHwBZ2HZ/1Nk3bdQUxOpJaUtj12277H7XVXL3SvHInJqPdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOz3tbP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOz3tbP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B0C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744428593;
	bh=kxOfUDXV8lkssk5Qqh1/4lz/rs7j7WtJTapCMGC1K8k=;
	h=To:Subject:From:Date:From;
	b=XOz3tbP8XXwYOlw29K+7MjrnnQZVqzWpUhA+Hx5RccSbLC4wGTPY2fr1uVY6dP6z/
	 G7h3ZfBDWrrW/AustVvvVsizotbR6MzeyuCudt5SR8ilDuqT+JEeoX3m/jwVcVLh1/
	 IXALjZ3J/eJwkD3l+G65/KUFis3f31GXmvLWxosFPAYCYJGrpYZ0UBz2znmFCZ/+cv
	 cbEPqxEP213M0cPLtLobwSU4dkNm3EEGOlxXwzYlO1ehzHIgaMg+7pTolqPsZu+C8W
	 9lEbfYWLnKSJwjLzQusqsRxikMS4gw3Zzc4g95CmDt6CcVG++TY7LlOxVaBTNi1bYI
	 dluUMrje/gr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90243C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442859357.26756.4580856380272334994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1354abf419063dd806f6c610f4b2d91a92e97ceb49bd60f940123f0da96f1a61
Date: Sat, 12 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744428593

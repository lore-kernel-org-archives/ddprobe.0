Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4F9285C8B
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776290254; cv=none; b=FPfaOglK++70jdnH3rBP2xHSLlyiTXc8RXeH5M9/pQEoWLOfnhc0klJhdIvy+MOnUdm7xiHHEpRFnR9EzreYdF8gTtn9emnzvrWliftwOaaq1rms54TX/V0AUvmNHix1BbHuXjwZdG0lb+o5StXZY/DlOJixIXfBoZ2/k9nFQZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776290254; c=relaxed/simple;
	bh=P8zYMwRYBjDBSq//FDRDwqGIqcV83Cdo8Aos5udbxTA=;
	h=To:Subject:From:Message-Id:Date; b=EGoKFOhCH1yP9KDdeMkBMM/VZOAAXvYXYvzUZvuXFOZbTpDBOglhZtEUS9T1YVhLamC22Nfv08oWOk1A9NPlOK4Ouodv0Fb5aC0qOjtpFRzRpPBt5wTVPA642wrcszqUj+t+3FJqbs6dJoyMDkyRvzyknq2QgLtQoHkiqDXzyNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mG0eQ2+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG0eQ2+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5A7C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776290253;
	bh=P8zYMwRYBjDBSq//FDRDwqGIqcV83Cdo8Aos5udbxTA=;
	h=To:Subject:From:Date:From;
	b=mG0eQ2+qxQztqgx2M0LNGdwufst+vDSoLjJynrQKzXUmnJ8Ocbg9K5r9tfC2RIXP0
	 chtbtqOQBrbxWcaLh8cpSTUw2ltJeOMapDYLDbpHrg1T9POsWlNFx0uso2q+VkzMCW
	 ZzW44eGEEpukYaQxEPKlcfv4l5dlee3/R4hgmETx7Ziri3x0Jf6p/msWPTzLZ7xEAT
	 cEFcqV0kVSPnv28EN5d8nPE9zb9VNxLE7zS2NOiY2NeD8CqnVLfj0XpUYYnFJfT92L
	 HVKcUvTAQnciOQhiTymgWjE8eyW4RPz1QSWQgSZuauDdahW4E+5Hk4brzZln0+tcyV
	 HuO6uO2+eunIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C5F433CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629025369.20465.3164006529974840126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8a3e435348a375f45dae30e22666d08d4345c2d032483a78511d1aeffa586d
Date: Wed, 15 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776290253

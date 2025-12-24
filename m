Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2113D29D287
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766614434; cv=none; b=k8ADW7iMafIVPa5goC7q7J7uzK0FcMskzyaCtYXRFHwGr33n+Noav8RlYDN+/ZqAfBHiuALxJyrX//dQJu3HRht7VgCQpgV6Cd1dKD+QV+obb1VvsXH9Ab3GSjqbUFv2fKecBQReFe+vke8UCCMn2sKEyKPdkhGZ4JOYip1uGQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766614434; c=relaxed/simple;
	bh=Iby3itb0hBxW2794xMd5y+Mew63DHUXf5SLLvBNu9f4=;
	h=To:Subject:From:Message-Id:Date; b=BEERzStXBV2e2lCt+wk8PmN+LIY1GOGtoOMCVKPhqjc0FdS97oCbWihAdkz7s/6//hADbbM6REdPYKpkWTK+peLnVe2nCVXv6qlvj42r8epqNvbkqurqF4a0ZDDlmkL3gmHrbioZMLocuDsXjlMb7sd2d1fet+9x3jzH/FIoVHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A07QmaoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A07QmaoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766614433;
	bh=Iby3itb0hBxW2794xMd5y+Mew63DHUXf5SLLvBNu9f4=;
	h=To:Subject:From:Date:From;
	b=A07QmaoYKR/msYbiEAbWeV3eW0aFbt9f+fjFyM3ueMDWA/Nfcc0f5tUzhCLwOjqYV
	 ZeFjsBp9w673CkgdqVSUOn43SOWg83zjW1MCkJuDiMIqCH2v6V/T+pltjGyJwp6Bwp
	 HCxaQJxRXBHBs132y4F1SnkV5fRTRWc7QhhTXIKKlFeDdHFF5LfmXBTuT8dY8nBtKK
	 p9gzT/ch4FdFFLCXa0SZx6wNsQzxAPtmU+0OR+Cc7xl9hLwwvOj3mSInJBE99yGw1l
	 HSLJfi/uyP+Ezu5Epw//JLK+02FxjyAPqYgmc9KBw+h7+4n1RmmpGqzib5UdVRWKvd
	 kApliNxgybdbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD15E78498
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661443358.3265.1060995835565690306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d64a790116f88842d2c364ccb58fb5b031a64d1d1580f92944d62c5224d7031
Date: Wed, 24 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766614433

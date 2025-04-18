Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D7BEEB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744972794; cv=none; b=aWeokd4velt6ULA9ttUDA/DxlJbg3p9ZJSbVgoE16smHylK2H6chPPrcWJ1KzjuFfuRsD2FT4Bga1ib36IQUty8rohvnOpwjeqE5fIL5sPveph5b379ux7z5HrmFq7UHE85AntbhfoPMXXnU69NV4z7/vDtoMYNuy/s+Hmicgmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744972794; c=relaxed/simple;
	bh=LLfIaz4f2mH+1XxOPpiJogB2WsHAUCM8V7Kx5XLy3s0=;
	h=To:Subject:From:Message-Id:Date; b=AfDuxfAbuiqUnVUh0zRr8dMWRGOsRTx7b8j7MmRWJ5rRa+KKh14oCKA3Ydr5st5ohF5LWBX925JDuhUG1tgB9x4JQvWGkp9TQgA4MjWUq3iLxKEMEAKvzPBYNzkNSqkf25dVwAls5jadwuoQlzjsI+utsWdF55tDcNpIPcCD1MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVPmIuxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVPmIuxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5E7C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744972793;
	bh=LLfIaz4f2mH+1XxOPpiJogB2WsHAUCM8V7Kx5XLy3s0=;
	h=To:Subject:From:Date:From;
	b=VVPmIuxUgZ+9fzROPSiPCXAEBjxs01rdVzhqjv9ojYV353RTcyD/JAe2fIYB4PtZX
	 zbTSIutAlQEGOxF5UTdDFYodWpqVoIb0Hb62x3geKaO00A/zWefALiY5ciE1k/CJZJ
	 oIgqHAFdyVmsfKumtAqPaaNbC4uNgomWItHXKqBTRyPaPO+Ma4rBD88B8Tj2dRUjnE
	 7/IxtRVO8y5Xc4aFW3sNx03AkQIQRWGWb+Epij/BlDjY3K9nAgnFAfs8SGFJs0uODT
	 OB+aOF7RZKcJzeRoCg9lBC6I6a+D1RB00oEtRsRDnjpWmMcI3vQbNJ9m5ubthp2HYp
	 DvqxGfhkf+s5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964ADC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497279360.1982.2701022915571808543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b77cfbabd516cbacf2b22d32f901e2ac704181df24f4cdf10efa4fea4d1d90
Date: Fri, 18 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744972793

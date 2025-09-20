Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22ECD1FDA
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758343794; cv=none; b=BOj/n+59nenKP3YXNa0BwwAn0nCgcVMiZzziyHirFQmeLSohecj0TXpJdSha89IQeBallIetLy5yOK+VliRjMi95FCRI14YyzNH6QTXN+QqkoAUjqX1bq3ThnE90zuCHFfNPmosWDXGsFdM7o+bz2PxwRWPRrGb7DIHBsAew/4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758343794; c=relaxed/simple;
	bh=67rbVHRrx4qHoLWrO/+J57cd2kPw2ZflQ1+RVpMV/s8=;
	h=To:Subject:From:Message-Id:Date; b=V98Zx8p70TycahJ6ADQiW7h6yvs4fzu5aSAdARQuBekNoXjzcFYrNxn2LpDpxkiD4uI+yUQdpdZKnOb5YriBddnRaoaV7+K+NB7e5Ie/Fmw35rPxXFMHeP529iijNFCalTktqdU06sKG+i7a+IUHxDH5O1tcO+QibSxObjc0w/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AddV2ktI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AddV2ktI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB84C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758343793;
	bh=67rbVHRrx4qHoLWrO/+J57cd2kPw2ZflQ1+RVpMV/s8=;
	h=To:Subject:From:Date:From;
	b=AddV2ktIEt7anhqH+xWyn3JDSzGuCmpmJUK3Zil++3PAfCXHouLvULzUPakusVJpj
	 r/pOpwNFfzd/dfHkb+5b9nov9bu36yupsDaC9oIAdKa0Ze/bGGopTBF8phVm0T+H1h
	 Ul6qkGUBCdt1Q1jZiMquFgIqY3QPOs3rg+jP/pF0GbJBP3Bgj3aNCUrZ4gdaVeFdUr
	 5kIac4STLECEt9ofWrWxrUg9NaRimTFXEX+NrzMxNyGcfmz2KyiyXnsdz1X2q3wJ4l
	 W/5Hqn5P/EdcGAfFh0xZCgxXHZ+vWrOqPUNN1zpU+LM7/dROdJbBIEdpeOn0Klt4rq
	 2qTdCgtXoWZ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152FCAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175834379357.31749.7508956017412763384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a602155a117b90a977c2ae75085a76ccf15466b1d07ef28d85d2b1fe96a18c76
Date: Sat, 20 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758343793

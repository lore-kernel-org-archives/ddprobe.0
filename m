Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF628320A34
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783594714; cv=none; b=qCevtuxJCt5/WYNJUU2CYlbZwgBfenIFe1UMeNzJ67X8IPhcuuaYH1hv6yj19RTsp9iKwGixR6LusfMBMOBLxNfYHSjYS/qjPeFg5rPBL1s7NvBhF71NLW4+kOf88OZS/uvAHb3wUkEtqUGt5RyHoV7uAGIIIk8sFuBGh1n2kWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783594714; c=relaxed/simple;
	bh=ZiuePcouRCaQ3ZroPSK1EVIaM7zNofeCXIP86uwSmhU=;
	h=To:Subject:From:Message-Id:Date; b=E98lNgAnkHg5xSQ1aBx+evhuz5u5cHLsRgBxb9QCb4nl1WKWtmrSIeAJasDBrO/Z5IDXWSH5vA7EU0ucHlC8+cCmIW+uEQf0LsCT07K36Sk4KuYF+hRvXwBOYZ6+F/2ttCZA/ngzfcqMRbtaq3FTHe3PYkEacwC3LSo1HKwtWX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXOdn7UK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXOdn7UK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9768C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783594713;
	bh=ZiuePcouRCaQ3ZroPSK1EVIaM7zNofeCXIP86uwSmhU=;
	h=To:Subject:From:Date:From;
	b=SXOdn7UK7e1lEhlnYuWef02YogGS9Tg3UpYGDamI5HU0GwtLfaIkUxoXcai6uWWuQ
	 5LbHVylM703MCNaP/zqAGBH2HGjGm2UBEL1UOZUhTDWDKqP7E27qtYkQwQvNw3YmRE
	 5fym/FZdOCewbDmPAyOlboTpwRNvtaUn1EHf1sanfyQ+evCs6AuAKgm6w/BA75oZh8
	 gDSYF7x+72L/FpVKQy9i16oZk9OxPsB1yiR4OQmb9SGG462IRCmXR+fagrVZDN2USQ
	 /iGlCobMU7XoOB4K3QFkhIwMySLVKSkh5NJhSFddlE7F/e91jVM2A6QnEilTNJU/d3
	 j59Cxb7lat70w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8215C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178359471368.12696.1564428461327932711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9250762d1b15672f6a6d1337b90e4805660caa2d4f9b546cc5e60fc753dabc8b
Date: Thu, 09 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783594713

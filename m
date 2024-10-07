Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24DB15D5C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728298553; cv=none; b=CpsQqsd3oSrFimxlmpvwc0fjCK1K2jj8ddS0Fa/tC9pUGDHAkcPm35XWOkZVgr6i2nv3gneHsqXJW1WeFrHwGWRAQ9Ah2jLaHxFobPDXkP7lgzPRzz8WhwEQqgUa0kMOodSfEq1rFwElAK4eEWd8ekT9WEzYHqxt0TkrnrO/a9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728298553; c=relaxed/simple;
	bh=o2hYiyMxFJjJX5DC5UVVaoXJIqW5KvlJ73cbe9TZ8hM=;
	h=To:Subject:From:Message-Id:Date; b=CllHjl8ofmBAaZBinlwgBCEgvxXIiNJAcZavGvPzzIRCeyNi4mRZiCp+JjTIQgsnsAu9+vP3KcjC/DkRdQ1IBluhuLF4sqsaLzwL7+8UjiIHEOxRENhr/iDHZg6856MnIVF0zkw+OJ31Iby4/Gqrb32zPldox/ptQfKzqs1BI8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+5I5N0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+5I5N0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68F4C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728298553;
	bh=o2hYiyMxFJjJX5DC5UVVaoXJIqW5KvlJ73cbe9TZ8hM=;
	h=To:Subject:From:Date:From;
	b=n+5I5N0Yv3zygB71HgnEf8Gkp4Pj9beGBylu48zwsq3eqLGXi1iGk/DBE7c2EZyH2
	 a/8w57kqjg7mXwbLo64xef/oTAJxGCTaedxVO6EwbRK0tKd0y8sMNnLy3fX1tV294J
	 dsKCecV9RIKTHBT8wvzpkTOhdBfH24eM60W8QyDp3xY87Os7VVOFPgWUbNprS9KiIj
	 vmW2jiJ9ujR5AiD86vrRyd8YojrxZ4XbU82oHma9xI2gQhsnD+T6Lg4wXxBYzHmBA8
	 DqTpCmNwSQAS2L074LHUR/nAklliEh1KY7NVWLxLcKMviETB/oH+Uhlma4kDmdZqTB
	 HG4vi9o/mMkYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92093CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829855359.16525.7526153696134677548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d5b6f19541106e3cb20b82fa9b25779a85d1a4257cf12aee0f96bfb9bfdd76
Date: Mon, 07 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728298553

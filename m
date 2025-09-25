Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100E01DF27D
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758778194; cv=none; b=mWDb8RYDnVASOclSWAhyXJqIeWhOKMhzt+z3Pmvud6nGUDCmVmDXMA5GhBOiBYlsdrkS5MN/w/K61r2vy46kEEOVNjv0SMZfqyXN6RTF0zhwXB0GUWwEXOt+ZKoI904ibCQaz7FzHpgRQanz3jAksDJFEhklrnjl6Hvd6BYHdb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758778194; c=relaxed/simple;
	bh=CwDT/1WWnsDCDMC5cHuhwuJ3iL4orEoH2tW5f2LSRrw=;
	h=To:Subject:From:Message-Id:Date; b=aPZrUrR38Wi74eHIKI+ZjXLucp4zAnp2b8w0A77sO27d5TvjookD+xiQjoJWqrtcgb61y0PNOvWrfFqhYztdw8azuwyT9UZ8GmwBHX+qnt418po5LfC2JNsbuZnme2Tz92xFYeRiHcLRYrEJWiAxeWM49BwQcktA8yu8O7nJLLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFoxHzn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFoxHzn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1151C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758778193;
	bh=CwDT/1WWnsDCDMC5cHuhwuJ3iL4orEoH2tW5f2LSRrw=;
	h=To:Subject:From:Date:From;
	b=GFoxHzn4PyM0pD17FS1Fmjdq42y6ox47EHHnX/mnWBy5+rkKCYyAKoTD6n8oCZM02
	 YUDufRvmcA5auEjrJfOkfcqphmkzzPGPDkB+BT2AmBPLb7qMpK7AcJHSvcWGN8QCrl
	 wri2KrRx8BRZYvolyZ36fB4QAaP0VO1609RqDoQuiUW46B5NJNGm2WinYrVNLQpKIZ
	 mgAcnbdWXlBbBhKJH52xf73GlvT2pqVku2T2z6LIxNwkp+wjH0CJqb4d0RF897nji7
	 IloMylFTHtECpq9jV+pGDmMP9ZDki/qiKJt2IIPTup6Zmb1dgZu2tgbcClwF3R8RLV
	 spenyFKDWgAbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909EFCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877819358.24343.1352047708234728550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0c50994df5e2bf41a60575712f3647b2c8ff51ead9b16c38e9948154c61837
Date: Thu, 25 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758778193

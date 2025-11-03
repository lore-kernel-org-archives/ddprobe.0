Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFDA8488
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762129794; cv=none; b=Pu8yBuyFDMyt89t4BAduLY1bGgwDHnSTK7uON2ipQtgWMjEr8jtp1K5roULg9Bv52YQUl5iYVqAdHakLpS24h8SLXaeb8SWkgcXQJc/3YL+ZahizfYadYwnCET5oUD4mpFdERaWitzXqg5SoVMzV3Lx/n/T848c119LTgWvhyhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762129794; c=relaxed/simple;
	bh=b40dqQxaTKYqcQHKLYwOkiPm+t9rzuwtSXBeJVVYZhg=;
	h=To:Subject:From:Message-Id:Date; b=FSctKboP20GrOb1/WcJHuC+cDS+XROY56c9+JD8rjcNcGBIFqUraTZvE9FchZPI+WiBd1ObBSiWEgsxpjBTmHVcLS/OdcmPcL0WJNzGAPPjgCTh14YuXhezd+aF7jpOWAlxwQwvk7Ciyisgdj/DBrKuB74lH+1YDSiWLK7lYAIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WRA10zpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRA10zpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1917C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762129793;
	bh=b40dqQxaTKYqcQHKLYwOkiPm+t9rzuwtSXBeJVVYZhg=;
	h=To:Subject:From:Date:From;
	b=WRA10zpJutUqCTrhVGnvrQ9qmvMmhraMcACkjv2djpq+ytDONTH5OyIMUbKlSz5lm
	 k4SdEVLMzvMWxAbF8XT2ZJPi0Qs6vJSxLoyE4tqfA+3vkpJuWjmTfWhu2/XWRDNcsg
	 ThTUCezeGzpl68+DlHVYn5aAMiCvsBor4RYQRgRRfcvgQe4hU+helZ2c6h2FQhGMOb
	 0X6zbNCTol2iE417zuJe6lvbRfDnUxOVFmhZhLHynDWHwPKpJ2fpFyqVvv1aTKVQAt
	 WJaWTE+Z9O6HiRjq3j+lkgx5z1PyC1ik1jMUEtFxqnYaq3DOm+33ZVVU5bL+TkmTOh
	 3MCchSHXmJByw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A0CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212979358.8660.10109376820906841832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a05e725e45081a773fc8829ebef1654efadd5ea442dd637fe377a1ae7fdb58f6
Date: Mon, 03 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762129793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E2B2264DC
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754289594; cv=none; b=kWz8XhkDbrBf/HWvKurXDoKYl3vispfRxA0ffNN3chqnlj5uM9Z55yQxCFQp0NaWD34MkaYwyZKjAByUd9eHbFAG72l+AYvmIhHprj2VlW+sNiSYP78xbSsHjJb1qPk4B9F9RQsXn25It4y+heG97q8lUr54j9ELrdxOwohHFeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754289594; c=relaxed/simple;
	bh=v9uSgsk1lI6FIfXvS0XsTHikcXoq+S+9VH8NCU/t8uU=;
	h=To:Subject:From:Message-Id:Date; b=qwLbHek8eDz2pAJUCNA6j8bFpWrrhV+WultiREx5r6QOO1BXwJsbxWIWv1Uc49lg4YFIs1LQfx15FY0vLbxxTwPMbf82itKM8VVbNzEu2bNB63HiUc2o+t7iHHRdLOrI+M3PPXgQREIb3lh7Ygo867qfsD04vtfoF5Zv+ZppSgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un7k+SOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un7k+SOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF29C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754289593;
	bh=v9uSgsk1lI6FIfXvS0XsTHikcXoq+S+9VH8NCU/t8uU=;
	h=To:Subject:From:Date:From;
	b=un7k+SOEG//Np35c7M7dZxGRwOjI0ZUAkXGvFZs+bPuyTo/gp+1n7voFtmWlijjnU
	 BNgaFU1wOaRGwnmltzR9LrEWMoJaSnkrHBQ6Wz1lHKOo/hXflvp8LiqASgNVHz3Nf9
	 JJEyTibHG8PDsWolt84i4j3GyRBKW7HwjKIxsnJfnIki/CgNTYy+MFwp8l2fkojrph
	 6e2Q3GzWmCjofmOQ0AJ/AkDHLn1NW8ua22VWvvOKsGAz69FfrD9FQWMbe2UizX8jT/
	 Xw+OMeuehBpOxkspSeBLze38VKiJvmxFOlZ8OMR6I4/TzJxqZ4nTwh51C7pR3L3LxY
	 OpTbnW3gUD3LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947AAC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428959358.20474.3842685762379413287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c169f7506fe3583c7f4a42cce5b686451a78d12fd63bc0371aee70b7a84bda5
Date: Mon, 04 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754289593

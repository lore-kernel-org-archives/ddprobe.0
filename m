Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DA737D112
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766160834; cv=none; b=Wmk7tf8yx7BdbtnwSTButz0av9VnFtZRiYaX0NPGcloiS4g7+W06AB5WmiuwNe3ICL6EhV07SsJzbJKu9jpazs2WtpR2wdkF5GgqZJo6icXYYxRXztlE6maGDPzI3AaHggWlN8O8yK0UTaFF042x6ixfCiL6XfZhmlMPGoMLXYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766160834; c=relaxed/simple;
	bh=IakVhvpzVpZemLCbiPbWR0JmqNotJyb2TOGZdRiMGpQ=;
	h=To:Subject:From:Message-Id:Date; b=lCQvOwlG24Wj84EkC5VmuUBb4DuyIhw5MhKVLJY1oMauI6XRmEjRXkUP8PcnjiR/bUgJyQbR0J2jtLdyYoX0SHykoPQJuKawNdvPSof5yNlP4l8fm1lTb/H6ni+w7oH2AIIrQsN+OCBjQiDLQfF2LA+IQYlTjUmUk1343KGaWPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNp6fMPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNp6fMPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D9EC113D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766160833;
	bh=IakVhvpzVpZemLCbiPbWR0JmqNotJyb2TOGZdRiMGpQ=;
	h=To:Subject:From:Date:From;
	b=pNp6fMPvZvtC7OQsyI5mkI6iePFyT5Xui/7hD/eJAwU8duopl7ZqVtHXM5LG0llwm
	 iGgqPLgt4jQU1hVmkf3QMmlnln2R9+sLLY8CvL4IL9rTluYq7mqknr/XsHV7Xasuam
	 Dmo5NYETjkoiwwy5t7nDvhNmNVItWDfRhVxWqPzbUsl5q9oZL0EMMZdDACycW1ly/T
	 b5IQ3Ia/kqa2pO/EPnc9GSmRWirwPo2JGjDlLj1DQVRVNkftPMilOJpfI8RUMC8WW2
	 YaVcZK3xuqH3Kr6bjxBeMZ8FFUP9vOrPvYkGMJeniODwJT95mysrWqTyTywp2WtEVt
	 Iv4Rvtvo1Y/2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051BD7879F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616083358.22123.5796460270579864980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6c1083da4dc6fc29cb96b40eecdd8448aa34456abe5e6e686ca8ca8a0b3674
Date: Fri, 19 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766160833

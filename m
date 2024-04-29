Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D18E13AA35
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714417343; cv=none; b=KYRNKzv0hZEx4IUPs6yRTMaB8YmH6/n/OM12axlHFUCq21HbFskQSTrlXzqs4rYMr4wXBcjJjTjkBz0mQIUvuxpf8Y87yZfvEvyH7Fu1H68+gdROBp8MWLtZEY3MPNEovNdnnXcAtRfyCZ3DesfXP0cGZl0na28l9G+cPeB3Qck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714417343; c=relaxed/simple;
	bh=w43o46ZZVsux9axkvOABQj8SJrdV+ICB6QSpyqs8jWw=;
	h=To:Subject:From:Message-Id:Date; b=KIyWjDbfux5Qbdx0Taer6uoL4Qkiiw5eav+O/3E+E/SL+BQ1RfNNoLrV82pgFRmxPHjby1QAUWnTrygzi3wvohJxbGgvAwd8oGo28+i2i0zCjr3ExGtLFxcE8JXMEdzzJjSe6PqimXev0azj6D4UYvlAwET4gKEzpNcQ2mTewPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlDAeudz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlDAeudz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D95B9C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714417342;
	bh=w43o46ZZVsux9axkvOABQj8SJrdV+ICB6QSpyqs8jWw=;
	h=To:Subject:From:Date:From;
	b=DlDAeudzklVj2cOywXlc/e8wXnU6MQnvYn8ZsGGCDD/bvBevzaeCCJ/JBorjAgzyC
	 nNdGtzwKd93HD99jmVWIfzvG5yPb7CK/2KpK7IrJtfAwhtZhRPBoO15sT8EM5/oLQo
	 KKyrnsRIkdY5j8uIwQhD3C9wvUOOY0dRlruUp917hu35NHTZ0i7QrvGH3mKB2HjPok
	 FE34UWi5mN6I3/lSWVWPkcm3xwNEAxoJEdqtQ5cjbdfgL/gnMDEPQyJ3wm3183oVsL
	 KFRRqVjJPZUOkBaL9+tITAQztNiHNW7JsjY0HTTT8LBV80UzyfqSFZ4lGpK/zqAZVm
	 De9ZNl5P3zXow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4093C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171441734279.18389.7547689014516997267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81dbe65dfaf8f1496a37d89233aa75745426cb25ab3f7c8519b5f194bb7976a0
Date: Mon, 29 Apr 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714417342

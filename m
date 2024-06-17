Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A743166306
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718643503; cv=none; b=ZzGihndHCcLOJXcFZl84Ok+zEe4MvPnmZ8u60LK1GGRsAMbCpKPz2lf5mum4P/hoLsU9cIG8IQ6WbhpH288NNqII/ZAJ2Yzuv8vXVOr4hDoOM5aghDOzjT7tHl3bvNDAoYMyOW2QMhA2k2YTxlyZl8sIVYr1dUidiODfNOj09H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718643503; c=relaxed/simple;
	bh=+ZzPVdihBuwR18MTgXcMh7rk1YVz6TC0+2Nm8HNZr0U=;
	h=To:Subject:From:Message-Id:Date; b=MiStgaelT/MVB8j8RftYKrwyeRbfiZUA4BSyFBVKR2CSpAYPkwnP8PIBOJxHr43K30QoBu6bR4W3O31ia4YNd9vspQ+yWAZCcDiPBFd0MrcBqKU7t/A3n802gVcubnxIzxZ67dITT+qYye4P6WgGry93LorwCp2MmpGfXx0ajfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKPts7KF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKPts7KF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE756C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718643502;
	bh=+ZzPVdihBuwR18MTgXcMh7rk1YVz6TC0+2Nm8HNZr0U=;
	h=To:Subject:From:Date:From;
	b=rKPts7KF0JcGiP/daf/0C2dKu41TmIrVpQjmX+dlMJXsaHKg9xc2Xyx7ZAsxhLIoN
	 5MhAsusKZwCX3buZLbkSARbfUMk0WmksBbeSlyr6hZDSM8L9uZuC6dYn73721RbyZC
	 LXGhRMrPuAO3aa8QzuyMTVgrMyzGc1H6tA7TnWp5ipFnMiUtAUsoLVkbSh5dKt2Pwm
	 rSkWMZhsYt+4SetpRI/Qh4QSh9yW9T0CAzxeK10RZqH7FxaivzJygGvfxowKM3Pcly
	 tf5jxY9znfUuUHiP9rOqwaBi2QenvRsWUFybeh/Id7ApfHNLZDnhnIk9rFwK4GxiP7
	 M1HGpNoPiIzXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBAABC2BA18
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864350282.24219.15559086496616736104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4aaa01df369f713cb6a37e1bfeac5300aea69d4728316f9f9cf8c6ed6845855
Date: Mon, 17 Jun 2024 16:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718643502

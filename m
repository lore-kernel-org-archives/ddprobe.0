Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130DD314B77
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765800774; cv=none; b=RlXCguqCNCbdvfjl+UpRhZE1fv4EyXdJitrrP5x5LPdO6k0AUKK4MNJ1DI7dw53T+NWtENyzNokeBh71y0unRnx8QxgHIBEFU8b+wSSh7Q/LT/pNpi+/mXcUR/9+Zc78if/Ugq6wl9VKajjDjbofig325AQEtRrwcWzKzkHQzzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765800774; c=relaxed/simple;
	bh=qtbBwZIjRQLcblixcGrxliR2ZuvfrA++V3bPjDPZHEs=;
	h=To:Subject:From:Message-Id:Date; b=d1SMBB10hgb2UFuCtJpEITqmt7TPCzkH9kKts7am6wQtZZ3MTbDkBUGXKqCqtuq5RPUWn/kiRuXJ91khCTkZcEM3ml0mSBZYDf0rM0LRmP7hWVw3Mw7/3qhzfLPdEIupq6SikG1x21jERkf7x61YMM6ptprfmW2s8IuarloH95o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qvw2p8R4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qvw2p8R4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9B9C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765800773;
	bh=qtbBwZIjRQLcblixcGrxliR2ZuvfrA++V3bPjDPZHEs=;
	h=To:Subject:From:Date:From;
	b=Qvw2p8R4mln1J/YpjTxacZGMXBgaAOreM7+Iqu5QbSamD6wgHZaE91T//ASQoEKjI
	 6X1T8KSzGlk3HHRum+Q5OfFfoJ9mc3Jy2tO0CQWe8/UyNXPiVjkCdOgqv1tVVILY3m
	 Y+WZF0EQsSE7o3rDNFL+cV+RO961kejO9U6y2g+VwvAWcvgPp7W0lo/9fcfTRdYYkG
	 +7AhP2JsoFLfJzEu673eVoqP7spGgk/dy98dyE80XmwVM1g4p3ZsZ5tt1MLz1apHvn
	 IftjbH/Zw4Y8eIUGsoNe7rbSZ/7g3+ydqJhFcmO7wuOZ0M8dvzd1hvnOtMS8d2+dlP
	 5bGPF5u9V9QKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFD3D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580077363.11413.4589180661056787613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565062aa0de4562b75866896a441d080f2b9d4a2682c854789698e6b28cedfd7
Date: Mon, 15 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765800773

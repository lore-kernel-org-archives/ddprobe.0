Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2592E32ED2E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775070334; cv=none; b=URfv66PgDSeNLIXWchiADo0TEGH2C0j765ZVF9ZZh41Q3shAVKRVwtshxvXhFXEkO82cKbW0pneWZgk4zhcfMZj7YVhQr9op5l6r9a03ivuBwwmwmusXjxJtRQgarhfNTgDhFEUNUZa4Wiv0XVTkx8ES0lKxLpi+PxZjBVyinFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775070334; c=relaxed/simple;
	bh=4YrSz1IBsLonX4YiA1Q/fp6lX8hmI6puZ1r8CsT+/Pk=;
	h=To:Subject:From:Message-Id:Date; b=MPeoM124E/p3cllIIjj0y3YSM7ZIqCksVgU2HHs2LwGKGocoPxi2UBbd2Qg0fKIz5UshAbe5JkzoEI2h/FAFBQtndhAezZyyR7DaeMExVxFZofrGexSs1CYu+OuQyGod2jTHnlvuXsUKJ78v9ko+5slATfBunl7WH4/iweQRMsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GcqrAoqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GcqrAoqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23E5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775070333;
	bh=4YrSz1IBsLonX4YiA1Q/fp6lX8hmI6puZ1r8CsT+/Pk=;
	h=To:Subject:From:Date:From;
	b=GcqrAoqnXx/jFHkv3LiQR3veUWBusbMfzqeww75hYr76cqRKO66ryjVu7/ffLcdlw
	 HZ6IDVjzm/Z7iVy/H9bVkcHULCnpStTnV2DywHCmUaZg7qnHh7ZLiLhosw7ezRGJ4e
	 EM7yVqN3IW6TJKeF7wKT7/zPJZ337RghjTIZUNzD5Gf/5xUg42u2dwtsl5UYYun6IJ
	 JGksOHtgwuUzVm9dWsHLW4T0ocr/PppJxnVjnkM+yYGnGtx8QPsydBkl/HwONPQLY9
	 sMHRt5HEAb9oODQ5uXnLpoGEaSfQTTxeAIVdhmYz0rYLUwMPVZMSppU0HFhpoGLJj5
	 urTl6I6Aol01w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B200CD3517F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177507033369.409.15521314812879547744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7312702d68d16f817ff0d61fd8da42913e53183410176a445a0a13c215890b58
Date: Wed, 01 Apr 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775070333

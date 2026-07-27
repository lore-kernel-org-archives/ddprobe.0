Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3156C3C3F79
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785185434; cv=none; b=VWBFfxRvWFdfcxC+yEv7VtgWZaLoYxZNHA1w+WS/49p/6xJhPC5UjbVNJsECvWgt9bPslEdAX1QfBhPpjcBwJ2zBxzctHLSH+Hno2bC3NfMY837vNPydwlPqLS7DSk3VPeTuEYNw+5nF2DwZcffNA4ICFlMZIPaGezsIbh5vzmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785185434; c=relaxed/simple;
	bh=4bYJfxZA669XcUWWchB8JgIkLKEAA2tJEHujUeMb6v4=;
	h=To:Subject:From:Message-Id:Date; b=Tx7JLDiOBsuAjvvApIXW8VmckFngWdtYvu8TOtVgrrnrXWqhW46Cfpe7zE4l9xU9SULC1cJut8988qbn6MzJCc49OcjWPpQ+tGg87kN/7YAU1/JUWoWNQPRfAZRsIXygS+7atv+VuCCZrG3udQEx6DdNXbcPm9niY84FpJfAd+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGqSePp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGqSePp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA763C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785185433;
	bh=4bYJfxZA669XcUWWchB8JgIkLKEAA2tJEHujUeMb6v4=;
	h=To:Subject:From:Date:From;
	b=AGqSePp732PbxGFP7OGc+HEIdcLP7vXqtqcvquj+FcElYIBtChzUZxujXxziyuxXB
	 Up5cM59KsanmLy1o1+3Zms1zQ7e0RoKG0Y3i1FLm5ItuCK7m4rLzZgm2X4S16I7DVH
	 TEvQkTccAO67NwMrfB2Do5H06/tUiLDwt3+aMckTA0jca3yJ2tLTnxnYr842j5IM1e
	 xZJWP+ZhuDYl36403tgFckUU4MmMPJR0t0vKwTf//M2FO1FNRxED1xNcjP1zbBGOaq
	 80tIxqkPiRZvcy6FTwxwp1zu646waW0Jk9mlybiclazQert9dKqnj6NGHloJeg9P7L
	 MFfpdb6srnxMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A12C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518543368.23665.13388231381699841434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3e044a39f95380960c4df0c1ca02086d00aac2abe26dbb0de26f27a0f46be0
Date: Mon, 27 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785185433

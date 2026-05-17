Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD9973463
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778996434; cv=none; b=eUURz0LimMf8LX9/CVcyVKSdIqJV9zddCzObmpSIkZrd+NLhbBTBksRCly+N5Z8C7ctsXjV6s+t9+CGS9jegDDO3DJv7odhQPoqTxGZo5YLd24SsPpmfWFrR7NT7jbZVAW4yM7isBDNC3ml0jeK2hxYhS8bno0ZYXZ1r4jnaD8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778996434; c=relaxed/simple;
	bh=E3utWncjUGmauiONhmvEfX4oCEBERK2b4fj0oRKK5kM=;
	h=To:Subject:From:Message-Id:Date; b=Sac/rzOyIgWlBLiWgobl5VQU4sy6Az5XQ8mChr8vuEYPOH0YzP6vWPx5L5YzoTiBjgFP77WftH6ckvgbFOQYh0qM3Clo6oqynIdmd00LvubsfGRhWCuT+PfC33FtiR4dtL7wyf2mmOCY1g0Za8qrjOwoILV1Jvx/AnKc4EMcKyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8AueagC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8AueagC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C95C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778996433;
	bh=E3utWncjUGmauiONhmvEfX4oCEBERK2b4fj0oRKK5kM=;
	h=To:Subject:From:Date:From;
	b=c8AueagCv58U7AaN1RJ0Ye1/5u/Eu6Gq1qzUKevo4ynjeM8ZSz48oqqtA10o3vN5w
	 wXAMl22+y3OCHRxONZrp942SQLyWjF5uaSzbB7it15UfFvHHees684QcWKZblrCErT
	 sGAT5USODRDg+bua1MQ62Aa+nyfxlRLI6KD9wzkzIWN7Pai/5Cx0OYTupVgeHIb8qN
	 gNJrgINLmqLCbx4I788qukNUAY1t520rCv2MS+gnl4v13twQQc2P1aqEDaNqhSEv5u
	 rDU8iRYgEd9vvVDys3h9roS9gM4Cpe7L4uPYTyoz3qwj/8MqoxaHteHLQMhCh+EobL
	 j4MwxGrBbViTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B235DCD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899643372.30209.2977905798813023259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13c3c7a3a25aa316b7bd10b53e48c52a05c0f54c79b325053883bfcbe77eed54
Date: Sun, 17 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778996433

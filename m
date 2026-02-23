Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C00288C39
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771856694; cv=none; b=r0rRH2wbygFPv6zkgx8B6vhFk2aC/vvJvxqIoKrflRzJsSlG3qfylFRXktzxQ2a1WN7IPBC/s1+2fMjK4mMm13i33NoMpogWGW1/w366IfbLpPQRcf+eyeU8YbU0Jn+Yc+Jrs3APBraJXN5jUT33AZImdtuGwO1KPO87PuBHiJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771856694; c=relaxed/simple;
	bh=Ad8zVJRItv7yXLkmbz2hO+p/8fEH9k/BWGGWyzXiMmA=;
	h=To:Subject:From:Message-Id:Date; b=OKYE2UgJy+EU+017VHQ3m8+44NF36JW7ixLu7/tNzvDuGs7tna93qIYGUMQGr87gQNQAEAxBLayYbiubLHEUtarJRpUVJL57agfpAqevSr1KGsGQB2BjlT/lkRkU6p2AxArvNm2ZXPZpcy7LgPGZnLzwrWWbv3cHsETE2jqQJQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=em32KSsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="em32KSsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA95CC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771856693;
	bh=Ad8zVJRItv7yXLkmbz2hO+p/8fEH9k/BWGGWyzXiMmA=;
	h=To:Subject:From:Date:From;
	b=em32KSsDEiyxW9n6Msrz8FPugi2BXQuUOJB8zqXthmciDbfUaxHEP+Gt5B+TXnr5z
	 ToS2WnW5pFEfI0xuZnaIgWsluUM+hrn/meLuBcCWU+IzVJ/9vGFOOlJJhEWO5VsZf4
	 LByMnelr7pRRwqFVnGN09sntWUYVSLTJG2qJ5BPQEWDdJD4KguQgdCiJdV4nTje6EV
	 M6jib2j/O6ejlYpjB8QtErEP8ogJWv7erCz1MLtjixmE/tZdt+o0mKufCtse5q382l
	 vnkZbt+diHPlzOt1ysmIWp20VsuOIX4u+PGOYQPmC/9OmqyJPrAJ4pou6UTL//6DQX
	 sqH0Eg3Q0dx6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B90EA4FC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185669358.14786.10510755125323443451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55848c92a04922512cc7d14216823da8fe1d68f03cadfb4de50a3abf0cc821ad
Date: Mon, 23 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771856693

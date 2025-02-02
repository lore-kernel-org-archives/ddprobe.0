Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9361D5159
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738535754; cv=none; b=FIDl6+WK7vthq81T6yINW7+k/6KJZ0EC3eVFazWirGpOfj+WgogPfemhfGZNPaR/DjgPXK23puJTaBCOFsvSW3//6yuhaiJ4GqUXHSq46g/qWNUh4KaR0c61xLF64Gy5Pc9NMm1SQw85pS4upt2pDkT+RTaBfH2QcTEn1yL1rF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738535754; c=relaxed/simple;
	bh=MnpZYRk7XT/QAz2e7qqVzDLwKDaOpYlk18Id1ioNQ80=;
	h=To:Subject:From:Message-Id:Date; b=U557FU3nddfvMJcfz0+1ZDfErmZvam/5fwyUwRqXqO84hP4bldSKqHpiVHj2dlJxJomRL0elehiHQ7ujg956p7nO57u5y3Jer/NVprGOh3vIYcRbjPY8O4Y8J6Exz5IAPjeBnXXJ6TfC2RvB9Ue5emdvdpvH2bTGP7kyLzVfabQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9QgqwYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9QgqwYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A55C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738535753;
	bh=MnpZYRk7XT/QAz2e7qqVzDLwKDaOpYlk18Id1ioNQ80=;
	h=To:Subject:From:Date:From;
	b=d9QgqwYOHe80AYd1WBvXFJy2AMFwUEE1BZqedH+QRg6/dDU0wvSBvikGbpYbrvwHf
	 +DEYrxAdT2YeNnh+bm2u6B3xtbnPk0CcKjDlULWxvQjd/fsxga4lU0Bvuu8tQfJlup
	 mRZgcqF+EJjLrAGStB3VXwNGonZsZBSzL86RTSaWpbdNnI6vXx1N7he5MB2rLKAHbi
	 0ja3+gbC5vt69yeUuQpKYHIii1Jgyq1ElQWs8MRdYp2hVyUUPmvApqpA/r2+IehrMX
	 NVVR9c4QSiJAbpjlS5dvwvKsyRrN39LoKG3eqlurJms8XJdr9OWxrif0y2NtUyvQv6
	 c5AtT49QdFLJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF64C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853575361.22921.12052949276629697961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce3a31961e76c3cdef628b593b13b104e3cdc9aa2d488e8d8d1aedd71cdb1d2
Date: Sun, 02 Feb 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738535753

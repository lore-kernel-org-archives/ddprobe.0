Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7441411F7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717542383; cv=none; b=IcOIt8+zJDBVNr8aJ2yctSaDQgFiLYsBt2YolTLuZJL9CZ92MCK8imILfqyKo4doe9nkc7ukGv2M8YkLWITnyyCxPcUldHReasKMF5SA/nkEI6vfeGPenAnYh7aEbHQDMmVaxkPbIWWFzM1D6xtEFafY//DBd11O2CLhKI+YXOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717542383; c=relaxed/simple;
	bh=tT+F4VPVc4nj33SxHV0ZwGiCRYSV/iYNoRTsB25fqG8=;
	h=To:Subject:From:Message-Id:Date; b=qVsS5CNL8xd11QVqaLAEiViY5iQ2x6yXUqe1ax6dLELyHbjyKmt6ExpUwNoQhkSo0pTLeRSVskeFwhtJyKMRY7Fn5AYFC2UXF14Cw4LaE1rr4FwO5JPUDmr0nSBXqUDk1/JshdTUxN9CVIRfbUGUzuD/hse98hLCh+jh0v4XCRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRKQq4fy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRKQq4fy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6964C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717542382;
	bh=tT+F4VPVc4nj33SxHV0ZwGiCRYSV/iYNoRTsB25fqG8=;
	h=To:Subject:From:Date:From;
	b=RRKQq4fyKTonWcDKyGNaFRIfg/ijbhHUkh7DcHx1x2TdtKXKqg6VhXPUj9QLLDfCp
	 mWvF0bFF8q8oUXjSNFS85DBAFmTM/dJTFiKUeyATyy3Vp+YOUdCrXAbBwlPUscAQaN
	 A99rthOlNVA6Z7r9JVpQB39QH/YyJK1cnHYi86/SFbkVqE2JPnG6RefyLrYvvBUu9Q
	 h6lvStYfOrHg42H+3zIAXMV3Az4SMIat5gSSjnSZcQIQns46ecZyCbon9JzLYjjZZE
	 QNXv0Jit6Aw8CwOtleHQWrsq0TqeitMVLD7F2R9nZAyE2LPgSBRykBwsxEofNcqQuu
	 mzBJan6tQm+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E33C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754238277.4734.2223180245189648097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab49427c7ae18644a63a0973586c90aef891a778bb52b5659292f7aecaaf52a
Date: Tue, 04 Jun 2024 23:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717542382

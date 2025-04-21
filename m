Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE82262A6
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745209195; cv=none; b=DgzwXGTgWb+yteFzdCTS9iqaDu0M8w6RtRnY8NFHN+bHe3He8Oahxnmwt9+ByOtQQR7gFXaRVk86wX0OuW735BMX6WyANFhVBgR+83wzXVgL7enrKl+hYy0W8AmTug+qwKtbkLRwqeIdwJGC/HPwDjy3WGtdgedLqm3vfjc/YUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745209195; c=relaxed/simple;
	bh=03edg4hpuNf2xy5o2JWpODWD9shl/V6vsVOVdEUfITs=;
	h=To:Subject:From:Message-Id:Date; b=iYiGIfVXNZG0JYtV5pfAVM3ZQkje4AYOhbePy58XKVcXcaIxw3Db3BEX/+2dsBUYbnqCtAZ/y6a01e6l+CV80FE4WTToL+foNL+c3W17ziuM1F0RK2t1/oI2k7cEDosRZ+erPahAs/XZfpE6PL9taaP+KV1HRAI39fQTXGB6Vas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBSSmXRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBSSmXRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10D5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745209193;
	bh=03edg4hpuNf2xy5o2JWpODWD9shl/V6vsVOVdEUfITs=;
	h=To:Subject:From:Date:From;
	b=rBSSmXRz2BPSy9u2mo5Bm0iIos64jd9SlXJlNxSGbCu7UVR3Rl3lztNl0K9BfiJYB
	 +X0CYWkNqXxYqPWDrndphXKlRqH6z54hExOZC4JZd3GthMJWS1QFQM4ZERDMeInkHt
	 Dy2TI/v7cmvecFzufgmsGLL2roLVNvuXKqQdyXlMiGow3TJRLkxof90rPZlq7OwvV+
	 QZfrug4mzFWuaBZ6jPBR7fgs/qewiufhNPtZi/LFiF0LFO4bJvAcqYJtBu7rYkNFQm
	 YCkXD55osLMMAyukbS64M2oFqhxk9u5jYfj6zQa2xDcvWHxDP2KSm2U2JRlgMZwJMO
	 42TYtzfkkV0zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EB4C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520919369.18209.3996781199147929294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb996a98f6f6d29446798a09c8292b24304ab967014f3a31c803f09bdbcd41ef
Date: Mon, 21 Apr 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745209193

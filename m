Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAED224AF9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745905794; cv=none; b=jcr995e0rU5adDi6M6KJ8Mb7AfpdYnMovloMJuzRUhFR9gpjBfa3pJ/sbSPNk0IhF+Np1oeo5nZ+1TZPniHc98PbYwE1LPZAD4EPIyywybuJ1kWgq5BY1pmR+YJOttmdk81gRHwKSYYUCk/NxIWZPHD9PoszfPqOoMGhccoI790=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745905794; c=relaxed/simple;
	bh=tOljlAcPeBuGLgA0bujOPTJF67WU8FfjBHIPa+4CGP8=;
	h=To:Subject:From:Message-Id:Date; b=KJiaGkVLePO4EXKItFC1g6yZ1thVkIv5UlPoMz8jkYyMs+ryXtGhZnqALOi9nFQ/ZPeHXCi7lZjaltzbE2sjBhk2Z21XcwXwCIM2dlsSngGIaLsVl9Q3lda/7XykiXNQaKm1LyFqavlfgk2z1KEk+ysva4ymIGnkZN/XZ8UjI/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl/l1fjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl/l1fjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE01C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745905793;
	bh=tOljlAcPeBuGLgA0bujOPTJF67WU8FfjBHIPa+4CGP8=;
	h=To:Subject:From:Date:From;
	b=Rl/l1fjynEGklLXMygYHcO2L0V5i+gl5Ae9gYgh92lcx9JMmCY2L0a0bCk6JfIaXV
	 YJofdfeVVkN2jCokfMj8LvjFnRFT9ubEVvWDCqOm/WOg5C0xBz4B2+LVln3SbEUXZp
	 Iz1GVOs0CYTf55TENmW/ZPFqVwgB3IjmYx9mfmAJD4gNV6yly5hKDjW/bI4XXW0hzc
	 bP0nocc39EjGLD4hnrkjyz/fjuqZneDmyR5bb4ia1hPq4WRtKep3Lwj9mBBLFQ7AO/
	 jI4LKSL8FAnJjLKgbhwf1ce0UbYsFRyzwd6eJZiWZC79zMIr6GooVXmAtJBEretLXs
	 Z33ZWcbuyaCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBDDC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590579357.19978.9086655621008111125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b30b11f5d9dcdc3f09267f56145038dd7d60d1f62cbac5d0c326f73e0b2a2e6
Date: Tue, 29 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745905793

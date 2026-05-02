Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E2221D89
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777706854; cv=none; b=nU0HLS41oK3SzIiAZ9K7SGK0BV9Qi+xjPWyjpV+SOBGTEk4YkUjeNfmweDeTsbAZodQ0e6DuMMhh3JxcBRACFanhT975gdtjH0+bWJx7YVWaUgOGiUjOdtd9Zjav2Vh5hi0ck40g+qhgupRlkBS59S7kHsSmZYPOM2NRuXF5nwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777706854; c=relaxed/simple;
	bh=d7lP8DRWjT8OudaWPvBXISuWVRJJ7Lxz0TafMdLEopg=;
	h=To:Subject:From:Message-Id:Date; b=ZEzumw/U+YPe4RouagO+rRIaqhheXWkQAXQhv1qh5N6HsuXNa1uWQyF4yTTuBwYTPfw+6YjHSedHz0sERKx2tg2aCv/y3AV9Yb7BqAOG+Ts9DOHO6F8bFjsiFeHqZBsMFjRtJkRmw81QKAlT5vKRG8Oa83aOE9eheahUS/5TkEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eATBAvbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eATBAvbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE94C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777706853;
	bh=d7lP8DRWjT8OudaWPvBXISuWVRJJ7Lxz0TafMdLEopg=;
	h=To:Subject:From:Date:From;
	b=eATBAvbCqqZy6kOjCTTbM+kUGfEn6ZQBu6GnlOY1ZhSZu8UcPlONgPyXM/Wz79rZr
	 LL9vrLxOnMZzQUka25L7SE/In3pNjqnWg79+HTkG+mHBFPw0lNHbGH7jD4IpTq3bEt
	 1xMrcHPqRu8+7g5xSWeG4bHyhN5cNqMBBldK1z96QfZLjxQDZTepXeQDvoTqpgmwOA
	 2h/ELra7ihoGfhBh9s/z0YsiLc7mWPRgOubMirJ94cOeW+njP08rQHAsk63QkBT3/3
	 DtBSefZM2r+6xKTaiYlsvgwhwt4E7pBHNpQmMLFCKDFcabPOyEXXOvrGCDbz05kFHD
	 Wf9q7+pt3O9Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDEDCD3424
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 07:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770685368.391.18257809137052088195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 945940ba7a644e251ce292e0a2badf07142f25c63aa924e0a72c94c1c6e2b44f
Date: Sat, 02 May 2026 07:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777706853

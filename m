Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF151FD4
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764669774; cv=none; b=E0gnVWZTWr67vxgHQsjbZe3FYmDW41PdGBa8gNaTxejfFAyYvkrNoKpuY+EypkiWayY1jyfBetbn+ZcFhLHH7Uw7sC/bOkkOr79Ufwc5BhxXs5w1Kz7eqdjr+Lcx1jBXJnnudS7suiqHyiXwk1THbYVgUWkbdW2lkSQYvKK4Oa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764669774; c=relaxed/simple;
	bh=piTCI9VkRNFlARDJYOUMHDLzYG5JEpU6lgE1wqD6tyU=;
	h=To:Subject:From:Message-Id:Date; b=DxBbeIYM3X9JhWWBDhLgLef+VAPXICAkcErBqD6s/1aaOLYYQ5Eds4T+Ejr9aXV0PgLMPFSEQfR3QKn/Dgpqwwma0UZ5w/0Vz1hhyAfB5yLDyKc25pW+DX+lFiDG/wH6IHUNp2hdX6YTWWhGa7WIvunGBzUmZXWEb4Ied8C828c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBLK7cf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBLK7cf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EDBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764669773;
	bh=piTCI9VkRNFlARDJYOUMHDLzYG5JEpU6lgE1wqD6tyU=;
	h=To:Subject:From:Date:From;
	b=VBLK7cf1BkXs8SCezCBRBeDPYRVtlhOqmk0mDIxcmtYCX1+EwlKytBc+LZkCwLVA/
	 aW7mgh09r5yrOUOFjeYGoW/A6e4c2H8im6ZAo22HlV1Hqa6FXZFdNNEUmVgjxd0L8B
	 urrBqy4mdCq3vRSQqVQGcLQHaWVBKM6Fr/ms+i4Y7MHLlmB7JlRLswpEwPSh2X39dX
	 C190hDGBrAPD9Ld+D2Idcd0gepjrsUErIvxGSrJgzlc4uFOOig3G8/XPLpc9BUyj4y
	 2yyEwk1oyDpB7zRd1FNtSKvMCiu2tqq2G377a/7HKIbjHVLVhhrpXeJSFaWW4Z3o1s
	 XmVm/YMkEx7qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A3CFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176466977358.7506.11224551520180572800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c812ca422f436b32ab1d5b199e0f335f37cf3f7324e6ed7d852660b4a377404
Date: Tue, 02 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764669773

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC3432ED42
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763391714; cv=none; b=mOdhfl/b6UlgXA5u20MmXyaLwvpprIvcZRSSOTpPWZfm5xU/gDAqFpdtxQkH3BXxVp9QKHw79BWTsE1fUbEfoj2oIVE8cjEAtKuDqiKnejhh24beeQ9E4IU8u4nnjwa53yHd6t7RdpGa3EZadOsCPBId8n+OzDZD2KdDCz34CMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763391714; c=relaxed/simple;
	bh=LO9NWt/51eOVzX80jv3uEprSnysRDYilhvlXf6mfw/k=;
	h=To:Subject:From:Message-Id:Date; b=cZsFyQz16VQSNti358g87v9P+mskRCzrgYBPutQhIugsRKq/TWyEnQ58IO1E3ntglMMAt5ZTunslQSVunxhI9dTl73Q/SyaMfnv78u/GHTzaOux+sL4lVrPPdfg6cC/5OWLCNvd4QKJURMYefrOiulvzWTDrazsHVyF8yOhabmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9rq235e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9rq235e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C52AC19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763391713;
	bh=LO9NWt/51eOVzX80jv3uEprSnysRDYilhvlXf6mfw/k=;
	h=To:Subject:From:Date:From;
	b=P9rq235egEHMdKgaTtG7E3XSaNQpKXilIhWZIWUqg6k/sQ3aokeGk9SBjKCQlDd/P
	 delCk+Sz+5QI0bNLl2LaMt5AsVvEHeezin6sxV2zBpiKzVY5/2OTEMygJ4GExJXzH0
	 VeZBbkmkyUfCVRUV5NQsvq+qMh7Mg0/UabJYV3gJQHdm3r7+C1Chkwg+BUJt7rlFbQ
	 GQ/w64Ulg7vGIwzLbKUPnNjYZMIC4sTNKQXc0VesEOMcp4eo05AQV8VdaKPgKoe6gO
	 X9mO6Oh13nuA9tT8AJLh0KBVwn9GcDu0FC34Fzl0tlCHxJjW3TEsMXo1nUdZ9Ax6p/
	 pQYNJvMfcJQDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E4ECEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339171358.14444.407976145367174338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb59e883f10249a61691dcd3b97e07ae962e41cb6085eb2a08baadbf5b065d8
Date: Mon, 17 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763391713

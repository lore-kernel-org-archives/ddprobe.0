Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093212FE324
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752774594; cv=none; b=oj6g3H5f+SwlwZi+ma0SX6lGWNPUVNzN71w4tTd4rT6UbBIaHU97mU0ZPUv9Bllit2T/PlK6w1Rx9iSnn/jXWpmpLwMElXKFoWIOxp7anhRNvhOAHp/xkikp+LNysxGeZNRFAT5GfQVQKmtXxmidEpWmAuNsrzcpqJ6g9KIAodc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752774594; c=relaxed/simple;
	bh=3k40+7UdHf0RLSjWHy27bwfJqIGoOGMC6wBJrRQEnAQ=;
	h=To:Subject:From:Message-Id:Date; b=OQo7RFYKOlIImENJFqsgVtxQ6HNUpHUmwW1bsBx5+Ulk3yIn+QtuS2JN5rwf3Rv0oefllgl9TeM7ECh4uB6iyMM6js1vC/HNWMVVegsYF5IzTkZ2hfrf8LGVLygrNv686+iEv54khiGU8vHFjnCha7fzl/mkBmx/vv5iG3aLd3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4hcfcS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4hcfcS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23BCC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752774593;
	bh=3k40+7UdHf0RLSjWHy27bwfJqIGoOGMC6wBJrRQEnAQ=;
	h=To:Subject:From:Date:From;
	b=i4hcfcS8zyfVGIAedDG2wV7p2p7Z9goYDhH9HbWpQ5TBcHm1hHa0YP//jft65mnOH
	 VolmPYoVsvBxA8wx/ltN7tutE+skoGTk6CKIeRMdaxoIxaaWMxo9QaVsE0RxP7/JGd
	 1EPQOnq5B+Fc18wiYVZfNqQWj42IVnsYkjfwkXLBgb1sQIhuO02Q+BJw0eobhstpGs
	 km4tOs0oCwMnh89XN2Bm2HSMBxKyxf1XnBIAHOq4EGqdujbDD03ZlrKUDWDrN14VSd
	 UvassjLz19utP5jB4o2v10+Ze/elj+JxorsNLW454KaWOJQR7zQw9QIeDJPyaDwkyl
	 +B3awV+w0BJ8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F554C83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277459357.19474.17088715319605145520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d31d5e1574305432b6d689df7acec5bf805c87d7982c83d4477529b66e6d55b
Date: Thu, 17 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752774593

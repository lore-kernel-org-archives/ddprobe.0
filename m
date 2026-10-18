Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DF935F8C5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792345234; cv=none; b=bSDGOzbcRkNmGo2NbefWwdRqyfuEv4htsrZK+WzJ2/wMAucecXeqBDxU+kqzQDZEJ0TmaLxETHxFEKQp1Z1QZNjcVBey2Yuuy/464lNVW9hB/Es741/GRJ1eXbvzluc+o8l7+/XI0a1+HhfuK9uJn5hEjAyuiDBezpkYLfHSoEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792345234; c=relaxed/simple;
	bh=Y+zybQwnm3kpVaMQQw0L3w7PVAI4c4GjcScRJ7nIrBE=;
	h=To:Subject:From:Message-Id:Date; b=EhtMudaRzi7tqgfacyYHBqLxNX22LzIXOR3M5Ey7EOnCvarddnS4MXOh/I+0s6f/AROgjFoCocwSEJ+XHWER6qMy1hfs69alsUURcoR2yJVhEK0peU0LWN9nrz11DxvI1SkBdCCT2UPO/YK7XFi9+a559ytydOuSHT9DHQVf5qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR/SQk20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR/SQk20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB94C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792345233;
	bh=Y+zybQwnm3kpVaMQQw0L3w7PVAI4c4GjcScRJ7nIrBE=;
	h=To:Subject:From:Date:From;
	b=bR/SQk20UM1v+eUPmqRN5uPZmytZisUI2y5yf/aZbJ9GhYm+sx0+1iq1waduuYUd1
	 MvF/ONSn4C8Fae9aqCUFzOZg+q8/uKKgXQQey89bmPuhxungLKqdrfSidU/U447a29
	 G4tuTWCPTZONLygv5W0hPy+htjGCVHd+5E6Y1bE4FLqQxRuJT8YkfNKMPU1Q6kVgBt
	 pK/V2+/g7H/ZLUa2YXlFDopPbBe7X6KEVYix7RNDc17UytloVq0WQm2SL2ekY4lq9k
	 nVWm4idDwmGvVlkHsQU8o8qZ5eWUvxfe0mJ9VV1R2arSiuPvogB8n7rruSTLXwkHAR
	 63hcOkvqRvwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA34CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234523368.20563.2340997441583177206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c87c9982f9c95b20a0ace5448556e82d17e19f8dd03dc643d4ebad52848485
Date: Sun, 18 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792345233

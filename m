Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CCB420E89
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792155034; cv=none; b=sujYQh3pPQXQ1tRKPSfQCfx1hIerTYIHo9u60uOqDvbnQrRDi9n59XzktfnHVW9JLYmkb1g7t0D+9ugHfx5+CNnB/tifqIIQDq20EfIPkSz0n8A/0hqzQVYu/h/BOfd5lANApHxl1BtvC2qSQFckhvmdjsi92O9Ql7ckwxtTj/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792155034; c=relaxed/simple;
	bh=Q0W7Zelj/Ky/54isSxuNs5Ce6Q28B+KacyiysvppKII=;
	h=To:Subject:From:Message-Id:Date; b=TUuyCcmweNuShXasc6e9yp8srdxx5T8aJCAxVlsej7juTetJ9aBx+3ncfIHAcw2tC540zysp9b26Z/VfOHcoLoGenJQZxFBTWgj5cQtbUzbOq8TFkB8MC0F23qxH7zfMiwy0r6iDF066DfkO4RW+WV6huGllfizSw97+0Y5yWmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ3m0Qh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ3m0Qh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBC7C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792155033;
	bh=Q0W7Zelj/Ky/54isSxuNs5Ce6Q28B+KacyiysvppKII=;
	h=To:Subject:From:Date:From;
	b=PZ3m0Qh4Wwgn3sTQ8Zh5CMTF6/9Ro7qWZh97srfcD8mWNgcp6Anw4bm0m9Zn7gCRm
	 RN6CDXp68DzQjx+Xvv8qegF5O18HvgwwgxEYI+5wiA01GzYwFmdxuUUtMAJ8a+lp4u
	 j5Nc3hQnkib5pbFU6y9WhVmCDhDcQslFfXMWQs7HVsK/MgC6gVYStxlsSp7n2l+Ane
	 Wq8zU4ylnfw97JMP76lrnobET/YeshnpyEbKjLSKm3r8tR3jM8TqXLR/t1go7/JbtF
	 c+3kqPxnBumySHZo06llvAcN7cqFuG4qhQ/hZ1s8fQB0y2KXLLfEFgxrTabRMSUdXT
	 S80qJqi5295Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACBACCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179215503369.20163.2283913287975539794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb7883c39003f76d4ffc1db34101b97e4694ac21e3445cda8a1903f05cb9e37
Date: Fri, 16 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792155033

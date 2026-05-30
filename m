Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673431F4634
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780175674; cv=none; b=pHunGu96vEO8pBLvDzlXqMMFnkroRJ32q4XfxV5P1nEil/i9317beHaY7jF/3zhxW6SdG4u6Y3QMCJ3hTzE8fkyDeGgy/2BUhwr0actwrDR4tn05/w9QCmzC2yG5o+f54NYnME8O9trsm7jsxfOeei6rmlGXWtgK7Dpcjyhnzm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780175674; c=relaxed/simple;
	bh=Vl4k9bP7hLcxChvhmW5W2gZd8aTwvwWgbiMsO0ylLjA=;
	h=To:Subject:From:Message-Id:Date; b=HIR9L716/nszlK4eKxpij0SXb4ur51twQAAsZ7wSBXze4f15U+DMvQBh+U6fNwGiYbLQ438lkbVPTF/TOYXWFLMZjnyOQiq/WG6kTa+g6BBxd8X/AECKuVvYYOsjv1KdxYQ1QNv4dijY7kCjiXa1W9pLGT8sU2fUKpuQIIz5N64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BV5JHj22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BV5JHj22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 016E1C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780175674;
	bh=Vl4k9bP7hLcxChvhmW5W2gZd8aTwvwWgbiMsO0ylLjA=;
	h=To:Subject:From:Date:From;
	b=BV5JHj229FTB8h5vQ5G25XuYWp3I1bImUaDDLwKApNCE+uRzAmYCe9PHpkSCbRyW4
	 IL+SQr/LNYEGW1UU/3CCroiLbyqdp0WBRchoR/l9DDt2XOFcFNVB6J3EEdvM/o0Q8j
	 AnyioYItdft2O+Bje99j2ppTRD1Tcv34fzwRsd1/Bm13m09MueWpZ5DU8d4qpUvQlU
	 +9A5Iw4hTBka6373z3IOyMmQLq4YUYu6MO154rq1qI6RzVkh7YsEzVFq//T3FXhjMG
	 YhUN4OchNGAH9UwBefD86aousUBQLjsQO368y7AHp6f4rey5dRdFBZIuz0NVW0zicZ
	 mrUB+3xnnQLDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D34C6CD6E54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017567384.21492.16597309202819166155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa121a0ee11b273ad311e552f95745d1810b9325f0086587a1e124902745b9c
Date: Sat, 30 May 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780175673

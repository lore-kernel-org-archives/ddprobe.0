Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFA33246EB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769948034; cv=none; b=ozmeLRfZJero8DAuFa35zSeQWzSXgxc6tkXNqBpFSGtlWkxT2A+zz2CPrbbnORZxUAdOWarlue7rICs9XfMoZbEpDciNgtBkRJit04vix8y6SzBnG/9xDn0WcfjcETnm49oSRuniHdjFfXKSiREqi1Iq/kuPvqmgsvbGpHaHK/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769948034; c=relaxed/simple;
	bh=FZQuyGznX45gmWSHWvjo3xg231uUvmku2IcW0JmyLQw=;
	h=To:Subject:From:Message-Id:Date; b=s5fvyTOqB7aP32nnNhaQZmY3dq0DczH7aDVLMl54NkyNFVal9jfuKKcgrsxhxbv8mX2tUyoBY+4aIjcZuKOIC7SgEJfbAq8ug5AUdUEuUaU0C8bWSvgKmF8vkM8/CjkWhYsSwd6GV/NomezcDgh6bYAq56tkmIpKP2EPeiNI68U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCBKS3dw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCBKS3dw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769948033;
	bh=FZQuyGznX45gmWSHWvjo3xg231uUvmku2IcW0JmyLQw=;
	h=To:Subject:From:Date:From;
	b=jCBKS3dw+uI2XP8TTx6NkbZBvASsrsmrtWf/Ek6/qb5mOfy1aGkFvOut/5iWQk3gn
	 cvz+6wwBdYyAN0Omwi6SErPfvq8Xr9SQVPF5yClwkorSCbnRv7PZttWiRjNjmblivi
	 qAzakKSnjhTnX2AQmAPGgakYwwfLdNhIXac5kvnmG46NBM/6KFQtKWgogBUFt5GG+/
	 hDryBSliLlXVijv9ahqavjFhmYT4hqoGGm59jf1iqvxRcXeoiHZ/Y1GlD3rPFYiKdP
	 Y4xRpSwDwlIDBGJZKYj1hLF+zGSW0UGzNDvxQbKzVxFR429LHbML85ryFOYv7I6gXK
	 yB1KJI0go1OJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F89E7C719
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176994803357.31093.7205269895526145129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fb1ad53dc866440a5a19397d14c61c4f7375402283fb5f7fff3936f3e82b0c
Date: Sun, 01 Feb 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769948033

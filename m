Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BB927A11E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756252794; cv=none; b=CLgqCsWtgIbnNbnmjpWvJmkkqu6NEu5FO+qn5fcNtqTDyXcYe8A6a+y3dO/gWaLZUu4n2THCQk/87+H6jdkeyKg0DmP6TFA5GSJdqlZJSyfePmLKuge1D/O/FHGK0I41XWE2T8xdgeAYbSV8Aa945zk7sl9VKWxudJzPEALdiK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756252794; c=relaxed/simple;
	bh=zdIDeWSNHQba3RZ+sceMEG+nJX6pas+1+36DLl4ohC4=;
	h=To:Subject:From:Message-Id:Date; b=htpVAeBIRnK8rNUt2n77x1MoLaAwcBK2fcbNkN8UrJHdzJdgZjpfNRwtIjut6K+w4Tq0pxwaLGid30un3RyLdT2xGwyEUq96ABXNgInGg4/smvVJd6E+HlIM5n8jp5YJ6Vs5Yg4Fy9IeV9hWMvRhqHI0ropRQfQo5otKLtKdGww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHtueNm2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHtueNm2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D2FC113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756252793;
	bh=zdIDeWSNHQba3RZ+sceMEG+nJX6pas+1+36DLl4ohC4=;
	h=To:Subject:From:Date:From;
	b=aHtueNm2sYm2EyleQptnBkprlKwgJeDL79hTF35Q//T2HR+tSiRWKTKvdhjMF+Nh9
	 DRQaS0PHjoJlWXSn5+8UI3ilJkLWNQP+4BeBMmhl8s2NOf1sych2LJZ5bofrybhqTq
	 ucv6mA2D4r60F1gfUAiWSNQpKwDw9wDYforh4wuIVAaktvir3S0V28tWjNV6kg5lmK
	 DMabn4+mVVyHjjfeGwl8ATBe3Lrdcqq9o/Ng4YbgZVgRgEcy6QjvrOeS+ZMEzX3fOf
	 tZpQmAV53O7VmkXPjIyuLLn26aM9mPMxntXZAsf+47aWG9t3NORini+qGMbwPSswbx
	 Iiqd0yxWC4SwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B79CA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625279357.21213.6947137655549007528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3007c6d88c7ec9a473e5fc443b343ba3978044496a1cd9f3bf9acb2b70b7b785
Date: Tue, 26 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756252793

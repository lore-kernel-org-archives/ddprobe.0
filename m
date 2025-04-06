Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C4C1CA81
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743963593; cv=none; b=DpDk4vBUv1sevr4TeV8NKmPqHrhtFz2Xf06mH3uJk8sYx1ZAXdcPArVZ6U+IxfB0bJJMQJnDEFUKCb7y6KwTZ092PMuSglENbnXSLYfRwMbsQN+YA9uBcvDtM/sAA9IHYhMy680vmeZNMTQN0uLXkIbedbq7OPUM6VvKGqdgDbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743963593; c=relaxed/simple;
	bh=IzzMf4AxTkT8jApVudcyU+mPH/t4kSiIrTU2KDWLnhI=;
	h=To:Subject:From:Message-Id:Date; b=iiFV1LvpOvwkoRtzryYjLeXMU0u8GBJX2In3ggrEmreWR5rqwre5AdLOcpJGr/bkvIQSdErLzfosVfpv9x6yQlNBiK3Kj39P2jdVo9J8yb10WVesz0nt5UmUJZAVXOoq8LQYAJt3qXT45FFnD7V0si7y3xEMu8BIEhPQxcpuwMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk5vQlA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk5vQlA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60BCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743963593;
	bh=IzzMf4AxTkT8jApVudcyU+mPH/t4kSiIrTU2KDWLnhI=;
	h=To:Subject:From:Date:From;
	b=Xk5vQlA4Q4hNPkRDhLxkWg5L83ULBbZ0odcfxTfF0ZhYp49Ac8mu3rk7CknMTkcQg
	 SPljLBiDgpgzqLatp4wnz0eR5sLT6UFv9hgZrXkezxUQB1T7mCGjvCt9BJlUtJK2VF
	 Lv8/OgUWUDGm6Ffjy1mW1hcmcuzCF5VQW2/ibrpNB9+Yz2Y64BgRZiYujgYU8S0tZ+
	 OZLbB8H6CO/cdisgFi0doBc641bJHNwy8PXSSz/cMQ/j7B0eJZcTRed3/vW4EcwCGJ
	 mMnSN3rkVNAbJM0DkI6ea6c1DvmRWKrPJY8RBkc9QYE0FonMO5FTb5jfYp5Xc4oKGA
	 udk8T+IaoG/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D4CC369A1
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396359358.6587.4682292414248274596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6349b0cd9e138121eaa76b6272114f5f29e6ace8b5d6ab58bd8ed7de5375e5
Date: Sun, 06 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743963593

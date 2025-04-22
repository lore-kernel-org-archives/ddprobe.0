Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D627700A
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745320794; cv=none; b=sQgwnAOCcjapAVPbM5GOQgimMFNvQuunnRF5vFLxno+HJnvwssw9tcRAO3a/ql4L1MhtAPVvicRRKKq94x6UHT/GuDXiuVbE6P24zzqJFhPW0qdkwdfaraSNwrM/hqYgUCuXNILF6cB3wG704T4wbt3IGG+9tePAVgCU9hstP94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745320794; c=relaxed/simple;
	bh=2KrsqqgpFLiG97QskYG+znfs2jrVD+GB5R/77suc0z8=;
	h=To:Subject:From:Message-Id:Date; b=INMYj52wbz6UrvS2O9t7Gur42tBteV3FtGupOS/3w6JKqpxcXflnzdnyVQMcaVvwHuK5CblD6eBFsdapJw5hwKcbSMtTUw6DAqOQP+mOE4btAZTn8PRC5uT6R5N1m2BFh3m7Eh5a8p6bnJzF5KEv4af4Az9/t8pXW4Z6OOkhLHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKBdlp3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKBdlp3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DB5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745320793;
	bh=2KrsqqgpFLiG97QskYG+znfs2jrVD+GB5R/77suc0z8=;
	h=To:Subject:From:Date:From;
	b=VKBdlp3cmlYYwt7JO2ooPSU9uVvx91sfW/cXgz+VuDI+hFDDa3SB6oAgwAIIlF8fb
	 RHgrhHSA6O1O7CTFpyvFur2W2dlQlBmSHIxjHsF/ZYFIgvUpsTGAfvWI5whkMVRZMD
	 md5eKpE4zMwIQn96ZBfa04NgfDJGyvbZ7GVdAr6X9Kvq8kIcDRaGqjaHWX045Rp3Fb
	 a1FpkqXcTz8BawNGkzTRU4S3TJ8+E74Tm5D3WQ481GoKxYygq+K+wn88XKVVQCZj2K
	 P285f5o0+mobMAcdhOtrjpIFrzfvwGQ+z926X96fa1pyFVQFZS5WJ72ExoLYJJwJmr
	 eM6n3k3gw2TQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1DC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532079359.19623.6411225853668225485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c69fb57c2a233ef39fee1ecea85c8e308732addd3884ba514c44c3a235973b
Date: Tue, 22 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745320793

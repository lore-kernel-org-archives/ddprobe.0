Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810143EC82E
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786660834; cv=none; b=F0njg/A3qN+g+qPOixbRQGG3nnj3IbjJ2QIPK4J6rbpwABzP28XK1bRPFUrANRckzKgrUUCWQrKL0BWZk5RlgYpQeWc6osK/sfzegaf61eNyjsA9bf1W3LL3kU9318cjpGOYD1DG/SoOAe+N3F1oto2mqHGPWoKnN2OMd70Cyoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786660834; c=relaxed/simple;
	bh=lGkmKmiVRuj6DaPgPOAiJ7/1gQ+dEYwe/qIzpUwwzuc=;
	h=To:Subject:From:Message-Id:Date; b=e1jYggL90J0YKsjHG7vOSmw/Vz7Q+SxDq6Dbv1zaHNMvNS1h66xfhX7sIzeW6ox4ML6ZAk5/FqfhCR1f4cM/9ilfS7XzcIUP9+nFMtomlxFvDDK/VPOx0muhcuhN1/t49tK7uvER2dx/HLqI1e5tX0qtb3A18Gcm2+o8M/4NkZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q71q5JnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q71q5JnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D527AC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786660833;
	bh=lGkmKmiVRuj6DaPgPOAiJ7/1gQ+dEYwe/qIzpUwwzuc=;
	h=To:Subject:From:Date:From;
	b=q71q5JnXclHVZJol09pZYknOQWKJ+OmGRMAVWsA2pbxfxElpjIhaqGMH5A9tFL2xz
	 5GVMr/+WZqhBCHzrbd7UJbN07uPbukYC/2qZ1T83AMYdyzb8j9gV8fTEmtMuugNMPV
	 E4p6iPayNyuoZTq//j1THRWdiWkY0heFAGDnHku+c4hTUEM/0SgjIASPuRvjWBwwBO
	 yKZSq581j4syfejcOlXMhyGhpMq1EA64EVRT0ZhZF1KITy7OOR7qZrjh5r64H6/orb
	 n8VINMGN3UyXguelf8jnLwDdCWvGybh8jSMGBaI4Zg1P/c/Zc+oS94fLnMe7gsGBJU
	 YUD5h0q5FEF1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF42DC5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666083368.18606.10351214003604804340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53e23e04a68d817d59aef690aea26f568cd3734ad74e237f95d24bc115a1bf9
Date: Thu, 13 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786660833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3681D3AFB18
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779961354; cv=none; b=Xk9C4iNzS0AXBTkWE4Q/UVjYOrVMGX5xf5rmCi6FbGHjwpikPRjOXc1fgYWg0AfPyU6tlGUf0LulM07uPoA9r/QH5h5W6mNBaGICttBdyJJ9qCuAeFz/8vL5xNxD+SmkC3ViVWQrVYgTDmGhBtJ64b3egOBmv/PsoefAd5YObhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779961354; c=relaxed/simple;
	bh=MrM921r25EXWYYImzCwfpplX4w7v6WUtOTWzujOIEek=;
	h=To:Subject:From:Message-Id:Date; b=JymX15LkIPfNRq8Nd9bPh8LqVoyaRxclMhPaOl16aWMxjaCmUN7TJ+N4c3DjSHU1uK1btA6tTn6B5pEc03YoOTjzQzAF3AxzyLUZl3GE1pvA3VnTqvaofWf+1KXzvNUBzydvoe04Wly/unnmcJAGGc/Cr4fOzUxAOWxDOTwcfZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1XGZ170; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1XGZ170"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0E8C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779961353;
	bh=MrM921r25EXWYYImzCwfpplX4w7v6WUtOTWzujOIEek=;
	h=To:Subject:From:Date:From;
	b=Q1XGZ170ABEYdJGbZmAbuUySjgkvrVK5LCTGoLoWdjHv2c4jVXoT0GlWdMURCoZJG
	 VPECfTh62tqyYajeVyUeBoU078YSJByuTTp09Xzuf6YwmUgwXIvP7p+V9X66zy3Y+2
	 0p9UlfxUB53Rsq0L/56mjCijg1UfZcpL+IG3takqvBUR459Fm28ij4mg3MtZ8y7mAw
	 XlvqmTpoT90hse30BdoqDfk+n0eSP1+fxmlwRjMdyS3YyS4DKeM/hEGRW4/tZo+gr+
	 7EMMZ2C0XCaJFZqgBXWD/HXoHqpRME9+IE/LemKKyg8omEf4z1nTADUBTQkA6YIZNS
	 vgERZP9KQzEcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B13CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996135367.25635.3498354888757198194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cf19b5e56ece2f9148c83900dde70d7be15d1420043b68baa9b3cb53b3bb23
Date: Thu, 28 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779961353

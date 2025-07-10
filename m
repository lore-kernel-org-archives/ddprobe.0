Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306282367CB
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752176994; cv=none; b=jr6Wy/rTD32jEgr+Qefi0+9gIxRj1V022XqssLwKAxukX4eIYER8ERNMK+uOsgysAOL/7pZp2d551JSfFAp8exP1qAP08sinaj+GXQ7z5jCsB9Jqn8uiJQxhZFcc7EVjC3FHBffco9HlNSF+tzhmLo/nrYqhjUPUjNCDiBRX7GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752176994; c=relaxed/simple;
	bh=ZrYF4N2Ulg4kdBzPKDQLWQiWchufFyQLpfLEtLlt/Hw=;
	h=To:Subject:From:Message-Id:Date; b=bsQZmhfvb8CLT3xwv9fLZL6JYKewiwcH4zEFB1BWt3iE36bAr/yajfsc+QpN6IG75iVsBkYYklVDLBWYAhj2is29M3WgkptMFvkQ4WE5GoBD2PP2LFWUINvyvSo4xtGD5xKtViDmYzWBp4vRzkObayru78MEwkjf8jga0XXdDOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okJLSYmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okJLSYmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A376DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752176993;
	bh=ZrYF4N2Ulg4kdBzPKDQLWQiWchufFyQLpfLEtLlt/Hw=;
	h=To:Subject:From:Date:From;
	b=okJLSYmKEIyRkLyHxWlUIFEx88LBWA3hzAySTndHuMkqYinS2NWTwAGZ8X65/DTm7
	 RtDHUX6xjXmegNdxDgU18N60upzhlk8sN0dFwT//0jvbkGGocHEKNL99CVI/Zwn04i
	 KCnurxJOb6RQP2b2AuXX8I/Igr+LgVfFVpxtFhwoIxEyDNfdr6FPtimhdmb4uZcQTM
	 MFZM2aYghiYZeDsitBZA2E0S2s7ewmm2E/DH0AO4ZSVQV+onx5uziWi9kQWVisQqwl
	 LnEdUjSh+oKf/SwRJE2IFlo4vxpRXlGfo3rauqT9i1zpJ+PxIGikHeDpynzu/r09Nm
	 nGWC8wArFGGHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6FC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217699358.23463.7922111080231346580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c3f2d0378094448e5f626f1e4ebf8f127c584fc6a21f3db8824304584176fb5
Date: Thu, 10 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752176993

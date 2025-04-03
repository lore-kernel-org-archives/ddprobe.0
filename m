Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C5616CD33
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743712795; cv=none; b=W+yqp7hJVCK5kVLbFvMMz98nBoZ0F1qZfGK+dWxUp0rbIrcCZWLWSzVvIxv+dIOOTuIzTm/prA0krbR6e+pQMO8D/2onH4eGM+Q1AtmP87IvlMyiKCWkg/ISnr5HCQMGVvR3+1NMUTUo74Z5P2ODj/aYwbfSXmM+1iVZ2CjZfd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743712795; c=relaxed/simple;
	bh=PDqMv4lKB0BiZhuTf0offAmu+wgSNyRC0ZwuwmK3I94=;
	h=To:Subject:From:Message-Id:Date; b=FOrdGoriA18w6/xW77KTw25s0PCQwUWL2kxBXhgtCjC8/FVIS7+eWq0uyEj8E9kWxCc803QJxsdZcNcyj3YwGXU3Qs6jBlwKXV6/7tcHHjuXjGHnWwPUtvlnUqym2cdxvjofTVh+YUuH/WsGHUvB2cX2Q0zKvOt3S9kR7kA5zFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvnXAvFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvnXAvFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC21AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743712793;
	bh=PDqMv4lKB0BiZhuTf0offAmu+wgSNyRC0ZwuwmK3I94=;
	h=To:Subject:From:Date:From;
	b=tvnXAvFt4Cyh0/cwzyRe+zP6xqn/adcN9HhGUfvpn81cdWlobkNQc0DwIMjqe1tyB
	 ZBMzeEcaPN06KpeXnxGXJ5TQKvWLL2KNVIu3MqI488o0AHeN/yRHatyazwDdx2uFcP
	 JQGkDCL6SKRcnUCytla1DMluPPxvM3K+CfT+yV+reyfX23qmtwwhyyb/4yzLw5+HRY
	 0b4Tq3RaPrUXZuMbaVxpBGhOCcx4JIqLL6sLsjhk8u3SiT8l776jnaIX5OXXN+iVnV
	 +Ujz8RZ+Jd0uA2kwAkdDrcVJZn48hhpYdBg59/FLdTWYXO/qf6e2uPPBxYzoOIOpxi
	 aVU3U6yiOMnhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948EFC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371279360.22415.17508803355282170949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e766df21d6f1e7874054b0845a45afbf5ea75feab0f4d2997e572bfc0f40778
Date: Thu, 03 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743712793

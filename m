Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B56210E3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706356697; cv=none; b=WwZW+MTAPApkQA5NEcz/VQ0yExbfwovhPjkMZ4jtamn+Lha3oS3llKl0JSWVZTnDPQHrBDEh8juwuj/nhz4oLMWTqHRHXespr4k3UxC2CsTXa1ecX6wW/N1uPxnAAbtMtfa3lur0vm1r6E5oGTw37+jMaguFdWDi6I7Z6us+uMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706356697; c=relaxed/simple;
	bh=45Ng30Jvkv1AGpt31J9g+1fOZ2DigQeXCYrXxhT4FrM=;
	h=To:Subject:From:Message-Id:Date; b=Tg1o/NbxWsK+/dViRJ9Yja4+148XuSyjs6VYkoMKIClRTMGlEWJ8KITvh1SywHhDofEgKxu8ZM1qaz7eQnGEJSfdHyOzdhO9Oth6IqBhSNLoQHwRO4SIjvHr85jZ0PjDrWYb7nDKp+YoM08C+t1zssgJT/xx/IiEi+7bkJ6R3fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAzZ134j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAzZ134j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8338CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706356696;
	bh=45Ng30Jvkv1AGpt31J9g+1fOZ2DigQeXCYrXxhT4FrM=;
	h=To:Subject:From:Date:From;
	b=aAzZ134j/93VWEq1iEZlQVR7DvKZXY5y89UFOagpNPXEKTLbWymbxdK9HhCoTz5/f
	 B08rJjUbImqp+E284Px+v4ovbsaKe3yuva5k70dHhljh9862X5ub/HRYC4qjUZY/oa
	 yjRl8C7wlDH366OcECRpkMvo6YTc9D4yfbU2Ou9zsTlwbTqdFdorOiyadSurEL4Vjf
	 w0b5RHFZ7QopliyhwHT6bilyam8Gl2YpFt4Rp7ObHITfYdw0Y4JsNICKAD4QMWKXXQ
	 4UTmFEPMPMhi7c5kLVVCGTzr6RM9eZYpyYLLPtyh/TKQcA/Vhldr4KkyyEAZj6Mnp+
	 nIoo79V0uAfkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633AAC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635669637.24554.7037701971745355144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e7a5e7763e9f8abf6aa7bd7c4557891d8f35425b78e545ec5a3b00c5df9a12
Date: Sat, 27 Jan 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706356696

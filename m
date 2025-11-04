Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122A51B87EB
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762240794; cv=none; b=JR3+E3IIoMRhxTiDNy3ukJUuhh8gztOgmeJ6PkqccffZfiO8QtE6ShnQFCaPpwDCc1bCTbH01zvlZt0Xulr424bAVPP0aehAqEkprDXVM9aPjstdkva+fMhQbd2p3W9EXPmIij5rkc3jecr93qU1N3kfqEsSN9RdWBEaxlYB8nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762240794; c=relaxed/simple;
	bh=yZMpSvePzVm3CQ8qqxfy6WYqdovGShLU4UIW6VBxjIE=;
	h=To:Subject:From:Message-Id:Date; b=mkrPFh/qA0d0f8ONdM5TKeAtmpvF5WZ3vRnKYmrRiG4jv1wNTsG3FXiLZYsvNEoijZW2NwE8PR8HFoUzySmVxdRAyVfxpMQJNwupH7XyhQ4EFjBFFpUtY3UPMV6LPyNA6d7cQc48HtdZKUw96D/GspRqU7G3IHLJlN+A5292BGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YCJet9Sr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCJet9Sr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5E2C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762240793;
	bh=yZMpSvePzVm3CQ8qqxfy6WYqdovGShLU4UIW6VBxjIE=;
	h=To:Subject:From:Date:From;
	b=YCJet9Sr10PdCip1apuk+YPYxR2cXCBbhYTUWtVKQ8urXzz4MuVdH4KRG2byX14DX
	 yDVEqmawBBqNur23fiGtYvMHRTqDsSlIlEwCgYejM1Q2ttn3mE1POYLQXaQTVnPFxe
	 X3cJ4UuIqQSjA/bBkmuiGjVbgmbSDINy0L+CyrAXR3vJLjs8RbjS/qG4OR7uar7GwK
	 2dqBYjdPgeEmVL2fscUfZZUt1Gxz+6uPuHPuHqi6II9F6lrD5PxVxFXT9A0EeJYFXb
	 vUUtocaUWR5ol+KhNsJOW2Pkt2YKZheofjCPkaaLFAWjtZFfpa5FQzO/ds1XG7fbE6
	 Nnulh6t6Rx2jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B40CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176224079361.19749.4724075697302237635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac54c317eb0ee69ff39a2bfd468441d7bb6b1c8a9fd01aacd13710b0a17c127
Date: Tue, 04 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762240793

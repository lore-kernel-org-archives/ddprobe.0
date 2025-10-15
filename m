Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FD43126CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760510395; cv=none; b=iQ1HlCtadctGnFU0tXHhrtvFtu2DiF+CMb7uNGFsZv3bvh3tXNRH1UD7AplTtA9Ut5OlqIswvRTl8U1sfA12NzG7qfWQNiL99Kl4yaMnX/wVmR6mlAkJhu2sX+PHu1ZKe+NjfADgZVPHBoDC+BpXqJs+yPSC+54x0T4k7nylckw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760510395; c=relaxed/simple;
	bh=2kxeiveUj/vTS+SZHf0TNq63XlWva/qJ7XoHNWpeiUA=;
	h=To:Subject:From:Message-Id:Date; b=nesJWjZM5q6EI1zdux1rwYnltTw0XBU8WzCd5biJe96zLTK7vdUSHc/cxkBsofz6GRQr8B1mrspBqwanLRiBzJCRXI5PSot0rxO28pOeJJvtzRHHA2WA/E3jlKiC71uhZE8BoQP5BrqHI7xj52rBIvNAJSPde+SQq6bhZlNSk2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpO/tU0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpO/tU0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0034C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760510393;
	bh=2kxeiveUj/vTS+SZHf0TNq63XlWva/qJ7XoHNWpeiUA=;
	h=To:Subject:From:Date:From;
	b=WpO/tU0i/fUt5+BgJtqT1lU8MFEaoyCe76sdZ5x/mezBKPzxcm15or0BldBTLLwsV
	 bXAasZFD/WIz91eda3edwpA09rKV0acXzSYax/ku/d/iN8GqdCaOT8MKDMv+BmpXGu
	 xOgZ/wmjlviRFVrUV51VFDl8t3uqoCFcIqVC8JZ+2kAi99L/DTS+SBtNppt+O0x3s2
	 Pq3+8jMFqyVRTUmrgYMPtj/KeKIJiMe5GBg5jgdrOAGzCYUAQg9ILfv2QeW4TpctdB
	 9/xVwQy7ymXxccHoz2Ojeplkkp0d6tOHbIYs4dZu+1DR/LH75Gs+S5hVPTfV1BXmVL
	 LI9l1KBaOK9zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC32CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176051039357.14095.10671169629333045845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a105f71ce22339e540988408dbe3b0fcb79f28e02cb971900fce999c34b4be5
Date: Wed, 15 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760510393

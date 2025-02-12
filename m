Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D765A20126A
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739344853; cv=none; b=froU/uxU+j3L0vHnC9b7JZxV1tBkR1oUHiT0tUv6s986uKRtURNq+XexiOBHIEPCGRZaBmesFTlsyUBAoHfWMNSfwz0wXb/k+q5SrIxpqwrC4bFI5UALWgcHlWhGThVwCgI+64IreK05vp0ScROO9ZATa663SG7BIDeNS6i6R24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739344853; c=relaxed/simple;
	bh=PUnGo7PVwcXq54epbYa9XCDx4tnHdPcBOt0LtogHcD0=;
	h=To:Subject:From:Message-Id:Date; b=kYzXygbhlsYxtx0SEXuG1/AsbIZ9CWbn3hl4D2BizM8o65zvSBLo4YwxVMQ+LiWqQ6pk1yTCsWUziDiONs1XOYkS1i19erbJM64lbvxdBrL81VhhkdrgV/LfCDLaWI28g5BNn/x22+EBOVO4OX5xW6hIoqJ9YWegeSjx/5a524A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNYwAVfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNYwAVfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3126C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739344853;
	bh=PUnGo7PVwcXq54epbYa9XCDx4tnHdPcBOt0LtogHcD0=;
	h=To:Subject:From:Date:From;
	b=HNYwAVfxz8meDD+4yeay9EyNAbO6UwS6NrlbI2zu+cKOb+w3hqc6N5pKtNGA5e6GS
	 bpSyL81CjBqtFjZQGTxPD/uPuJR9J3nVqSdLTgEiv5UA7ajDA9ge1BgpU6pcSTQZRs
	 HoUIsJtWdp4v4vQPduGysmx4XdL4YgUe2sbZIQNDgYkeBXZPOi36bUyGXR8ZDM5CCP
	 c2WiJwcGFzyqmRTuPdGHe57Ij9QA01Wm2N5Kby64rwFDU3NllMkUvFwSwnPYyqpYkA
	 K9MylGflYpBX5+CPzUEX708Urwv7DIqFj02HDSelQwulZf0W3UZNMj7loCtJnxu8LX
	 lFsvGVrEbre4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EEFC02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173934485362.2619.15873240411670784018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46731f219eae83b0bd8629637b520968a2fa77c75d5789c63893140410fcab8e
Date: Wed, 12 Feb 2025 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739344853

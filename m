Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346E13B813D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780595674; cv=none; b=dXd0WlVeKo2C2xAkjZzweZMOYSqb8aXPBllNIF4KRaHItabv0XHHQKj8caFxiw1h0Ixv7kJ/JGXkXwDWwtBylUYe9u8AM8Tu1hSK6HdsmGIIeemVQJ6HmJxjJCv7CNW5Id3AWIx0nR6JdGJ+IyfkpPduBz+qa2fekYg0LzcfH70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780595674; c=relaxed/simple;
	bh=dPrfsypNUm7vGOQfykt98/or5T2aYZVkt/yyXvr0d7w=;
	h=To:Subject:From:Message-Id:Date; b=Us15UDQoje5ACQthxsk5l7jLZoHRpvTIufAWzlogTVYL3y5mfiHTiq9bdfQmsHdUdBmhFUBAKBpq0m0sBlhNfatdWXWX3A5BNI/eJwZcnKaa5/5HgQVtmac9jucfqeelrIMh3D0MKhMAMXAjXfH4D3Y2goRQJSDL2WsNNcaZGvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUYDet3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUYDet3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28ABC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780595673;
	bh=dPrfsypNUm7vGOQfykt98/or5T2aYZVkt/yyXvr0d7w=;
	h=To:Subject:From:Date:From;
	b=DUYDet3SajfkwjnSNLIHOKHQm61RNHt0RhSLKujEDDe+toXNVMPmIlyxR6P3Aeo+3
	 Ode5JfF+bWps65p4A5OgUwjYQxVjsXodszoU9hREvedNjjq0Rlk6anrqtnfwOpJDLr
	 tJRcL1Wf50FIU40bJNXIWNgQdlU1HW+2/owiPxdtzI/IWfsIvpR63f5cGj2wAEbqzs
	 Q6knssztJKvD6ap0XT/HYzfzzzVg6/3ZiJovfiRPSyfEtdFziPQDpilC8kAD/EQ07o
	 0D8C1XM6q83VGjX72n55td+pCb7IpPeonRycgVZodl9A26vxMaSguYkBIdIyeSzV3V
	 bHHdMOrL8OHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73B9CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059567374.30909.1858130092899682066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fb2d2d4b881fca9376eb753b9dc4f35cf44ed1993dba8fa5b977adb3196de9
Date: Thu, 04 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780595673

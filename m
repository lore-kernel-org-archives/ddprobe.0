Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F41824B22C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736584554; cv=none; b=IsHz+ooeChSwZSTS2PcEEnYEXQCSp+d0ny3Q8/D1YoOwqkhG47AR+5D79ONCFdm7H8sZ2l/x+jOUC2CyKQD/kQFbt+7xzVNVZoOpjeWyRgSGbxz2ZV5jKe+yl6ftTlkGdHwBumY60ND4n7gVb9m3GDoM4SYpy9POB/S6vzNoelI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736584554; c=relaxed/simple;
	bh=zjB+s+Rm+fr1QCFk7qioqJV/r69ejNAsTsSPx413LWY=;
	h=To:Subject:From:Message-Id:Date; b=TrUdc4RmOQEl7ekQITV9JWvNOfRr2M6U2P2UDZ7vNJKcQx0OVlPIpFqB0m0gTmQZJJmxMZqc5rX5WB3EDW7N8KzbScq1xlKZDlgJbeuHJhfPnN2iN4XfMuZzNJqyet5awlCAqxc0MSjziFjzE3bV2+el6UL1w83td/6iEWLZzrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acCh2tT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acCh2tT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5DCC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736584553;
	bh=zjB+s+Rm+fr1QCFk7qioqJV/r69ejNAsTsSPx413LWY=;
	h=To:Subject:From:Date:From;
	b=acCh2tT46LhzDzncm+z2EtD2fqYKQqrso7Dv3UWk6VeH633cKUQGl8+9hJTIrQMUn
	 fQR9bYQoFKUmjD+kom8rMhoMc9Xj2DOjs/u5+NQytyJnpk8Hf7nYY5laAGnTZCdckH
	 1UBf4vebrAYY2Dl+xScn48d0DAbjZd4b3iZ8Rb7ysvVkZiIVNbB7XcqZZHg03Ewt8R
	 KMZpKH7/6p1/j/6FQrY9tfPQKuhhuThUNePv3XJRJ52qf8nIqbHN3Er1ImuBm7sLN5
	 XN2Km5FNgabuI02jhmicJu1Eg24XFI2KIVaFjim6XtzxxPS77or0vA5HD7bs4hF1m3
	 8SO+gtP3ZB4Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9909AE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658455361.14175.360312806951365639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb8f7f4824973591c9bc38da24a8e3bb4c816354fff3aaa824f5c31699c2149
Date: Sat, 11 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736584553

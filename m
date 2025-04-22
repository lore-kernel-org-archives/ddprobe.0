Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2855120E306
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745316594; cv=none; b=irmAyv6PNDdS0LE8bpwuwHcMoow7ujxc//3Em36rp4JATEBjhJ9t5GSoy8/eXRPcKh2TKxdBS+d3X/osoBt8hU7azI8VsCH4UKuWZHG9CGkJbgK8QXXMChWseljswr5JVLyHjSJHB7rPzA3GeGGRAJSTA7NQpulEgCFhGGW5fTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745316594; c=relaxed/simple;
	bh=Q8Zp2gy2T9Iht86I8cfj9TnQN5caAc35adYzSewaARA=;
	h=To:Subject:From:Message-Id:Date; b=IKbiVtldKxJ3mVic/5Ar+XfrovT9qVHS6mTHQBbSFf+uNu2cj4HHmBVbwM/LCTYAhopu7bSFAVuZrxeW5OdexAnSeRuh1g4sXT8B7eUUiHNSA7g+VRxCVoZtR/9cKyuIqlIaGzCkLl3HZ/KnBnrVY+6gtMsKm4Yzzfo3juXJA1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsWY2NmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsWY2NmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9589C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745316593;
	bh=Q8Zp2gy2T9Iht86I8cfj9TnQN5caAc35adYzSewaARA=;
	h=To:Subject:From:Date:From;
	b=WsWY2NmEH4ssNV9r4FBICrww+Bxg4intUQojeZZqJWYM7HlpEBpH1exB8VfcXbrpH
	 6Jk0oYoGtLVV22EAA20osdfxyCN+OZi50E1UR0WEqJsvP19wCj4Cb+YcqRy2r3/us1
	 LYerdcP6fSmuTqlX4De08r+OFQ4dbG1A4ULrEFd0Tx9khc02J9xr8klHrbHJPEeUP3
	 Iq03ms7AfFX6eAiqLN8cvYG0ntC4TVPZfmw18JExeiRdS7VllykQ7h0vEe+N6IpFX9
	 zb1tcedN4MbqHPv8fugn/z7/SxhXtFI7Vq6E3eHLNHqn6eX9HJBpvbl4HoAV6yUvUS
	 /jAOempgxCuIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930BAC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531659359.8754.3655354782709761840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26dda32adfe6fc2a37f6ffeff48be53ce5a311ac1c8f2fc3b7698fedbcaf892a
Date: Tue, 22 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745316593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1792C287267
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765620174; cv=none; b=JSSiIQSQwSJtFECv98XctuJMicuqnkBKZHNoWfK2vJQQl6nmeAvemKbJTAafcCcRfgIcSrch+ovTLzIL2IGRpgxIu7U2TARh0dpXJXLPbzb5k+L4APmBLL22zhs68gCixsAaqJDdJhCqX8TqTuk9X+z2cT3hJFciJV6S/YW9pN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765620174; c=relaxed/simple;
	bh=rje7wsPP5oO1FZDfqBiF7PuJh+okImCwuBxEl10c2bU=;
	h=To:Subject:From:Message-Id:Date; b=ApdvNSQ5tTc1XRXH+24uIo9zZxpnK9+uwt60w96MUSWG3LXEApIBL0pNnJsfK5PCFE5nLsRF48bv+8rnes62+FBFOT3ioCJlrxd+0LpkLkt6jG3E62W0fGhE94fKPmYaPM/3IW5BByxw2PVLqAOUFj0RY4Woeq4ypnDYxocSMz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gds8rOs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gds8rOs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E6AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765620173;
	bh=rje7wsPP5oO1FZDfqBiF7PuJh+okImCwuBxEl10c2bU=;
	h=To:Subject:From:Date:From;
	b=gds8rOs1inM8cazx8auS9Q7e4c8hv7h3zs+OrUkJSPdLCzj6ncAz2LwUV1nNEo8t2
	 P3eP58ejUqQhb3P77p7ufe8nFAbO+ORZ2BSqdPFIV3A10YpAPomT9Bc3bmwYZWh0Xs
	 wnPg0PMqP2Pd8KLj6tgmEVS4Pv9X2+85zgK3+v0BPsqY9Jh+vzL9U9Kc+/iFt5+FB7
	 u6vAaROnwwak+8cVP7XLfULCqmBzJrGq89YfdCUYCcuGk3acvHWusqS4qtqv6knpRa
	 eEULPHsiN2jisA0GliRa5yJcrCJgjMpS5/AuljPrrrfW5+QK4j6F2h3rU6+/jfLdSk
	 5SWzGSGUwnQDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94061D5B14E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562017359.19025.16650558132382496044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60a29101e0d64abf191745c7e73e5983663f602c6a64f03f11bd1935dabe1ae
Date: Sat, 13 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765620173

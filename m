Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE532737E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769286234; cv=none; b=ZW6OQeULGr4UqN/IaYW1FjZs7TXzDZKmkwdhYOn29P4ybOPas3uq/loFdTWHm7gUDTuvQzyTsU6BeYypSubdpoghHOxF2MHhte7mczmTTPVJ2cQ1q+e218b9ouAGX7mqnbwaI4uFWZBUXfkADq1HbGCGuSAad8L23uIm2y8zU3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769286234; c=relaxed/simple;
	bh=Y6payJ2D5iB66N4EZI1VOItgVUgDNOms7ZPDq59XpK0=;
	h=To:Subject:From:Message-Id:Date; b=gxzCb/SQ2rUG5aN9mCS2mdOQgHXDEbwu8WsxWTMcM29xeLFuM84MoyWoR7L8akWDNhJ8GHm14f8PTrmTtYKqH6S3QVSvkK9FTB2RKYx+eQe9YRUma03hSwL8Cg0GW65L4JaHYLqKjNW7Y0LI2s57tqrUQXkatYiabTLTWjK0Dks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gM/Hk6va; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gM/Hk6va"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24D3C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769286233;
	bh=Y6payJ2D5iB66N4EZI1VOItgVUgDNOms7ZPDq59XpK0=;
	h=To:Subject:From:Date:From;
	b=gM/Hk6va++jRj1MeK4+YWMpEbLss4ZYZKAGSiTVXrnyiEYRMsCkbMh0UCFtbZPk85
	 4u/L1MG//leGhvgU29xLflulpNQDnXJ1JAAPOa5w/gwVAa5e+YuosTn0xQlSE1A5Si
	 FrJRP/tjbUtUP9+6aDW+MwL4nFnJJAJ0+oCnkUrIlisjnJ/KjuO3p0QcUnSjFIGbwv
	 esNtAqfsTeT/LF9igdQlqod2c2sTCd4CR3o5+CT8rejLqgyA0ePsKGFTiPLQrpuenE
	 V9dHL9f7awxeGnYPbQacA1hSEwCRnhJKFkHvYXS9r/znC+iSfX+j806XQuV1FH7+l6
	 xYFn5ygMUTOpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF0D715F6
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928623358.6821.15944116405198847285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f647351f380b45c7871c416c18819cd69b096cd9f0bfc5e4e4157075fea244
Date: Sat, 24 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769286233

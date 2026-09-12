Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380F823A562
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789186234; cv=none; b=Z1urC3Wge60f40av34dW7eOhd4jnfiMzcu0PLLeb46pYyKGjAUjJAGRawbCxtR9fqE5xYlqIXHYFo3Ol20RXs5IoBIkWiSkjxf4sLqX1oEvwESUrfhtq7+DX2J+vFM0KmnhvReqYbZPhzskYUw7iGvCb5ODODN6mXzFHowWOnQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789186234; c=relaxed/simple;
	bh=gys/xkQOdds4psdWyqTmE9cGbR2kbYd9VPwinDdajEQ=;
	h=To:Subject:From:Message-Id:Date; b=rJH/gnWef9gRAjfFszEL09KUhdrBqdc42sDqMcQt4GFIeIY7sxrndKjUelGN/E2Ak5sFivU/wXCZT7ayw09Te5Od6tdNk48wnSclWsKPSyopMSc7R18X0rM+1AD9Hyk3dSNbvVa7ZEYJTdihrrwjLBcaEB1X2zEg9a+t0Cj4euo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpsJ8/wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpsJ8/wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3098C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789186233;
	bh=gys/xkQOdds4psdWyqTmE9cGbR2kbYd9VPwinDdajEQ=;
	h=To:Subject:From:Date:From;
	b=YpsJ8/wrx05PxIOvPeyKYSV3PP0ReJEp7PhtpWVBIpQUtoStBzjrnIPqyU2RCSVuy
	 STZL2G39E/f1MK1pAlmWGLpdcrKPUOs6nIHs24uo/KSmbNXz8wPj5aE41KpaqxHznY
	 I7qabMCF5w3xYgmQjyNUZa/tLWQza64ykCcIxD/yFZxwoZUyoi1slKHopOGl8p5ysn
	 i8rTtSuLZi5nsnb35JGJQPpchssGv+8i0M8fJBs6LhcgVrkhlUohzAX1UwqW0f0RyP
	 njvs2oK9y6GYGumFReZ7z8fG96YqAmZ3zGlVUIZwyoxO26++DjeMsy/EcqJASn/Bzk
	 4lRsXOe1sUxWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBF0C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918623368.15138.1419764592817904689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6f9d0a57c93a78ddabbb11cc077d4ddf4491e81cd805713755cf80502f2216
Date: Sat, 12 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789186233

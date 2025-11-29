Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AA81DDA18
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764444174; cv=none; b=d4TTxhmrAnmNMNGqfMnyGjaw7JO4mijP8fAi9qwWOa8Xrk23HSsVUzvlmrtlOnvtXBNPIw43WQttQrdJPrInU79qqvGXChaoxxaTknuaRqxG4vRQjjPce6SsG15PWgg90nt3714zue0W+R3bUifwj6WawI3ar01PEczIpQ4MFMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764444174; c=relaxed/simple;
	bh=+gbXtioPxfpFB5PmgmK7z7L0jXH/E++WsCx6BTRU6e4=;
	h=To:Subject:From:Message-Id:Date; b=SYLeqsdmwthrgEyFB/zCCxKRpZurg+llQohxRcTFWYpY2ix2R47v2j9Vaj/Eilf9zk8W/zIMvizjX6jiUA0fsEnafx/y/8xIg9BylkXQN/ZtUbYNnxUruSfdvRz2rwNnxWuBEX3spsHSR0EQXjF707IqrMrK6dCP+lLcvdSoLro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un5jHxDy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un5jHxDy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97C2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764444173;
	bh=+gbXtioPxfpFB5PmgmK7z7L0jXH/E++WsCx6BTRU6e4=;
	h=To:Subject:From:Date:From;
	b=Un5jHxDy+veKIyfoR9WrWF7O2kuXmbZn5UmYVFEj6pBteGghVbG9bCRiEyiYrzWCU
	 UAPbFs4q50+p60I9W4tfygX0CCxZOGA+y+zAcr/Xgi27TR09uEGG+FF3uxFWQQkHUa
	 hUJ7PCC+4yDNKozfdm1vrpBtpQpCa1hdAj8BB1Id519V/1jqCtnLi6G6VpysL9KGEd
	 MpUSapLT8FnkbjXOEc0DdZ7m++KFkNFAsOc2iNCr3DnmhyUC78lJuFsjshpCgu/naD
	 27ErKU+KxOavaJcKT5qHhGHRlsUN+X+bbMeE+OZmD92F0QTq5IBz7Lp2+gqhVyYlfH
	 hVjJZIlnBc+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94219D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444417358.13059.9350585432554822383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e50c0d1ce3a4fad5203651491ba4c7c23f2357a3f02e2cafb3e1334cfc8ca9
Date: Sat, 29 Nov 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764444173

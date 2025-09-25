Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F485291C13
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758840594; cv=none; b=RbIta1qXxITIRMJnPNYTHEWi8LnBZDHzlRrtNfgEQ8D5Pa8MSY89ZvYQ48Yc+MC+e4IXnG/CVfog/pvq/HJ4NA5VCq0NSl5OgbjI4J3IxeQ5FgJw9BvmtQ1mImvy9jZn2gAblCBJ6iMiQBveVJfPQadvlKA+oBMxBDx/p1a6Q5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758840594; c=relaxed/simple;
	bh=SD7knyUpeqavXwXxVT6vHteZLwGQiW5m6KFDCilPacc=;
	h=To:Subject:From:Message-Id:Date; b=dZzsqAXPfVgCS3ALtP4RERL5bQY46ZV9nud+yvGH2PefwtTxYW/2AeyUFn5i+TNeUsxhRT6uhaajpdTMNnL3rSkxiEAEqlSg4NLlad/aTOyRv7plV7H87IUAFs2hIB1PvK5dcemNe1mablp1bZ1GsQFyOqNw1lu2ZXujZtZhw0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R16+xibZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R16+xibZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BD1C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758840593;
	bh=SD7knyUpeqavXwXxVT6vHteZLwGQiW5m6KFDCilPacc=;
	h=To:Subject:From:Date:From;
	b=R16+xibZzcVlWyGMRNgCpwy5IG8SZw2Dto2mwf1fK0lYxj2jwjWjzUkh80fdm+/Ay
	 BAk9BvbkZ1v0I+UrvKQv3WE4n6UUGuPDDS0HnEeD0YHA4L8nXZfLd8oC2ggpO/LtWW
	 U6cFIVX1f2pjs22a744jitrM5VChW541rfxKF78WF0Jrr4aCXCRkyGpVSOKRmWq+Rp
	 /O3X+T7Ll23/Tgqty1IVBhwU9JrwoHQmwLCA324YQjo4Ur8lIhHHhNZm+HtK3bUpIa
	 GlsunS0dx51Pa2Fg+nO88QwYmCnbdH8w9u0wlIwPwV/fDcncXCBtrepiXSaE/CSt05
	 E77rYsKAuYdpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A6CAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884059358.4977.13826119407956722378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608c4a5b1d1fcf519ee0a286605f453b2e203dff16fe25da44b21f3164bf2ac3
Date: Thu, 25 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758840593

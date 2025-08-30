Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373D549620
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756583994; cv=none; b=mdXm80hrzMMFg8D013zPCL6qUe2AbZXe6kzFRlFPvyqaSm7bvaSybUffqI4ljxZFqr3hxl9q101zUZQ7bd5y1LPek6t9SB/9jNOWplT9dtSzaFbUOLfnjo6xWhijRjQnplBDeZicSFIkXZLyhsOoJEb0TDdiEFxqHdgg+Pxdqmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756583994; c=relaxed/simple;
	bh=HRXEMUNhC5nFymQaAXeddfzW/e8YZoDwkwYtn8YluDw=;
	h=To:Subject:From:Message-Id:Date; b=b4i0los5w3pe/BKw8nEk8wIRQPTSsO5rJgtxkofwyJByzoQ2OhiSuif2joSDVQ8kQgKwK17IoXHbnXGo7U7u2hWvqpy2nASwKftFX2ayc4NPvW5VvZSvwxH3Wq6e8+OZt7ouDXNv2MjTCZ0nwbSoUZxFkDl6kAckim+FVsoNxxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyyVwrGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyyVwrGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3827C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756583993;
	bh=HRXEMUNhC5nFymQaAXeddfzW/e8YZoDwkwYtn8YluDw=;
	h=To:Subject:From:Date:From;
	b=RyyVwrGfKwQPkPhzbev0xOEgpiWbKAqX7j4FgBZAurIIs7AgCBXQuuliUDsnHGdZa
	 ZxsR3DmMNHote0NZSibdjqoaCue7UnWe7Vu6pp/lWOxxkslnKGVz25EGQ/gdXw2TyY
	 WS+dPga4BF+HMwCmG7keQIyFbb5I7hcQOs/0/wUrl7UNBpmXua5HIFmKhEMhjrfg0Q
	 kNGYPB23q6xpBoY210+Meurvr/QzqPQ2sJ9pktDLj7po6KcD0qchS84L+INiLgLhH2
	 p75KErbsayXJ/0CHFCA0MRnxQVUVjRqLOt/iuLNruuQFcABUl5QPSu/iu0rfS+wNvF
	 v168GfXE/ocQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206BCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658399357.28473.17584606530595059384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b934782ccb15d81bd96448b61e27785d9cedde1d01bc3e5142df8f77bca249fc
Date: Sat, 30 Aug 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756583993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA8334FF79
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789534834; cv=none; b=qf3lQp37na2PNLlopMjrk9hsOFBT1jOXwDhN1HCoBYuG2x+nZlT4q26W6YcaNj059qHh3rTF98BhisETK0xuS9yG/XenoEEK9S0Uq8EzWuu4boT+uWjI30WBoyTsQ6VzXtR/EA2ch0P0TwGJRNpzkMZRmOyCP2rzgrpVIhZK8xU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789534834; c=relaxed/simple;
	bh=nmZKv0bP0chcfOrQ9qrFegujbSerUnXOBPfgACeHb4M=;
	h=To:Subject:From:Message-Id:Date; b=D/qNEX8WFjcgxIvqI2soLYnSZnHnFSZLcnKpa1TpWjjDKm5G90wh+eR9uSAWCsMg9XM/vGDlp4ujWSXYzeNcMn1NeOvqYE7YbCQE6P5aO0G6r6CxZUmBqLl/aH0F4iyWfNPBXdwkmSWhuBYzMrrJWgfJiFlSIliw8ODr5hhKd3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmI+zOK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmI+zOK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC77EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789534833;
	bh=nmZKv0bP0chcfOrQ9qrFegujbSerUnXOBPfgACeHb4M=;
	h=To:Subject:From:Date:From;
	b=LmI+zOK+LoOKlEMPDLqUKy5j2NsYtXagO8FnmYkbP1n+XCfoMliQwwejGLReO3SKB
	 apH2gVp65ayl9xkMyCtSSWl1r3Tf+5hIu1aU4Kk3/M5zA9bXIuTZ95VXnHFC4JJGi0
	 ZubsRhoBSFzQVsjw2IaqE0Uea/53FMRWlSkDf2K/e6LRPjUIjdK+W3VRuepJjX2274
	 oDmwQ3K1SGfCi1xeB18fZcB3PNgxwosmUHu00S7jgS/KLqoZskcbhX9vTMNr5tNudn
	 bf3f3Mps0PaiznZNxhV7S83d6gOSZ/TaaP7YDpXlOmW42gcwE242KTBB+Q0021JEeR
	 BGcE+z04ymWnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D2C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953483369.16365.5511259508381506214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49470dcd57905d153b2102269d141b1eb8648f1825cfd17bc5c62967723006c8
Date: Wed, 16 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789534833

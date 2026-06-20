Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E68D18DB35
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781946994; cv=none; b=TwUzwdElNB6wb9ZfqoSQgU2cp0XJEWxvoLOmLBOkkfbKRdROto0QmjbLQ5V7EQZsIdBYJ6W5zPkq836aorW0tMiCCXiMPxlpWabzGvNwWxmrAiJ7clh5KSnQW+S4wP0TykQUhTaqhR2pIiX3oYrTdVWZYcsQ5IVIXvarhtwZBxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781946994; c=relaxed/simple;
	bh=t5HWoNyUAIva49vtGIer0IwOeZPbYfl2whQetjiXmIU=;
	h=To:Subject:From:Message-Id:Date; b=lkgzqyFz5UBrOlhvTxTIXq8SmUtLe4Ug09A712TVmZRr8EeyUc69BOjCYO74503QPhDU+cggbR7F6RS8pBYos8RmCPGHICCsd02riR/KDrNyQjlo92mH+smqryAtHQfsdPOJkhufEHbuhbVH8LG7TCsd3gxAuktl3NtsLyImLrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3RMtz5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3RMtz5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D590CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781946993;
	bh=t5HWoNyUAIva49vtGIer0IwOeZPbYfl2whQetjiXmIU=;
	h=To:Subject:From:Date:From;
	b=l3RMtz5y50D8NLQx/Pe01HHUAZoZWH4dJUklrgayOYInrwxu95wbaXvfw6NoOrP+S
	 dDvaYKcm5WVDjuG6z6dfWs/YauAZBI13/+21SgBb3lACE4qRZ0X5GoTleTc4dzEnPZ
	 FCGBY+qXk0bdeVUzkhFbPCRQNsml3pZdnd/7n2mqoJrd2Pi/9FOfuYxzGbW7piWyRR
	 16it1Pxm+C8U5csjSs+drvXBSd/C69lVaf266Xr2Ewiw8bR9Vq9cPCKAdncmjfJeHC
	 NkaU29cVjezHFkCKW2rU/5tXzrT1UvJ8eX0davqqVt7XAR9uBJxSDINfIOhNgwwZap
	 KkXxDY5H9T/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE205CDB466
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194699374.7783.10694680750163079977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263b7fe7473d56324a4d981c53785d2c90da9d83b3da877cf9f1ff3e503c2c87
Date: Sat, 20 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781946993

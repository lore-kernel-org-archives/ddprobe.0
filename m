Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A404161939
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720724243; cv=none; b=bzjVscCU0c0okRKLBSVZNRD1eCLm9XnXu8Nac52iVFXtDVcl9S6AbpE2nPO67iQMwvQKZdgg74veIxIz+yxERyP5eexmnZZJ+xWlHGkM85AFrq4Qz5jHxNtBUkLgKaPr20vviCuFCGSlwQCO4PrGnQOp+sYnEe0klPD1R9ri9nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720724243; c=relaxed/simple;
	bh=XYHZ6CtBNvS/AV1rfCbb4QvgntOjVnBVZ//bX47wdRM=;
	h=To:Subject:From:Message-Id:Date; b=H+zgcdVy9U2lCEu7+28QKbw8Zxm71JmCkTY6SWfnbE5OpkqULpyFnKG/tLBKctHPgRLFX6u/bJKBzAMVPRS3HoLL3jNSckxaDFsZUUGOedeHbXQmGinWCYbJxgtSV2jdMpY3mh83Mt4MuJs5EP5M7ReMgrGD2hOHIMwv+MjrKYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkgZFEJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkgZFEJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13C9C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720724242;
	bh=XYHZ6CtBNvS/AV1rfCbb4QvgntOjVnBVZ//bX47wdRM=;
	h=To:Subject:From:Date:From;
	b=LkgZFEJloV90KtH+Uxv+GTyvCt89zVLbk8iueqpPWbowsQjUoDuhH+WvZ49EhuMcA
	 KbgS5rUAOUkTRkwLNunHW0qPZaN3wkFLf6Ky7jJ/6pxGXcMRtFvldY8HENTTXligdw
	 F5ZAxQ8pNoo+zkPgLXzqJDN5yk38ZUjRwdgprvvXpnZZBODfS9vlbOBRJtcMLc+2zW
	 Bx+ORa0HGeLVi6aG7+g2lvc1/GRGnD7X8lwZJFHJL4Q/g1+ODkQORqoV2L8dTBwhir
	 Be38vYvJoSmmhkos2Ud7AweywzZaSr9rJGtaHpGOCdAsMWyVgbLgE9VffKhGP1icTw
	 JxjLopgL0VZUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC636C3DA4B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 18:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172072424276.7025.4503727524755308389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95a7d4ebb4ccd26bc9084eb7a9acf9991a242791951d8a4b33654b5874459763
Date: Thu, 11 Jul 2024 18:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720724242

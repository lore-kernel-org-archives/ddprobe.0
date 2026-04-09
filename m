Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B2A34C815
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775729134; cv=none; b=K4zUQga/zTr3j1zldmLrkTevCT2i6IDnR/6UmjMUvlJ0L1wB4Xxwcps+9qGBF3kXyXIDzXAGFA2KOS7eGjlnTGqkr+2ExhSlEPoVSlZsE5Ak1WLtHKJsHegl/SY4xAJxq/N1GyEuxyaBl5Lu1HRXjE1dAwkOQvrrIxK7MkVtN1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775729134; c=relaxed/simple;
	bh=8hDw3HY2AJW6Xsrsk9O43MGpAyrG04/ghMqXJikpboo=;
	h=To:Subject:From:Message-Id:Date; b=QBZetc22PNbY9ELuORNmTfjtzPdazbJ3eUiFEit0WnaW00QP5qq5/01gpM4AXNJE6ppl6sXJ7qBJ5aWCq1rnQEVltIEKeCbA2lOXeacVUNktZpa2qxSKquy4nBGe6L2AHGRQzKUQWCtua9shPnSfOBnIzDmswv9eqvtIuLqpCdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=modt38vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="modt38vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA77EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775729133;
	bh=8hDw3HY2AJW6Xsrsk9O43MGpAyrG04/ghMqXJikpboo=;
	h=To:Subject:From:Date:From;
	b=modt38vbmO5m2SH6jTPhlkKjCLUmnJOpcs/Xo7edQvlFglDDIuAmZlKmeVujQoUi0
	 yV1kKgVTbd6xRvrFhCUKi/PFb5DTh76MrOMqOPNb7PXEKet3+NM3EpJ/AW/DQzDmMh
	 XCUL1HpVhjidVar//gJW0gIJTUaSzru/Zp9SLrf2FOAIAuBtrzfQ/Q+Pw7UsiEjybz
	 tNtwKIYq15gCrZjmU2uWpobhYeWzN2zBf5SMxAAoqVpfDbVGZRs+D0zfsXSWaUUz0l
	 VxwQsSyKGfhEnaEP9airv+j4PfMls64ItnaZuX4b2VJXvaUHBI9xz+C7aZd2PxWArB
	 yAStF2xhXajJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B778DEA3C21
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572913373.24990.6688180671523626605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5977379bf4305e7bd3ff57315009f8e34cfa1b6636c89686284c92f66d917f
Date: Thu, 09 Apr 2026 10:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775729133

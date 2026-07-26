Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AE2378D92
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785103834; cv=none; b=hEN1gqE1F8Ez4C1IKxZTwniy2K178mUo7AaBOAcJLJq7vPnBDvdDnrJSvUvQkNDj/qaUnXvGeCoHS3nz7WS8JhvRDEqazHRCkE+y259/xUGjed2Bu/UOAJRo/7ioKOaiosiRIxg8jT7aJZUaThEdmZTr0Rtg6HLmCtmM40bT0Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785103834; c=relaxed/simple;
	bh=Vx3Ad7kbaV5lBYsgia5pi3Vtdbx4D0xZzZ5cSbBVyI0=;
	h=To:Subject:From:Message-Id:Date; b=jo7HgtP82QVM9GPiSoG0COjZH3qFsoG3Y0oY0AzL2Wp4hhmAMS9KbepCQ+DxJG2nahhKG1RlIkg/hGlH45oNmSyx0xLDBJ89440yiiEiOwrbAx1eRh36D6jlRdiAYoqqUiZCLGC+1W6zsB0vYS3mp0ip6VkoqDputO69HfTPYew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7F/F/nI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7F/F/nI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA13AC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785103833;
	bh=Vx3Ad7kbaV5lBYsgia5pi3Vtdbx4D0xZzZ5cSbBVyI0=;
	h=To:Subject:From:Date:From;
	b=q7F/F/nI5eLu80CJrgjCNc/ip4tSP2qViFROyopVneQEN0w5VP/h0gAkuo8WbdoAj
	 rLcAco3ctd/bFojvaCo3JgW25jzx/tF/61LvOoGzzsrE7sY2ItokJzsbgH3zylaBsu
	 8+aAtjVGQIr1QbjSVsRLJh33z2QJQ8/OSXeqoF6Abs5sG1P1bKiiZ0IyWrMf6T3mDW
	 QGGMtWHde4uWJ+WTXrwgv52J9ccB/WP9dpdH5xxQxECbOp5w/JtHDY8m4GH9bWZWsz
	 XzR2WeZhfMDVi4CM6+7V2XbIrbNWXnbyEcdIwR0JShHHvamBuRPYnhqg75tKB1MXDh
	 Xg25iAwtxemDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87DBC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178510383368.17415.7242355408940074054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bda1faf942728454bf5610d8c873ccc953f58c32b92176f01183e59e6097932
Date: Sun, 26 Jul 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785103833

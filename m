Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172C33603EC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776900454; cv=none; b=JJVAaBGFs1xFjKAlznVJVhmk7DXP7KmLXJGOiTKVH16jde61KSSrt44cSpv2PDkkZqQbeYI6pfRBzMqS238q+oLlwuA+Ar2qOmRz7TC9+bE7DD7oAPffrQNr3jgZeSoOX6ZmbGdTXGgI9psbg3ER/rdWbGtpfbAX/l+s3vkhfqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776900454; c=relaxed/simple;
	bh=rcBvsMFF5JrpQPdE+V1Legjjw+KgkmWQ82R4+OqgIr4=;
	h=To:Subject:From:Message-Id:Date; b=oI/IK76Oqqk2H0oxlIIWywCqawIfqKEouQz/NKgGvOLtIEdhj6ET2o26nfsjMK/0DDBgLcSERP4GMJaco+IS/gv3OxKDXRIK0vOP5ai2alYLj68GEGCuHbK/7rNvtfJv6wetE5o2cKAYKJUuVBoZBB1hzhhz5ats741trSJPurs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDa9UueD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDa9UueD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD26C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776900453;
	bh=rcBvsMFF5JrpQPdE+V1Legjjw+KgkmWQ82R4+OqgIr4=;
	h=To:Subject:From:Date:From;
	b=tDa9UueD9bH604TkvaU543uYvfpKzeiB4ra/PcQDJakr54IIdpSF5nTDGyRKEieM0
	 KRl8Dg/p0oCQRG8RYyA/KGc6lNNCXffwbR4wcRx8PPe4Wc8o9cbZwfrs6nbdfSr0L7
	 odM7PtPVJpp0vzMTu7pxaCNKFjUq24uQ3x1c2HKpik6+ckkiijuzk1lOg+oZPESac2
	 zSLhJMkHj6bQ6gVrBrlhS5swvhUFNKGizotsjOHRPESsDUp4tXtwYA3PXpb/4BiihG
	 EaKukziGvnBxfMdtr8be6Ond5mMDr1f66rdSBYxh3a9H7JG1dHxvRgP0ppMQ+iciQS
	 Gcrq8J0DaLDYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF51CFAD3E1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177690045368.18618.8165185599898929294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d39b13fa4d719799c4926eb576b2e8b365f4db423cbe5658ff88ae707a2487c
Date: Wed, 22 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776900453

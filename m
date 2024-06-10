Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484B3148841
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718042303; cv=none; b=cWwFnrr6v8qxwFnDxoK1PVFsqMf9oBJ2SsLxwCxKUCNFpPnG9vqEDEEugMaA7GX89hGR+PCcWt56fWxLGLwU1HAwQhhpiNdu4YLWRoGeAx7YU+UMkUy2mDwNdgBjmXq87/Eh9dfqZ9UtJ6a6Uj+pjq6o5Fr+PhJ4tQs+Ffxii14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718042303; c=relaxed/simple;
	bh=rPr33hpIb33I1o/0XZkUn+F4CP3GlXyaimHGQlfKWEI=;
	h=To:Subject:From:Message-Id:Date; b=P8RxShrg7jorTdL/3xqmeCEBGUF3r0yx+iMIvU1smtOb3byXJ3IXpMJB7v+B5cRjDrQ/grLns1NOcspnxZJBajOkQ4ekHxfg1cZsUyF1HQvP3Hov6Lft1xNdvLorV4lTyyG1VMUWfmEuaVDcIyNQUXQAMkSVZsZuXVsPCaZ4urU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAAKwQME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAAKwQME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE5AC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718042302;
	bh=rPr33hpIb33I1o/0XZkUn+F4CP3GlXyaimHGQlfKWEI=;
	h=To:Subject:From:Date:From;
	b=SAAKwQME9ah+WgOFX+KD5yu+Ue5jhIghtHF1llzGKDgGWd1zTDTd1CbToINUzko+t
	 G1y/m40kK4dbzBQcouZkNM2tpb08hq2Ya5K6jvtDAwR7j0WnbCj+IboQGnIIIXyXKn
	 Oyr2/S2pxiYhpd5MgJUtSweyULNoYtfe9rj86skS8b+aNdpYYZbJW+T0grYD9yCqHE
	 6Dk4m6UXTaZUfSD4SGm+xYEESZ59AcUCZAxfPaA91RMvWsEdDjor0D0h2Lq0mY9m13
	 ZkJBDgK43qY3eSfRdcCLF45pJlvt+lPrkT9m1UBdaQvIHQjqH0Mq/D4fkfS+MLu8nv
	 g31xwutNj99ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB35C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 17:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171804230276.12712.16569655938565926096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d06a0e80eca0bd3721931124b4bee9faebb5dad6d23e4cf7041c154355fd53
Date: Mon, 10 Jun 2024 17:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718042302

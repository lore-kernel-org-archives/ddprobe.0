Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0408274641
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772784894; cv=none; b=gVogDNIryl+C1xYLCk3DkZNOoYpaKoMAkJ4qh3aY64I2ZFW8/FgVrAUu1+uH9q/KkuwYRrctNQciVFTtQGngmRA8fmmSC8H5Vwh/Vr/rc2N1SGhw842b0dI6NIoTSDWRFn+ANg2QM52E3buYWmkdSI9aHKTKmWfwDLg71rfglIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772784894; c=relaxed/simple;
	bh=yKnkBWtx5P4u2Ur8783PVS6r39REQFLdJ6NmLyCyMUA=;
	h=To:Subject:From:Message-Id:Date; b=RMT/QjHKzAvpFcF92vPXUqfnjL+/xodkaZEoDv8tVQrMi53/cints7PRXflPByG/+HxU1Z93fNzCzAXEMdpOdMgxbAf5TgUxFaByda/BrZ0Ao6IihZK/KubBBR/BdU/PjtGDllMFVirxnIqH7w9u7Yf8FNpHKKJUi4q41vu1X90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSz3YzDY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSz3YzDY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF8FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772784893;
	bh=yKnkBWtx5P4u2Ur8783PVS6r39REQFLdJ6NmLyCyMUA=;
	h=To:Subject:From:Date:From;
	b=fSz3YzDYLS+TZ1nx4RBFZ1sBf2Up2+uf0ozXULOANhw5XF+h9XeWhnUj0eHyqe5At
	 DkP64ttbKeItuLa+IDlgGEUdwyGLo6LgONtLbtyyBTQiy26V814SpPkiUtGXZTmZ1N
	 k8kvLnx4kEVSEEVG8WXWYtbJJtVc4Hx+yP3r2/iyyywXSzLCNqT1OzTpGKiYyIqyGR
	 IS8qMWP8jvMDqSH2fchrz541a77lhGKOZ/iUiGltzDJf0qw6Y1qI2r6FlBgNruuTWk
	 fC67cZXIykTyS6VFSUjJlBCuUlSpZyAKRhUKVaZcqPSa09Cq5g5oWR42eCiOGg+X8k
	 DH2nHNw/f0qFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F511F01804
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278489357.10991.7863845242347764591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5ad5e89d490b55fe1e3e95def10ba8dd47a0273a5262c3d5773cb9d33b3bcf
Date: Fri, 06 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772784893

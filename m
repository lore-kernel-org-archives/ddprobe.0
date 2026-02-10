Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64AF21B9C0
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770762833; cv=none; b=o+xgBbCqYLHUErugWfFz0F529ExLepBdBDjIsJW25e/777CuEHj6tEjZEGkcs5Ja4B9Xt0nHAmNMx8dPdZvhh6gRnJ6KCgwU+I+oUmr97Ym6M3LTRlDWehu6Prh+4vbAV7KNdbaSqdusLABFOLU/1VL4ZzCmkJqZttJmbF8dW5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770762833; c=relaxed/simple;
	bh=FvUcoDb5BzCGZAuTgQQZ4YzIFSUbu6BmZLo4d47ccmI=;
	h=To:Subject:From:Message-Id:Date; b=tlUQdCylDEAaOUfyps1wYNq/S9fmcs45Of6hdMKD3L9BUenFEJxBkhW+TfOP34vDc3iUbO/lWCClFw6g+sC5F/RYnWPo157I+/PAJ/g9ve1rT7X+v6o/Ynb/ubN+ghLMaEkaMPxqaIeuAQVxacLtly5h0nr08Hmphxge4aBH9+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvmBSFkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvmBSFkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA3EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770762833;
	bh=FvUcoDb5BzCGZAuTgQQZ4YzIFSUbu6BmZLo4d47ccmI=;
	h=To:Subject:From:Date:From;
	b=fvmBSFkVTVYUmp1G14ickvphfesvyGKeR3XtXZ5B1oHrvBnVDy4fK/jdVZzNb/Xnf
	 WH/4nxEboCMHKvBRWZf58PDMPhU6LGpz3MOfVEaLBGVhnGjUA0v3jlpB4E5n4h/K5Q
	 apoUCtbr89jsQs5UOWzBeJSD+6m9dkCm1FYlYEUMS1Od9v3gB0X/pD75L5l1FhjEzk
	 8riIuec1VGHBiySRM9YAgybav7WNT9svWg5oM986QdDdfd4gJYTQoFfrArx2BB/GRu
	 8CcI0XJGwciXA2hNdqaZfor5s2chwjMbFH4VcAOTGLihmywoUgQdjofLcxlEyj03jl
	 fdwlbE7K4MkRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C71BEB271F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076283360.29516.6477707701231852847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3e1a3f120f0fc0bf1872bfdeba142978e0632214fd185883eb94e8eef33d27
Date: Tue, 10 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770762833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 995BC54B1C3
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791995434; cv=none; b=kXaCO6vPUg787mMDqk3MxTrL3S4ya2BZNNIuDpXP4aALpwclXDxMhNOaLmJlrCe3Ocu3d0OJ+8DiouFMpRGMQAtGG6xN39+xG+7TFylOrbFXWSv2IMCqJ4TWmZsiDMVeFtbB5wYb67tBY6Ij15mbn23QBmtl/03nkL/rM3w9OBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791995434; c=relaxed/simple;
	bh=B8893IkyPjSm7r4nTgVrZTQyrkF6hl6nJqUavsmGZgQ=;
	h=To:Subject:From:Message-Id:Date; b=hZxkuUwde0v0OgzGhj1Wqnu3em7TdeTKCV8MQ7b2TbcNaGQYG0b0YHcCECsT8RJEy1RxeF5JVBMEDP/+ldb/9W6HDo6ljmOE37QRfrj+u/QmyMUO4K9vYQa2YJShP1i3kz5Ko6ogehYVscugLP/lhIV4+IM3sYgPQ+ZBqB5EX3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gy1Id8jM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gy1Id8jM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCADFC2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791995433;
	bh=B8893IkyPjSm7r4nTgVrZTQyrkF6hl6nJqUavsmGZgQ=;
	h=To:Subject:From:Date:From;
	b=gy1Id8jMSNYKEuVHCe9awDjHHCAGouTkI71bUbZC5gsy2RH4TGhaEqWYggvccSVQp
	 ioRPe/jPSwfRuLFU29z08sAseW/UDyoIvhUK1wJIdUeFeoZKjZJS2wEbSn7/qFnIWa
	 9osMu61l4BGKMrdiCmhg2VZxEl7BRA8xCqwxR5pEfy7PtZmcEZuw38oIwN/vlkhOD5
	 W8banZNHTP8vQ1HMPLFdSniiMydKcZEWzhrh1VMI8vB/J043rbAJrCd7af3MkTFP65
	 Q+NKxc71M2mz3gHpVzj9u3YPikbMTadNGjV3FTkcg6wnedvcwrmvMop1c5+HwmR4dX
	 fOvxNVV/PBLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B802CCC6B29
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199543373.6591.16944849441488972026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20102cdafc33d1ae346ebb090520f35b49a2599f2f433caeaedd5b5d0af23008
Date: Wed, 14 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791995433

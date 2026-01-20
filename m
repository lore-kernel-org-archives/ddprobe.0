Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D81B366DD6
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768917834; cv=none; b=gHYs4aYsjOD1EVv2ttPxTJNs9jpBAVJMV494/Pxx8nkxv/rWoqwLAq6b5fguktqIFpXGmvG2wfgDMypAcy/qdMbywLAuqk7xRmZSNbtvosUpDSl5uYLLHYPbCfEuiZ0pEBexhsiDdwkmWaXVDtQ8WAWj+1UoCW90JoHgnx8KDps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768917834; c=relaxed/simple;
	bh=885IlSZO9B4dHOjm+kRYegaGGZSF+mTJ7tyNtwlxQDk=;
	h=To:Subject:From:Message-Id:Date; b=DcuYnKq8zRIltutHhxmasGWax/H2GviLuC+jwxTxZsHLZfVRPDUUomYWC97+iYXtwH4C/0WP/3TuoyXjfa8tt1iHZgcLtlwmmlgn56NcNOkkSkcjsxw/dNe/O1NQKiGOGZpbDaDmTpDLVojamHYoEDoPIXO42qzqayJzVq8dy8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWaCMbum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWaCMbum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5CEC19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768917833;
	bh=885IlSZO9B4dHOjm+kRYegaGGZSF+mTJ7tyNtwlxQDk=;
	h=To:Subject:From:Date:From;
	b=BWaCMbumgafwKlHOtLJDP9DaFfGAViVj8Iv36cLF8IQT0R1kYwLoR+MDC3SLhosYO
	 6mZVMai4+2+SwG+ERJuVmSzNyGhqmNzFVEvJD2N6EJgVCYikraWfAtMRPnF4GwKmRH
	 2v906yKZgKBOFTJUCyPCfN7xV+NBxKi71hfQFku5q+CKHT3482fW8Ce/k7emVwtyTa
	 +fa3oVM/QOaeRTHcZZeMzzTE2M5acpY/vgCcmrEV1sxLuIeE2l+US5Ro3kwmps0lxt
	 P+/wBGsqJ9K4JdwCdZMEGeNjN3pSEHgZl+v9R8zA3ygBKEBiKfBgjPeBSH0388oak9
	 t+0u8Um836yAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFCAD2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891783364.31293.1651769056033374514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e673e337ac945c4b815e65423cc066b6495ac0f3ad44e552c2a4d57c7deaa012
Date: Tue, 20 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768917833

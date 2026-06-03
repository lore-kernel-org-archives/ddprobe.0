Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545523A9DA4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780496074; cv=none; b=sAv/U9zkCwH/5jDReqzdrm5WJGD7PS9Xhi9xvsWQFmTgt9jIej+IgicOcnjzoO1oqccYeuVqcTmjX/HD+y62+L+u0mwSr1+s7kHvmW+NgFdnv7clxqUogS3KqDXcLDmSjxnvysMSbl/yIpszZUyJkuLYw+/ACwJOeilGYRkPGQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780496074; c=relaxed/simple;
	bh=XfAuq9zKrpDXSvncebNyPEUid8Qren0IMh7eTEH3Huk=;
	h=To:Subject:From:Message-Id:Date; b=ssqETmMxFJt5U2UG/mYb4BWoMroybIpwKlVC/Q1ZYNFRD2b6tyQPqdFslkOafuv7zshOnY0XGUwIfr8tfyyPwEccYAyGrjkaBFRML0PLaMGfMQteRJfihzznDXoTo4IBWogV1cAfyDbhIQ1e3dJWWtVZLP9oSQVqxZWEuw4jegg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Io8X8M/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io8X8M/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA63C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780496073;
	bh=XfAuq9zKrpDXSvncebNyPEUid8Qren0IMh7eTEH3Huk=;
	h=To:Subject:From:Date:From;
	b=Io8X8M/IugMoFl9xsuWZFExjLDjlzJB4Ere2Jol24D3bjIDtdBryb6g6GktO4abU7
	 qHNRQGPAUQTd5wizQG+IrD5vD5pgd/wbXqYCcA/uPKN2g+aZuNjdQRLXws9Y475U2K
	 loGDEvS/zPcAKZoAbf6006L5caW0nIqKQwabxQK5KIPjKca4DdUW1WT6gGytTV3dd1
	 ujCE5zs+GT5gxRZ+GgtR1XhsaxSj5g+ioTCCFxBACB6k13ch23RyAv68WHIluHVAaG
	 f5tD1U/usQfGfKLY6YoMissM5CNKG9QIpbBlsW9Yl0Cf6ildH849Js8Cnz3Q6qP3ic
	 fYSKdMa2afYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB699CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178049607369.9503.14463245352352140310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7130eba2624da047b18e91fcbce77e0b5c386d3f5a6d8f583c956e27c9c3dda2
Date: Wed, 03 Jun 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780496073

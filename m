Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C94221723
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754060994; cv=none; b=DcK64rOB0TwjDzCgCFs/CgdYf2/kRzYwlIm8/jD2v1Rk2mRAuUBxH/QC4V5TLgZ7fHr4/z/4YPIHa/SipZGLrsWUSvzTkx5gnaofdzfUdZUdWv6pTw6l4dOZYdN6nWJJe46OW0exB6rzrJiSLDe9M+qf4sPKCX7iCvTLuGyw+G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754060994; c=relaxed/simple;
	bh=RXOzFUBSzkkN4o/eU+CeB5mn9wCE9Euw3//olR1P85E=;
	h=To:Subject:From:Message-Id:Date; b=OLca1J3bEPNCF/lfMJnNqC/DyKPCIhAekuZ+Q2pzI+gVUMJwzK/mHKCu2GXfHEUM86wDoN5LhvXFG2U/I/SUUAT62LMPqw0xKjNrlFO0H5KBJbKUVjNc690XgZYQrOOlR+zwu1LP39jf1oHUJ6WEJjg+l6XytUf1rJ2Pg+LM6Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0wWGKc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0wWGKc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F094C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754060993;
	bh=RXOzFUBSzkkN4o/eU+CeB5mn9wCE9Euw3//olR1P85E=;
	h=To:Subject:From:Date:From;
	b=r0wWGKc8HKkyal/n++N8ftYLAXCm+gyzejrHRb3L0Glo4gW1sIEMaskaYK6s8ZXyx
	 xorBzJ76XLixMhZAZSfOHmHry9thDo9Th6bWtHBUpQlvTTu8Sd76XVBRNZhpVLTEzd
	 c7cB3AzLo1oKBMa72nAsEUAtZ1rOm1gEDq1YA8Zp/3+2W347vTXDkGBfkFfEc+BBzW
	 hviutYvEQiL09P/d+45s8GPiEBu611ZUPnsfN5KowojGOban/Q3Beky/FzYu7aJfqm
	 bVvBQKGMQ2H9T6HugDwtLduEDqoUdbgIfvbJ2Gkgxk2dtHZSyUqwG0iOzT5C7dIrts
	 P97O8zfHrSv3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906D2C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406099358.32223.2536910399540846061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6040e88b9739b07bb28b89cee115f9e463fc13d501ee34c0e0aeb81c97a482c1
Date: Fri, 01 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754060993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3052E1EEE0
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745911794; cv=none; b=bPQbAVq0+MOAcefEGlUApzEG5dQlRGZ7nRm2XlQfaD3IoPYNq5O0bPt6JiZTpj7d0GyRxkuW+fwI/oMwEcYYbRu1DznDY8aJ+cQYERAaLPPbldQP7gg80fVh+l+ANFD9WYxnow0DJ3SXV0Mo8yoXD+e5wLcYSmQKdCRd56Ry28Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745911794; c=relaxed/simple;
	bh=BZ/q8+Mqo84YNsUf5Z7F4VCWbKZsTUyhMbBdvFHi8wI=;
	h=To:Subject:From:Message-Id:Date; b=lUprNHETJlYGTnPrIgI51WHKVB9po8X10eSFJBrDNfCvgjQztZe5i9n84fMdVBSwpWnfvxsMxrJnS4buNvdfFTvZw/xiwN9yPkckkKF4VHGgD+Sj76+xSohwZF31/ED0JS9WFiicW+vyJ8NLvssSaNQc8pLVUQKsOFrddTNu0kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/GbwZRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/GbwZRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E05CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745911793;
	bh=BZ/q8+Mqo84YNsUf5Z7F4VCWbKZsTUyhMbBdvFHi8wI=;
	h=To:Subject:From:Date:From;
	b=K/GbwZRb3eDn+b1IrxxdFcc3dc6cAF6XvS0sOjdquaehiIOjh7gF0FLiYV1HXEqSk
	 8XCK+5TIfJsYUw1MLpZ0Cwa1zqX6C6XERrN0Wrf2Zf7q/ep1QNvdXxN2B5/wUYYapI
	 GY2zb/OW8W/Y8z2KmSCC8rA20tImaW2tN0H6wpN0h3zxoQ7q3bykScknFrP2A6+Qoo
	 adZ/3VDRpbkGn6f6yRt74Psykt1AJRX2frLOiPBQ5XMms1rbmGrANDSbSAZCA8hlOQ
	 nop0Ap5wIvCSuDt5mnDDizzC60HtSlgRcCWKyWJgcARBmw85YPMYy2j8nwDyY1/7cg
	 JS8DiE3S1pVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F834C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591179358.6516.10961993518046429856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1777ead3aa81655257a342809c4cbf6e93d9c52f7df4684157b533cc4ea0583
Date: Tue, 29 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745911793

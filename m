Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567802E3397
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742777394; cv=none; b=CQCw3Kj6goraON1/CCTzFh2bD4VUdKNRi8F3XtcXWYqqv5d+UysDPgij1KcisNlDFtIZqNOckHe02oeunAFkYKtM1R3v5qDFQVtpAqbCUVeXLWanosIC9JWbcRvZ9nOeeN5sM9kjCYknvShPOX/c1T7LqHeo8RTFynq5h3iXMtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742777394; c=relaxed/simple;
	bh=9sDxJjLIwfzO7aYUz8bg4L7rlBcNjBLeuV7U4nhqYYE=;
	h=To:Subject:From:Message-Id:Date; b=pXFiXQtPV+j3SELZUH3h6230b9VNQw2Sg9YD191eUK6VCoybi2Anm+Bm63OT0C6EPMEXuawTbkkYYXqCu2CmUOiXSufpAKyYs5rTmsDWcUBlzqPg+CYN55LOnmJyZdHjPO29A1Xf2HdOxqvHEYMXZ/adg+IRKEOJKhxJn+HVv2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGp6JvJo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGp6JvJo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3437C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742777393;
	bh=9sDxJjLIwfzO7aYUz8bg4L7rlBcNjBLeuV7U4nhqYYE=;
	h=To:Subject:From:Date:From;
	b=PGp6JvJoO6Km6f8hmXxLAFbiUityHEbFIjNhG0SdjX/1clQWXeODmTu3SR2OCeLHp
	 voK29pcGDIjT2qGdsOB3rnMXuTE2JyL55gxhDpqsf9fvNcsNhQfN4EfZxbjYWqYSpY
	 /YutHj+aw+I5D4KBTnmLeRVcwp+lwLkd762JTY9nV++zYx+Lcuw4Wz6G2jNF747oAt
	 RcxuPnbDYxsPD4cmTOiyM8ieQDwfPRSpmaqV5yj+ujR116uOhUqgl8+tl4lu1ZlNiX
	 afmqTs/BSAJ3GEuXDmqFwqa4RXGQdvO2RJa63gj1XtO2SguGcwdA5IOfe+K40V1hm6
	 3zh3ngtu/RSog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ECCAC28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277739360.11828.16557800418126370816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c1d62304bbeb1da0730e0edbab0af1c6be954c9ea49079003c6f05e6d6f3798
Date: Mon, 24 Mar 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742777393

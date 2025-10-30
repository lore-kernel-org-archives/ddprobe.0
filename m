Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DDC243376
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761796194; cv=none; b=WVIbdVkQ5I5rTrM/YuwJBZ7RAKf4xEsZXbeD2HN7HTFzcAhGfx/BrSVJkauwRts5/cOs+J/s3xZXUZgNAHmDITIJVUNCl1+PNkg2AmiweI187tge9/RiDFb6/zq/jIFD6XrN3hRn643SzRdRaKas7bmGiCGV6IMJ1Xu6CIfx6Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761796194; c=relaxed/simple;
	bh=xuh3vnD95WC8VGbe7dxWJlFL5C0plPVnezMjdgNMsxo=;
	h=To:Subject:From:Message-Id:Date; b=bP8D8JBtk6qvn8bK5f4G80OnxY9G9gR874tT9yrbTdnGS8smsSE8zI1BWKG4md2j5gUTnxjZAf1b84b5/uN92qU76xhWFkATzpV6GFKysldvujFFk7S79iLSZXRIUAWA9ZzD5oshXFUaNYi7xYJIXA5epDPomwvHSVXsGAMlc1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx2QvdRj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx2QvdRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB778C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761796193;
	bh=xuh3vnD95WC8VGbe7dxWJlFL5C0plPVnezMjdgNMsxo=;
	h=To:Subject:From:Date:From;
	b=Yx2QvdRjUSNSrqOl5+8JoTWZhHmEXN6PSyMK+Ikv7etr2HR5EUWOqUVBZBeOi3HLX
	 Kj625kWsD3XrfGUhQ9MNZ28DxMgDLKfc1Hq/KUgEuS5Mejnubh0MblPGmy21iOr8U/
	 q4ilznqFruBeOG7LMqB1uaYvtfNfhlGyrXJDwz4IoJW8Dg6eIv6X/fqt3fLBCUHdYe
	 wj7dTgUks9ADy5I98gDHcWm7XXsA5sbsHS0UUGF2dTZvRyL7pjXfl1t2gWYKZn6ib/
	 CKn6N42yXKHcLqc2SQ4AOZN3X1qAQ2vc06+S38dZMGQEUETmijbVQmw8ZPdsKM4RcR
	 V1Je7TXEwKJ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994E7CCF9F6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179619361.8719.10315872634085280923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887f01c65bb7eed568e22f16c873c7606e2a63b0ecd0b19a3553305b30c4860a
Date: Thu, 30 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761796193

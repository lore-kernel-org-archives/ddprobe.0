Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DA43FE7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756430394; cv=none; b=doyPxf2Nhw3pPfSWK75HhMOHPs4X9zIowfwl2+Pzp5tI1bJnAmOjIuxkmjTdspXphuBEhxcK+X9T/4CjXBp/j4GH5YV3csftv2l22axilLs8TbJI+rg80NVkFnAbGVQjoS/HCACWk1IjV4kVT43v6sGKQ2SFPSxMW0eUgZSIMpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756430394; c=relaxed/simple;
	bh=PL2MulGA2mZCrOgWzaHcBqdIlNcl50PBex+uw5phpc4=;
	h=To:Subject:From:Message-Id:Date; b=L4MpsTl9vPmrdAWuP3TYnNa8gKBHoTMhe1ZCgvkKRkw8qELrekLjMaKeZ4i72H34vKfvjSoztkmoSnSIw5kZq/zX8nYk4WLdiT4BTPzG4g6+nOX852JYpOyGUtXAuwBBk9gnB81yGpgDjSTkjR2uANxdUS6vl1XL5hrSc4g+XeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0x0PAqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0x0PAqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A693CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756430393;
	bh=PL2MulGA2mZCrOgWzaHcBqdIlNcl50PBex+uw5phpc4=;
	h=To:Subject:From:Date:From;
	b=o0x0PAqv/aTgOSiOfx26NbImqQvQ0+fNRwdIFBb7+luZSWrFk/KdfFSc7OeE0U2ZE
	 Zog6NsbPCXWYMfivv63ZuTXk1urvjOwKHxfcLzAK6VAicny/rZT32IHZI3Cj0Ie0+p
	 tgUS6fcKwfUfqAPKl8t9CUj9nkmyydmr/GJxKCv9tuP5CX0S3EjM5q3dCbGa7U5RKb
	 OUdUZNgC2LGouIIBO/PHDwyTcakGYrT6QQAv9wXkgX6hNP470wrzDbibGAGydT9CEe
	 Ok8HidTx3rQKDXZWIlJ76uPVHFoiZTdaNf5bY4Ua1tNqNix8KmMlHnP2UwLz4ElA9M
	 2BpqS38RTSdnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942A1CA0FF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643039357.26607.5829052816406208504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e159b87aab1e2af3cd5d0718022bf3fd3ed02b9f825729eb10cbb8e0a2e7734
Date: Fri, 29 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756430393

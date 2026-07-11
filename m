Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142ED1D7E41
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783790314; cv=none; b=qKpuaaeCjp4z8LzxWxszwDNFYMyJszw6mfms+imfVWr7ZAq6ffAon2Vy+IugV1dzXdYEQSaLQcPzxITh0XOg9r4hhryZOL/IZbjlC1L7Vto+hum02kMBORXQwikOUAaAqCLE2XoLpf1X5itzOVp5QjsFLm0SGq28YKbbOdQuWvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783790314; c=relaxed/simple;
	bh=TFlwCyeFPLCuWX33evMZT9Zy4krfOX24WlsgvBbZZto=;
	h=To:Subject:From:Message-Id:Date; b=BKWm+41fQ7zL5z5aL8DZo9F4jQ/KZNxQA9CnxyVpJ/+YmCZ0sMpu12bflqpj4XH99bf8A2z2eJruaUPltl05p3m8Ozghd9nIm884DGP1JklC31V7QpDauVCJkg5c4dNz6sXM88DbZ4TQF2nIUtHnRm97wd6oDgz/v/qMu1432cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMRIGLxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMRIGLxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED28C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783790313;
	bh=TFlwCyeFPLCuWX33evMZT9Zy4krfOX24WlsgvBbZZto=;
	h=To:Subject:From:Date:From;
	b=TMRIGLxlurQrLZB4cMhFhP20Ah5tWlyyTIi28huNwytApC6Y3kdIvhcLhE7rf4dxC
	 t/aIZQE77pmDRwKJbb63rwFeP+OlcB6gs+Xbj9wZ2UVPhfieLUx1YZapQzS39OSlad
	 hhXDI0S3gUXq0iUKfsu4vBMG9D9I4Xc4ZDnXFj4JaBR71fomSIFB1QpWLoHmL7Dj65
	 AUoPDWxy1fxxAGgalIbowXxADWhInh1Hq+o9TQSJv4ccn3nTTNm6vyo5mstkIjyiT4
	 7LlLWKnoD3k+/9IBD6BMujsjAMYajtq7wL5+Z16CU97NBDQYFEkVC0WXy5PLrDrdkk
	 hkh822ZPi2Nog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1E7C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379031368.25080.697142060802872748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828e8246794400ac1fda316c3bf7a630d57355299033896e079349ff50926713
Date: Sat, 11 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783790313

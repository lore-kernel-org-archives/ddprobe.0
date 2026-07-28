Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24384248C5
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785235834; cv=none; b=oNetcYkCqIv9GGlMrJIeNZGfMyBNLc2YhQh+r01wv7infaLvbMYIsrYwobFxWSLPH4SDYJDEyGqUFotm3hn4KjfqQQRef/Ol4KQyWpKdqZb3YxE7TTiTA0C/57TjeYU8u++aJd9wJHQfiqdHAmG3mEw46MD0/WP2DIT+wCEL8HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785235834; c=relaxed/simple;
	bh=xA6QOwKDcmT2DipQh4rEdUlcO88E2R60VtPoJU4JKxg=;
	h=To:Subject:From:Message-Id:Date; b=XmM7230M3DES0RFlIVuypGub+Uj4aMYFy2DZDHzeF9vBXF1XGuqNJ9UMwGhmRUVUIPRgE5rB9H155ID7FU6Pm1fjr2dMqqt9RKl4Fbei/7ogkYZH5Ud3Jg/57kgJS5TJdmT3nSPtayFaWwj+GfRbNzqWm4v++XuqUn+X/rnTbnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOK9ZKLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOK9ZKLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12CFC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785235833;
	bh=xA6QOwKDcmT2DipQh4rEdUlcO88E2R60VtPoJU4JKxg=;
	h=To:Subject:From:Date:From;
	b=kOK9ZKLCSl9SlMS/sJY5QzjKK806fU4TJBDSKIDXOtnYNfRZxsBm+2Jt9fuPlIKJQ
	 Pm/JOHmCnzCv55TjGDXNRO1prII4opKge4oR+Uwivtn3Hl826NKYKhp/+opEYQCYYr
	 a4v5THfMfLGKGo2NvXiRKNunuS2BEcAx+rKEZZ2WjIglN9Vy7Xbi2v0g2kj4j7vrOh
	 g/6VKhjsajLN3C6tYOpo95ElHhECu3RTRsG7fFZR9Tuov+xgy9smMckg0FhSWWGlcK
	 DitOXLn+ciOPti+DFrZf0NRC8Ut0kH2SqlD2d3B6slcPZsK10WwFTNoxQ+MskTwl1n
	 v9PqtP7UwgLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC052C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523583368.5713.6232241007288809740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0322ad5df7e3ef609d9f0b885a0c445be6633e7cf71940165aa579ac984c63
Date: Tue, 28 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785235833

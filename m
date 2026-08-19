Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E03535C1A9
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787118034; cv=none; b=IM3ARNSeNbsB5sVkyQvH9fG30YROKyMi6kNbg+r+MGZyV8GIKSc8bnT+y4CQ4xZYiaiwwUF96y6CgiUZQFinSe6la3nFt5tf4MSA1t9COk34PJJQGX3SkVajXjssXlpudIdVWs7/dg+wTCF/exqnUAzZFuHX/QZj9Ne8/AaUXy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787118034; c=relaxed/simple;
	bh=7PMzx3VPzrB13oq/1VSMnnrEqPMzkJUbE6BXtWJO2Mk=;
	h=To:Subject:From:Message-Id:Date; b=OjiISpD5Fz/u0o/7wbtQyugNFmz1Y99iISC0NeeQAmLK9Ya4GlIlIg91nJhSMzW5GMkJK/XANdmJBWKYjCK47UdSbbY5e9L8knamp9RtQ2ZOitsrXl+Jsu43K/F9wA67HdIpnU3UycWBIT+P4V+AN+FIS9ZAIL/GpXbB3m/bW3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsvNYCEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsvNYCEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2454C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787118033;
	bh=7PMzx3VPzrB13oq/1VSMnnrEqPMzkJUbE6BXtWJO2Mk=;
	h=To:Subject:From:Date:From;
	b=dsvNYCEWui4MkOWHA77IMOmzgNAZc9jRP86ejcmYj2KiW9/r2wMuhlDheYoKH4I5h
	 5bJ8Xj5WgMwPaPEUG2wSf8cNJwDFSPY4YIzL8m0aywgb7+dMS0HnPwUZSz5dYRHHNm
	 9U80YQOjB+vnpv1Ap5fFY6t98SXJtbkY6F18biwxso4Y6wZhvapMQTICjA/pjPR4nN
	 M4ox0Tpjdp02DYcI/tRxobZN8qeQYdJqUag+aibsHwhd7YpXrnqJkBngRhy0EXvIz/
	 JrRdh9mdKWjoFoMv0oe4x/m42s96PC2maroCk7E7t7b0E+NvjY+4mTxkU4ZFfdUMEn
	 27fbg+/+kXDqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4A2C5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178711803368.11318.10519682446443398761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6317236d068afe09926b58106baed070f6dc55780ac9f01f2f9d41f44ea9c87
Date: Wed, 19 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787118033

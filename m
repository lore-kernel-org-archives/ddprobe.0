Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F7B537FF
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718228303; cv=none; b=mfZG6wUkITpKRKzlzKur5JZEuixfEyCUDj3a7BipBS4SRt1WZ7iFL8lre9hObFkmqUdMvFwNofznRrlxLOr7M3wYgU6fMdOylp4+9/2R8fwXCgwyIs6O2kVyWTAigD8bMddTevXsl0r+4QgaKChzUdEH7F75up4x6K8IBf1EbCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718228303; c=relaxed/simple;
	bh=oYGByLwYadXwULPCtdDH42pdmzCvrCDsNGJ2XKjMbaM=;
	h=To:Subject:From:Message-Id:Date; b=ZkGzMyP2MQaruRvFc7KxdCL5SxzHBSeBxqnx691Mk008j4twCpgae6CiYA0DPI17KsBOUjRQX5CWSCUM7qY7vQRdNnEzUHUpyTXYzA+w4SBwpPRntMaj/MTjyANHgNs/QyVTeD44Lo2uDpLUwWbPu0CKJy22Ep9xPDY2lujLnAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPv9wStB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPv9wStB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8253C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718228302;
	bh=oYGByLwYadXwULPCtdDH42pdmzCvrCDsNGJ2XKjMbaM=;
	h=To:Subject:From:Date:From;
	b=hPv9wStBw2xJRrVMHBcw3CUUpwuSJuPrrOwx3ontMgmcsLoNR0zV0Yyv4rPmaP3VX
	 mSqUvSCaL7L58suduLu0rOoQQ8+g7W3uiOlgYGHgHhkjpDCAd7xu1WuKR5QUPGSKb7
	 /T9tgQwf0I9Kv4H7c2cHZ/oM6U52v1b5LVJVxnTmbW62phoyarOvpazUhxQP8h4jKC
	 vxO06B54Z715AgFAKhw0QnA5i7jct8TKevr2efEBdRBKN77eXTWXU5qowK7D3MhxMb
	 /HW3SNNVnz2cUD1z5wu2ifXBJyfnsg35sK9XXFndAxtebj/clB6k0cli4/SadvKJBM
	 roobO4y0QNPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ACEC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822830279.5134.9707121440896078698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3010824c5e67d8bceeba12d978cd538b6f0e9d9a5a658d95a449f2c3886a7508
Date: Wed, 12 Jun 2024 21:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718228302

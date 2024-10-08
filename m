Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2117B1E04A0
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728414354; cv=none; b=THC0PVmm4T0mnEzfBGZLQ86v2BGZgb4cP6miXbfLNVAPHGLtL6yoQoAIMtBHd6aDdKESlFjYq2LZb9nb988B5mgkphtsV0b6oWQwNM1XawBNhwrEkqueOb+A01l98V3Yc+pOVVORrZ3+k213PS2T+bPi+9X5SX/amIfFdFldfKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728414354; c=relaxed/simple;
	bh=NQj0/hrSgHMfXMVsHjVeU5rRZMrrl3FVtkQexKYLF7o=;
	h=To:Subject:From:Message-Id:Date; b=K4I3bIeeRwibUUll9HMkkm58pTwJF5XN0B8o4bGbZOgdrP4KtRXspAicsUe2/vyLUMg5pS1fPpnAC4280ljlfKKmUL2MYZu1k78MCtbnWevSUSaB9Y/vzC8jCqSczwci7CdVW01CpQFMsIRePVnifagrkOwupmRrLmUhvrX6iZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdNbCLt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdNbCLt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6487C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728414353;
	bh=NQj0/hrSgHMfXMVsHjVeU5rRZMrrl3FVtkQexKYLF7o=;
	h=To:Subject:From:Date:From;
	b=TdNbCLt0xCq25XPeXJ0Q2uIaPOLYdOSmEJZaFnNfBRfmnrvbh5X6ZbxUuqllAkdKJ
	 ZzEPZ+hORxy/JAVxLjrJ+ETL0kP24vmaJZxLFW8II5HC31oByU3L0sXeWbP94u8ec3
	 7opr2z9r9I1AXj0QOGQx/cJZkc5+lmuw0aGHIVyqpnY1RLFWUP2toaeGUgPEPaA5/u
	 VfuXXr7qwx4nlsD++OJOdb0mQagw96z7fDQZexHVdL8AZBCyg+VYFCYMz3pkisWIES
	 Zpg2BSGibY6ekNQGYQKz2PP0AGKhI9r8tXOcRRbSxl6Z1eKsqJWXFZwWLz2Pcn1b89
	 wfKrmdwsV6wNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC18CEFC3F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841435362.3739.9656923237805047270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73e6e64543475703188c442f30d6d91a8f2883999107481dd53907a7bc6e3b1e
Date: Tue, 08 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728414353

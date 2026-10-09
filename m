Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9B2CA6F
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791510634; cv=none; b=tl8ADEX1eVVDg0JgIW+AD7i34j45BGCNwk3j+NhHYRxqgH5cW2ZU/UR0Xp0yKvozRWYyGRbImY1VjHBkz3kNfezYrqEB28S74Dydhs/drxbAtvmTOGr3M9JeBqohGQPsSmufkxiArOQVIHHLH+tyVwY0+7v1ytEBaHpngdSxurg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791510634; c=relaxed/simple;
	bh=5t/UKjM8xy+KKHtWXuxhxIdBzmGLFMTWEui1ApEbJY4=;
	h=To:Subject:From:Message-Id:Date; b=dqI3ZavsHXUuTFvTzuu+d0+gl/H9QBKlvh9C4+K3PnbR3hlpICzbufOz1ItI8Ed6zC1plRDbEwJESnL3+5XsJ4tssdp5UQ7yG/wNBnS4+PWsUOy9g3U6mSQAAbWnwDTDX4HMttQhrP/qk2fZqzarkQJ0oE77D/xqRGnZ+HemEp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQayp1iJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQayp1iJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1B2C2BCFA
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791510633;
	bh=5t/UKjM8xy+KKHtWXuxhxIdBzmGLFMTWEui1ApEbJY4=;
	h=To:Subject:From:Date:From;
	b=RQayp1iJ4kffhfGIi3fjbyDmbeUxpuKhpgqhz2AN88CDhVLV5pnGVgJd2TMoHVMZf
	 ehnUbhg+Y8Jcmc/hL1VwbtuLFbP4matw+cX689Ol/R/EL0dUtqSXwZvdo0ijavKhhT
	 kMFMg50dxWw/WcXTnEKyZkmBMHWx1GBIsS8kghT9kYkNJiblSBXEJtCgA0dNbnB4L4
	 MkN4Uwnjg1X+eY1hclkzOcpI1OYkVKkF0oMkEi/5khIRI4wV3pD7Fbowh0P8J4Yvtz
	 3cOQchgP/x8CgGRmOlIoPcr6/g7G9nk2q8MUBmjtinCeevG5JsQC5vS1S1gfPY8KMq
	 7/O7pcG591djw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA802CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151063368.32120.3681972582800242949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af5ae7622a52635191bf776b1b3630ca9ed900b4620e3b1c8d2baf94736a22f
Date: Fri, 09 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791510633

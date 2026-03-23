Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6FB2DB7BD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774290894; cv=none; b=K3TYDNvgd/UpoKxS/uFy+FgZygsgG6n5rcqRGb7kUwSdIVSqot8II2oU9jfofOgCnz7qrQzSnAzkbF4iSLaU67KCcmP9+jUhiD/WnuODN2H94crJWoqEsFGIfLQTvl9GkUIXAyu6c+7HBWd5Blh6uOP0vStnP4yI/O2Ijw4fUis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774290894; c=relaxed/simple;
	bh=i99cFNF1J6GS0Wjw6jbX5sBvQ7o1VzHNZlWNzs+IW8E=;
	h=To:Subject:From:Message-Id:Date; b=hPSFORa1/oj6uQa/ByFacqOjXDtjRkVmZ+8L4FYaEDl+3F4umKAcysjOGIdLfrAecRjpEgQLv6EQgpv5bZ2OEy2ZDinrf7K2rOuqBBQVYIP0uhj2UnqjVJkc5OwVR+f6Wpngg3QXEZD45lmYH29jVYFzlv0tekClU0MYz9/3YSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXtCwUfB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXtCwUfB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A908EC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774290893;
	bh=i99cFNF1J6GS0Wjw6jbX5sBvQ7o1VzHNZlWNzs+IW8E=;
	h=To:Subject:From:Date:From;
	b=SXtCwUfB+/tZEVzo4eOER1cJTHG3/8L39y0ZxRQctbJurC8mHGzA+OOIOmNtyhAbW
	 6qR2hzrqI77iNLwKpfNOTGDorYhNFnbf5YIp1IGYEbwMuBi6YQy2iUHqAxborB4L25
	 FiQRWqO836B2C9TTQkaaTxrPAKtQ+PVYpL14+uzibxLXKIK+DNV8CUofl/jsMEu7Sw
	 hITI0D8Lyc7QC6c/Rc0XZ4UF3iUmS3cIrQJRm3wx2mAPanywb4B2c3gUJ28dADQMVK
	 3bwNwiJZXGQgzpaqh0VkISDQKyrJeUl+TyRgKEghTwzWI0Oz+BwF8MiesCHRmr32ey
	 p5GwzONzls0cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9787CF483E3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429089360.1856.17953767812133609363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8cf5768acb4b9fd90bc5fe40666289db316d7cc2ba4c5c9af7ca26e9000ed6
Date: Mon, 23 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774290893

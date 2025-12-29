Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF702D063E
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766990634; cv=none; b=AHTAGjNNbehIm57PaPGML/pc6+/GdSYHzK0Gmaw+ygJ5CKegE+X6mCg+/VrDP5+d6ogqch94bUfbqpBVVRPFYmF5mJh27cgpHTGqhy2Zorhckn0AepLWDB2KzWIfEW3n7U/tZKy0/nmpbeUjbDe3g9ypYzBewNcQy0nmPCCfMJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766990634; c=relaxed/simple;
	bh=C1d4w2CfqtDMcXxfb9VDOo9Ip89+tXGsByhAFa7tU6U=;
	h=To:Subject:From:Message-Id:Date; b=VA2EQrYu+GEDZnG4NFFxk1K/SLuGqowOVxg0yIXL8WuCdKvoLmWDR8OClD3o9IXXygUWozangIhgo23WQUpHnwfKP/IXJHvteLB0nscJWtCAmLRyURBD4ZhgQ7yH5P2iasSlrL3M/YL/jMmGSZmxrlDixJj/WOtCIbclM2ARks8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMgQtaHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMgQtaHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69B2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766990633;
	bh=C1d4w2CfqtDMcXxfb9VDOo9Ip89+tXGsByhAFa7tU6U=;
	h=To:Subject:From:Date:From;
	b=hMgQtaHjp4rMRc+QwDPJLWQNkOTZ4ZxrS4hvYRmjEEQStRiFtjeaVxH+ee2tiuG43
	 JXSCe1FhRN4fdjsZAySNFW4338xKNHUDkzDuIaAMBNl4ZrKkTdOZFjknpEfTOyHugB
	 RhcDABzmcfcAI+HOLDCvGdrvZEmW/E2RhjD2Aqar41RcUt0zpzRDaKKD3jHN45z7Ag
	 cEfnJSm1xK6FS3CHFtQYTA+MQ0VEnit+KN/3ZX/KIi46hbQtRDIHiYWCVbs30vXKkD
	 zuNTylWi+yZmWZvt3T29kJ+cvBUqpuA2OLB/a6xZWLiQ5Et7l+mgkQvgFOOnHR1Y/t
	 lUgXP3FBi9ZcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2515D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699063362.16813.17976385788967618324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f582f88ff01afaa13e8fc6ddaf1f1db389eb435d92721d5e51218e610d2c5e
Date: Mon, 29 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766990633

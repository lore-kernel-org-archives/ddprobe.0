Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29928EED8
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763878914; cv=none; b=fj/mTcNl38Y15kIf+mRoTCgq0s7bGpkMfBeAURoI1jB2iZIrwH1uVciIfExWIvIYgR0UYaaloIrEYYPmCzLLL2jhaVRZ//QDKnKD1z7mY1/nSTBSdPQJDxc7ylg/IARuP14Y8fK85go0gpvZaWkz05P2yF1hnrxeCsKx4sJp+OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763878914; c=relaxed/simple;
	bh=Liun1cNB6c9+/oJqZ9np3d/XaSushW5l9lb9DaoOpOo=;
	h=To:Subject:From:Message-Id:Date; b=NSQVYDPso5PDPP8uu3uuvwSFI00SI+zHWhIwLkASWhRnC5LCEvOzOtFOMV5a9Vtf+y44DRyjlY+rd8Lcd1Ec1jKCaH9G8rmXa4w3ubQo0QENab3WCdY5xUOLDMh5P7enjJxKpvQewngTE7aQNLvCgBluFZhkqGw8ePOljDMpA8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jV7e5hJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jV7e5hJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763878913;
	bh=Liun1cNB6c9+/oJqZ9np3d/XaSushW5l9lb9DaoOpOo=;
	h=To:Subject:From:Date:From;
	b=jV7e5hJLOnd99Njl4GT4dZK5FrgMaH9xggi7REb2JZ63IxLf5lDcvXzJcpEbkUrVi
	 JM3BZgV5DLwZLr371nPqDB8ZCqotWDfnLtprS62PzhO24NXv7U6k9KNyfHU7sMtvqp
	 h4abgG0EeEpyZFBBNWQaMoU2f12b494cjvryo5bqPrRxW/UfVF/RMzXbD7tjyF3/Zk
	 hMynb9K/KgsN6/bCPKNl2BjAHQCsPNryfsp6ytTDRxS5EX3rwDxmsiIZ6lPXnFN1TD
	 Sk/8ZH0s6os38p6lCkECbcXIytlSitPw5RZ4Js4V2U8x0/e9p5r+4L77SikZTtl9h/
	 fSW8+OQMz22Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92305CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387891358.12837.4334659398518109201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8dbbaf32f2de9f5bdb136df8ab926108b9fc6442c2679407d7934a88073533d
Date: Sun, 23 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763878913

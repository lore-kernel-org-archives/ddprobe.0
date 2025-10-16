Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73F7442C
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760622593; cv=none; b=jFyBUsv9kcHJJZ4BBmqM4hoPYZGMeOcjOUIZ+xq6MIQe5cQLeTHlcydR2ATTzvYAn2iXRFNSITx1Bpl0umQxDHsiPKXpQ85owCeeqdLxxXl2gATuhWlo8gA+U8a/+1cFTUKNY31wR0swM2nM/F2r3SJBklXxo71i1snnN+5A1VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760622593; c=relaxed/simple;
	bh=GVRM0pnS0jcJwCTT62D2hq94RNJWaZCwaQ2renA/3vc=;
	h=To:Subject:From:Message-Id:Date; b=XpYi1nKyjhOEPCBBgx37va7allVRJLQp1lUJYg+8bRDoRgbQOvdEWkdHj463PMH/cmt0blKB74KEi2dxuxDV9gHajxBDXcHOD3buuwExk4kUdPyOYMsqVn1fYhJ5UQv0jnih8jfkPtIPkIfMuFD6Ws+rKnVdP/2y/woZPlw2KIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4sJdzrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4sJdzrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCDAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760622593;
	bh=GVRM0pnS0jcJwCTT62D2hq94RNJWaZCwaQ2renA/3vc=;
	h=To:Subject:From:Date:From;
	b=L4sJdzrpu+OMn3X7pIqoKatQTfAs72OHHhLmf/SHChjpzkrCDRdEYBfMvnnvjiimI
	 vnWlFd4Xh3Q0ZtQkz6TBSZkYg/KkFTJ4v8u4dEy7HNVoiG90oKBJQTZltT0gLHn6Rx
	 VSyoMG5/wevMrToOzIqxEOG+LarjsxYBU9lxsauPHQRpA9XFySC4pJPv0C7/DI/zdF
	 fVKTQ0WT0+19UxU76jHuPqIG7KrJyl9Gfk1JLp2PFCNyN28mLsgbF03IrydvyOBRjl
	 KQzvfv4wxUNIUf8jELx1ErRFazFmCAZBf8KDoKwUHY7uXsCgnVciNv/N8C7yYPSlTv
	 XouzKRW/5u0LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91560CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176062259358.13378.4255347246605194966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb593a2bf985f0d1944cba5e34656a1fcd0b0b63f89673eb48fbbad689751b9
Date: Thu, 16 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760622593

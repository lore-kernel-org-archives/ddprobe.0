Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AAD30ACFB
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768937634; cv=none; b=eqtNUc3YdLdiXxn6MG8ygkDzL3kbgR3oQ4sSJ49n0uoONW9H2+ZosDVEvUWvovZimpagBtO42oT8JY0mbfIJMSI8LbEjkasEp+iqIGDy3rxiXWOptQ74wc7tP+qeLNFPTbh4jT9Fyd+CmxgoeW+detggTHPrcNQHeKq0GsI013s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768937634; c=relaxed/simple;
	bh=8dGcO0xI/qodhKzWf9szNz/mFlS2mIeW14fbdpZcX/8=;
	h=To:Subject:From:Message-Id:Date; b=bOAWvselHdkfj13TktipEEq3SgG+6pCxr2AyW4cjO9YRMEnlDrCrUo8gk5ImEOCBLi0OiVTan9IMueX5nrPXZXm0Y+ZOCQou7M+1sOONfmwYCc9cbC4H2Y1WYHFm9q5Ag0eQ/Z2Qq4GLxFUHEXbY4W2YDyzbjF5wm4IwRxVQ1eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbVh63iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbVh63iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A466FC19421
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768937633;
	bh=8dGcO0xI/qodhKzWf9szNz/mFlS2mIeW14fbdpZcX/8=;
	h=To:Subject:From:Date:From;
	b=WbVh63iMX9uoagbkr6NsdEj37P0rPDKw5ROzYw/e4aQvqzL/w/Z13/E2O+3sJ/4DF
	 1YoPjMAeVnVW6tkHzf+tWzau6SS0t0MUpatbEwuAKVArdIR/b4WBh+B5nuZjxB02pW
	 Ynl5TA/POcKFSXhWdhNOEVhyl9ZsAUq6Vzhdi8BZCGCs84G5pnpuraoZ3RwgXPJB8X
	 zJ5+14cJKCwl/ZxU7+SORSHlAbzVDrfzv/8oBhtA/0694IsIV9ExGchrAchtHx9kjT
	 7aYyOnTi6uKTotTw5frfvgTwVbWLWQYUzMmNmGTOBVnIHmz11M+Jo0KgX3tNfdBAk6
	 PkXtXne7voO1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DED26292
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893763357.23861.18388780266816200529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ebfd7feb45ca73f6b15599da33d62547ca88a90403484e9a6b0d04c50c644a
Date: Tue, 20 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768937633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7C91C93BC
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724330154; cv=none; b=Y+TjvM7WX9/SKyH0DXGZK9uEKmf8NxJwAhhd/0Lwic1TQAmbTEykdtIOyTbUTxu/eX/RYtXGpiu5JXKw2MPJ/XnFifPXaDU7RqCMgzKt7vFGk9SC4gsP45mSBQeVUs2p9it7zWuTw2D6foiINpwjfMwRUNULFo1Mvo4zM8isgAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724330154; c=relaxed/simple;
	bh=nh5q45USJXyY6MWeiCvG/MMHkXHfmW2uqktmI13IW70=;
	h=To:Subject:From:Message-Id:Date; b=kT9Ps5Uffj5OUCxhcwqqMG5Q0FOK4NnKLyaYjovQ2xRlwSdGxjpDClCPeNK43BR/dizHx0nIx8EXvZOv34ShAFmoJ2/nEAQeD0tEki5TnkP4SCIK7U/co52xQpyxVzmL2+7UWcGV0tjMFx1i15QsrSRhPYFvevyywDPikdIX0IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aP4/WI6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aP4/WI6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38E3C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724330153;
	bh=nh5q45USJXyY6MWeiCvG/MMHkXHfmW2uqktmI13IW70=;
	h=To:Subject:From:Date:From;
	b=aP4/WI6AILVsJD0V0hwTCXR2KcjYEfyxUXE7eYOgpip6YCZObrJQR2FK+Rs5QpT1L
	 mpaeOZIbJV13uN1SScZ0Gq6dfNcDItR+PKgMrVYQ+w/ORS+v0qAXUwRYZXrIDmUW73
	 b4y+43Ak1rg6SumKQ9/0IRISf0HHHP75mUx+M/TxwwjeyKf+wrJWtBQOzg7knD030R
	 L0soRQR4hr431OTboFo7zLfDR2b0MI3Qzq3KL6z56WQpTj26Zil8vcF1+qzM4iw325
	 HTzojOnSfQ1//wJD5R5obayCXFYehS+Sy/awPW0wMb86tsWpzxRT3/Hpk4aTAPADVr
	 kKRa3EdXkFV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EC9C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433015359.7503.2403871198317978599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e7d2122aefd62f61ea584999ee99dfa9078d651327206730e3591e119f66a1
Date: Thu, 22 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724330153

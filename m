Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E63262A3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730052354; cv=none; b=O6Oxn/gG3SRZi6J6GQFDyUDMr4ew4ucxXGsiRSM3HVmIeDUwXpv9BF+5lTNLhDdZeG7rq6QtU9THzSnInmnTtjNdRwUVfLp3N58vAuLlJOlyz6WFxHnQQ004tySY7dWM0mox5m2X4alfXXgSIdLF4wtMmAmUP7pPWlSCUQZj40c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730052354; c=relaxed/simple;
	bh=0TB6zv96S0mZ9KLY6t+23WN1vMgNPPq+gpTduMuKckA=;
	h=To:Subject:From:Message-Id:Date; b=kPpVzE5macuIYfmBZf4jtQD3syAD6f5JYt6/ITCD5/YDnvxEBE349WwxWtwvD2Ciyc75rGVBQwjFaLDFy4NpWIzMtjA6UEN58fpIZsdcxFrNDsTtxdE7cBdYimp7/xv0ppZW9vNoCZlnCbsBR2EZzG6AGzi2gOyYF4txriouJFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZwhZ7tV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZwhZ7tV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A848AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730052353;
	bh=0TB6zv96S0mZ9KLY6t+23WN1vMgNPPq+gpTduMuKckA=;
	h=To:Subject:From:Date:From;
	b=dZwhZ7tVHztrLgpIexCYRlWgml3/Kvl2HcctVU3ETG8w1WzmdqfxZs+bLT98qr7pc
	 K3n52WNiLm/CkXFOhSPfOQp8NWNPR8n4zuRvfCxl4su+nD68dwxJH+TTgStef0CUDj
	 Pdyy2n8WlqKv055kT2SRml7JYCcW9nWEOaXfZoGXHB5KP6Tag8RTLav34iKZbWk4vz
	 f+C1hmcGlRlAgRmKmLWzc/hYoVvvwgrmbE9rDyr8i4ThR0GdCTQgNfqaPMn0JCPFHn
	 1J1Xuhvbhfn+AA/TgiKq8cc8sTPnEPfQbN+LN9EyzS+94tddeZrR//Md/J/3+nEYdp
	 gVWIxe9TnYpBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359DD13578
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173005235359.9344.8636119860280794958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420dcd7f27c138f390af7dfa7798fc716bb420a5ad519d2580ad887294fd905a
Date: Sun, 27 Oct 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730052353

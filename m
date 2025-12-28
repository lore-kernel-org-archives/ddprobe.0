Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076042C17B3
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766921634; cv=none; b=Hb4ncmu/9VVLTTcDmVgRsnS0J8m1em8GIUsl+E2nrroWuwKQX5vwSvHGxP9aBLqpndydBrExRpOYeLuXh+UMpZ1T6H0sWJNej5LBhBLONNqit/h9LxiCllHgOcDK8enjjvNBbQKjMVfkJfCqeDyiT0hlPykIzG39A9U3YCm4FWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766921634; c=relaxed/simple;
	bh=MCaaW63sWyfjsg7zO5sosZQFa2JcimPDdIoasAHa36M=;
	h=To:Subject:From:Message-Id:Date; b=qE80WSDR8kQ98+uTVwpmnuHLRKlhOBESRelhWLdz0b2HkIPvXLbZS/ulwSib7UIMOXDRf5hwUt1DeLbSiw6uJIY8zRmI2abScYpmKfvbhUUA+vYI50LwYh56pXSriUjs0t15pQ7MFPn6vJ/7I6+5OaPkIZVLRQAGu3xmoG87bJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJFG5up9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJFG5up9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63CFC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766921633;
	bh=MCaaW63sWyfjsg7zO5sosZQFa2JcimPDdIoasAHa36M=;
	h=To:Subject:From:Date:From;
	b=oJFG5up9NDO6KKUK0dKPHSKlSvSTRZZ5S/qq/XlL8OBP/uKL+w3aLY3OmtGvieTRD
	 OkCn8l55ROM2UqHtwSR1HlEfF1ZK4nSY1SCiYZpvX9JM2g7MkHMb1KAz3fFIaTAaeB
	 gjg7s38DLt9CaDtE8XxfG9fXzhdM4BCSlKBG/K4opeWakkYfmmHsqA60BW95b7jH8w
	 08KzIqf0+1LdPNCxoBkOHEXf78gvWcIuvfe4VeVosEXT8Ag3Uiw3voUoMxhso/mcMh
	 bOvqGsctFEvyGOJZ4Bw6rVygaImD4DHRSPO1t3DEaLHJyf7pFvT8hah1eiU5B+SgU8
	 jKPaozq69FTpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94180D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176692163359.9741.10370186510675741325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50020740b1aded978fb20e65b98b9715d1233b964a0160f09fd5019ed5e383e6
Date: Sun, 28 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766921633

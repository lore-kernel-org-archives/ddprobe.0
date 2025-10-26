Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219CD2550D5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761503994; cv=none; b=MSaweOIZW595g7t2KCjRPG2Nq2H/VBFzCPUy9U2hXibnvAb7+YI5v5VO4E/qIILV8CX3Xp1+SFjQZpKWsBKMe3VNqei8fFMr1MjQLoSdzL5YlREyjgx1ownX2BfI14D53pdob+IDia5lGL7cmMZ0ONwH5HXybNSP+P+y8gigS1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761503994; c=relaxed/simple;
	bh=8PaRCx+pFtO+c2Av5X3l7/kzSnLjWnosN8Sv6J3em5g=;
	h=To:Subject:From:Message-Id:Date; b=ET4WKezxTUXbFHy3YKgSHWVVDWrU0lSK6aFuSq2Iok1U+XhchGZeoO71UXLZywWggIiJaQDhz2IiaHdSO/RvNWalV3//Wuur+zeZlQ3Phh3OyvB0mWbFtOXdfJCkG9YKVk+amiylETUlAYBsSh9TCzfxe5t7XAfpTbMrvbyQGm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDbGuBLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDbGuBLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A734EC113D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761503993;
	bh=8PaRCx+pFtO+c2Av5X3l7/kzSnLjWnosN8Sv6J3em5g=;
	h=To:Subject:From:Date:From;
	b=KDbGuBLxJWQdQN8Ve7EW3LifAd9YEjnBeh3Y161pilHC0KShi4NU4sFluys2wb9Eo
	 ZNRru8UI5YMgcSqnwYalX52pUigw+DoSJbJMTpO9QjgiIE3EbXZrW45txSOwR98y9o
	 MG2FyTf7QEPlC4Z0sbv3W6X+9WRgdolKkE01e+h2nBy9dfxmFpbyO5VY4hBoNogfCZ
	 tBNXBhKL6WVJhiJJWCutyHKlsToLGFZMIYX1y8w+S2iCI6hgjAF5vksbZNzy+TbPQv
	 5xtA0y1gqI9e5reOQNA+d3HXX9nTJ3bPOJ9iK0oEdtPj2BOzdaqA/KA8NEFCl/fZaH
	 as7dSAjQeC1CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9742FCCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150399358.12151.12684689906470190525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6f603c1b8d4eadf4897e37250c97b93455da5c56559150fb5c9c33fc16c5e79
Date: Sun, 26 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761503993

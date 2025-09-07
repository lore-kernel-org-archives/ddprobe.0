Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2714B216E23
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757233794; cv=none; b=ct9xHszUm2CBIqM6H6sx6O4uBxAjXc7k4siRPzUj2sZNL04yf6iz/u7yYvVIK7P4bKQObOjFzzeiHN0WhwGdKDUxZFKfvI3cwueimA8eTPl1zXXWc31w0EPHCw7IgPqbE1GUWJUzk5X66g+cOFzak3Nf2zwysLWC4/rzSFvk8u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757233794; c=relaxed/simple;
	bh=QpLnbPtqlaIKRD3w9rQ1ZM65HOWr3vVsyH6XYO5yZpM=;
	h=To:Subject:From:Message-Id:Date; b=BeEMjPo6+TjDw/NOGCkV6dvE24j+MCwoCh8Oq94dtgKQrVHFZaK/bDjVg6nm5bJOzOJcZAJnZYs5NPZuXuFipMtJyjWt8rV9heqChbLGqoHpeWLLg95gm566NewfDRmzuowEYXs5AOAdMp5LibmQpyvXbzPEHq50x5LuH5zTSt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAZVaehF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAZVaehF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A1CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757233793;
	bh=QpLnbPtqlaIKRD3w9rQ1ZM65HOWr3vVsyH6XYO5yZpM=;
	h=To:Subject:From:Date:From;
	b=UAZVaehFSmcK9lp6Z8bLUGLkBRC+sNbmrkZOd0stTdIzhBiiiMtkt6EAx+P3PVxEz
	 8FGWucCjOCjPVsCgXG0Ef8T49T3QBK3/Xf8U3HlFivOMjaIgYvpjHPT4ls0OOQKSp5
	 QuGFXHjrSAJ2RkB8hFWJAEsrlPZ0kWosW4RXdvHxspwYlnqhbHy3RlC+Ngj2B4S9lk
	 8QfzigVOgO6PYv2K7UB3MSpfStr40BE6I87w1JnGOGvT3Q7GSx0LfhIMBP9+pfeO4Y
	 Td/CvBPyU8tq4CEAwvbVLP7r5aIxTFUC5/RpOWO6YzIxLcWpXF0p/Dwk0glm65+uRt
	 JPAu2GwxrPCgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE3CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723379358.22797.17500007638896972589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcbe02750494f2e37ee5c84aa9a4963f30ca6c31f8a2623cc4cbf33b8d677b7
Date: Sun, 07 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757233793

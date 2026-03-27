Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D493A63E6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774604094; cv=none; b=XQ8vCSTzh/70Dm/Ul3CxXH4Adyrof7HPafGY/8KUNpAxMCCR5Vn3k7HvSEpoGDF9F2N8C9/i+g03VzjbQI4cWOBQepwtxYsLeTRs+RI3VaZDV58b0ShldS3eZ87DPGD4/t/LOEwIKLVSanptPpEH/RhhmpPtz0M/lplFhUkZc9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774604094; c=relaxed/simple;
	bh=hdwktuAdvdO0kE4Io7m5NqSa3h2euWsJrBnnhfEIWlE=;
	h=To:Subject:From:Message-Id:Date; b=Yj2llQ8waymXw1tqyP7i5u4jBYMC3hBFrAbpNBJuAT2T+wPg+IPDzHedUB/KyFKPNShZCquBd/jX/YVeqersEj5mC5jcTSGYi45ZQOZ0JAhVKwr555PFZd9xs7qzdprUHNTwRfkJIZCCOWaPANABnY+fyTA39cMsBCEeZ6OUkfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuS4aIVj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuS4aIVj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA88BC19424
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774604093;
	bh=hdwktuAdvdO0kE4Io7m5NqSa3h2euWsJrBnnhfEIWlE=;
	h=To:Subject:From:Date:From;
	b=FuS4aIVjm6uJAef8yGWjJZzOlcsfnGLzzwzgPtU251huGYP7f7OmTF5rUOgrMO/O6
	 gdkr7RudJAmOwBW3WcCRx4TjQIQLznbprolSClsE9c/LqELfXPD4GeJkY2uJNWsObg
	 HyNLb7ciE25YMYEAYMb5TSlL4l6teyfoAZ5Xgxl6eQ60eBnnvV9p020pQnUhtUQqDY
	 /bDNlK3uGW8fpjK6zslx8XBqsmasys/3N1SyU3Wp/L3efwBBV0n8C0F9U2tXMpWUCt
	 ZiPjqldAdnX88OJdjoiKq8vjACxKhImGtmPJLrS8VNJWoereDT8I8TLzSQbiEYwmnc
	 Jmr/gOe1q34TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93828109E544
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460409359.16218.9121347384135739882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37eee23e77055ebb766997efbd9f7bd9d623e66e6cba5b97457ea68f004b163d
Date: Fri, 27 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774604093

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE36274FE5
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754485194; cv=none; b=pBUFboiOoFN4JbUTSoXIvOjbp3Uy5ZTVmzWk3vu6IF2vynXMVWYsxrv0CaxuUFDl+kZ5YCbEvdODLYlXUIjVuCHCLtcI/Hmc5QYp9v31MPvWhVufEMEIg+wcPazm4+77NCmSWv/nJCuxGSuyUMaAjoSMmCJxnfYoC+Er2dmSoLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754485194; c=relaxed/simple;
	bh=QqRHVLK1xYmvpFHI2JSYNzcsJ8jqrVr05g0kZVDOE/Q=;
	h=To:Subject:From:Message-Id:Date; b=iB7rn/7aSsUB2spr5OSpHqkwojSbkYnCLybvKxP5Eitn8nUfucnQm1YPqJcebTg3E7wuLYkMl734t435VdhljMClSlea7wcEt4S5IRSr9Hj34XJu/f0rCTXJXfNMYllr3JJglOuhDLQV5Ko859zSJGNnPccOAlXTz3D++dFDAV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lt/MoVjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lt/MoVjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F735C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754485193;
	bh=QqRHVLK1xYmvpFHI2JSYNzcsJ8jqrVr05g0kZVDOE/Q=;
	h=To:Subject:From:Date:From;
	b=Lt/MoVjNRQMCOILgNVEp6/kd0TbzUsl+QGbLM1R8i2A5P4XNt7L4yzoHz+B4I3rA8
	 5ReU+OdvQfNnRxyOWGpuCr4lV0ngR4as2KXNzKK67TA5z8ggb5x6FwRO7XtQu+x+qE
	 VIoFg2HcxzjzmV8/Fn1Qwk5omXo7Uj6tanDgBv6HMAK4RYpFG6zKtHsJwM7Dafr8cw
	 ADcRBZtAyy5AN4gZl9mXd05wLsWz0UPTi+jlqt+NT9P37Qfwi0r8z1mKgRAFXgVG/D
	 h5T0iumJahskiXUEMXIVy05POli58Bu3XlObXk+8x5hqjmoUj3VSjDoXKiqwWQo6Pc
	 S5PxkhmFOlsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92902C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448519359.5082.5246194521375721400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cace79dfd46dad8c6133010882634df7a062be81216793cef2723f7c9d8bb7
Date: Wed, 06 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754485193

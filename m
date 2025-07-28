Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3921324E4A8
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753701594; cv=none; b=Ypmqb4CWJRrReJAEi/wBMKUDbviIXPnzbtp/EUp1ZeS55ptFC2WR9dr4lJJp3tv6O7o1oeH2PhSvE2I6aYZreJQwlnXdTfrQUZ9AJZxNVsiGVp07lAPUuOiQ1pYf/xN0umH0X8L251f+mj34LEijv7NA/nJ9hWzjVCu7Xy1bu6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753701594; c=relaxed/simple;
	bh=JsizMGUDk95rI0QXgdo/W6eNpORCdAWTD3qK6wtuIks=;
	h=To:Subject:From:Message-Id:Date; b=dIUBZkkDfE5IvEYeZGjl2FlDkfn5cww2TBF5K1Liab0wm3Mzai3DEbWQkYLC7ONni/GpM85of02SDKpOTDrk74nRKEWgc1mCdGW8r0Sx9gUJZ56lYf65za2lOOHqBbDg+WSmfhvzuATYFv2lmZBCKQWo6k1rvY8XP91ShT8nYuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuPBSIzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuPBSIzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6542C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753701593;
	bh=JsizMGUDk95rI0QXgdo/W6eNpORCdAWTD3qK6wtuIks=;
	h=To:Subject:From:Date:From;
	b=BuPBSIzxHdGUf4STibqALgU5V2533wYgd6bkK02LXGK7os9TTq+UfZEtjJ6Z1EHxg
	 OTytsUGEMNCwyMB3rWC9QA8tGvYM+5Z4RnUFSMQuepVUm5ZD95bhwRHNAYpnTD0lkQ
	 NnCNUfKHKhRlTG9ErJXlPg6u/+Pyh0rcDY5JfKn1M0UQ2/0qtPi/VeHduUfUtaj22F
	 Mrl6QOXJak57JgRT+UMs4J4VTgy+P5nX56AeGLnEV69Rl+yJ/qGy8Q2W1o0+Q3HzyK
	 fwqBovZkDnWUHM/E/uaTZ0vceuy6sQXpCmL/7uKUatnjDqTClkWkymh7y+HaN3YLSq
	 xqz4iy36SmqeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94501C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370159359.8614.5780904795438373347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f75497adf2e98d0b1528b1d1a8aa3c83a55e45845e408bb4252cb26fc9c64f67
Date: Mon, 28 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753701593

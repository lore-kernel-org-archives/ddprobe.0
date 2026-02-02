Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384E437D12F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770053034; cv=none; b=lyVvjv7Arx9ZhRh4F70w5mTAGk0VsKP/ldnViARs5+SkuIDwrKuLhsFlQlTabomwHO+lhFvCRIZw2j6SfoXHRVQKcZkQ1dooNAV71pnI39iNwYFGMUJWqI9V0qNdcOIjGGLsR/12s4LgR2IFFd4eXZN3S3uhkSYj9XZXS+DHa+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770053034; c=relaxed/simple;
	bh=qaYJ1dkkJ/FWq0gVIuKjiBfZBGPwbqTYzeejYlSfjko=;
	h=To:Subject:From:Message-Id:Date; b=AXM2qIpDBpE0yrdBuM5/F0RskmdEvdtJdldNknAbqBnHdJWdkT/3NZDdO7HQ2SJkAXX6R/7zYMMz3OkC5VfV6ybPw7gRygZ+DjT+865aGU/ZUui6h6AsuS+AxkYQug4wfZJ6LOcIekcVT35BXA6JVDqDlwP84b8WK6XOYMpGW2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTzR64qs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTzR64qs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1751C19422
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770053033;
	bh=qaYJ1dkkJ/FWq0gVIuKjiBfZBGPwbqTYzeejYlSfjko=;
	h=To:Subject:From:Date:From;
	b=hTzR64qsf0K60l1Wzp+mGFY4ARVKb1Nq4awddVHk+NWvTZMdzwkd7Xq+4dYjrLYAo
	 uf7D0925Z6/tCSOhZeGoMvp7vWRz6IKMN83iY+CyKUTepvL11cpwLNvF436w145rx8
	 b4TA2rLd+lvsVWUEfqvR9cGMTh03uBCe90rtoFwLDlycdP7mA6aqQilHhOyaeVuj1T
	 oSnFhekg2WTBqat6rNFo8IkDPNjaNPnVsfgNzLFqqchPfJqDXeIEZ+Xsg5jYCWfBjb
	 ARRnBR9oXXC9Iwz6keGelqwY0aJmYjtIJ28GysXIh2b2NsZO62f7BHbmRHOfIBvEUb
	 chBQwE2FCxQ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB89E7DF13
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005303360.30553.4670454368348161877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914e4c50929e4edef27a5bb83acf1fa3c372e766f41848ea90e693128bbe64c0
Date: Mon, 02 Feb 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770053033

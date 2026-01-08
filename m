Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACBA1E5702
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767911034; cv=none; b=boZnIJkb4PRU++ksU55b9BaaTcXEec9TyTg/mY/EdtEp7pJ7ClIMP1tPENiQxrJYO4omadQdOlUjN33N3PgSr+zghWF6yHwAibRku5+KCihzhbMtkw61JYDx6cG/nFi5P8V37rxND4Ez2a44+PoRT+T0cYt/l2gYeIdaDd8eE4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767911034; c=relaxed/simple;
	bh=Yx2L7OpUswRodsoaqFMfM50Zf1h1cgggXNWhVoSvKWM=;
	h=To:Subject:From:Message-Id:Date; b=Xtg390UDPv7lchEGvWdhxsfmK19Ph5PF8pvxuZusvpVVRoeyDTjqiJT+0BK8DKxQAX/BXaVuBbXKBe9XsapgtSaoXmu61wAMFJIbD+VMKDclNvjsOSRzdE5oMYUz6x9y+Srt0Tp8zGt7WgyVs/Jj3FdHFpJdhP9aDBkH+xAQc3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd6JleEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd6JleEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D641C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767911033;
	bh=Yx2L7OpUswRodsoaqFMfM50Zf1h1cgggXNWhVoSvKWM=;
	h=To:Subject:From:Date:From;
	b=Qd6JleEjbnCcGIWZs1vArnkbrGYy5mRejjXV4puhg1eAU0PlItQNHnu2BNN+OgYyP
	 DIWtITU5WD1yd5AD5iQvAGtJG5EyGCZt+tC0i5hEX/ImY7v9DMk3xMWntICaHlvExb
	 yvEKklywMcjU3wi6Z9Ra4s8qWxk6ELsXvu2MkE3wZVcfuKbM8rgKHuYqVber2NLOJP
	 b6oMmWqrNkQtrKa/We/MgvE1tcAWgQfGOMEiwAd4ITtidwqzMTGvsmkaNPCpqJ2Lql
	 /Q0IY6+DudR9MUFNihyCVqfiiPzgfk+tKqfkyINOMrWpPUpJnTeS+kQ3UDOTPxGnmm
	 TNKqNWzuMffVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0A9D232C2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791103357.24864.4372789303615572816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f575832805b5de1771b52e00aab06af4c9ec215adafede50e2c51ce0a567c23
Date: Thu, 08 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767911033

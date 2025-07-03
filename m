Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255E6288C21
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751520594; cv=none; b=BABal6D+sliNoIe3JQNzEDg57GM9ZksJ/yHjT4+XBrKfQet8kJCL38jVqRhnamGOHV5K8F3/xWZnT9WCXvHudyZZofaK+JEgQj8rNqYEyqINT3UOEYckW6Ewil0xe6GZXqrGtfg+5dIrWoCRF3CLF4XRck2//GV8R5XMWOGJ2/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751520594; c=relaxed/simple;
	bh=J35/Fcb4342/0Ztpwx87CAfTaIR0TrofT0n0861lIsM=;
	h=To:Subject:From:Message-Id:Date; b=QkRqC8zO1vGIdqNfrTqmekkP1i1hsQQhgXIb+o3x9iQjtsN7I8kQh66DqcEhm/ZMk+suRxXBW2l/Z7US1/gFIXKvJk90z9uq9kyIg2Ac1ldMGnhgkp3e4LvPiLFCEJoNfi5Q5+XupJbVRupNFVAI5HUU9NpN0c2paEOPrSUSduY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnAh/VDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnAh/VDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D072C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751520593;
	bh=J35/Fcb4342/0Ztpwx87CAfTaIR0TrofT0n0861lIsM=;
	h=To:Subject:From:Date:From;
	b=qnAh/VDN16wCX59RVWGLxObCSowFobChhbAm9aVvHSEErinDFsuPgAgUbwswbr3QL
	 90NpKxNnKYL0B3AN6YXAQVAUOx79ky7RkWE7//ZQVgph26ErT8pwoe+AsLdYFE+c2b
	 +ReWwKJml36t693kpJb6PuKGC1erKzdjwDO1aGUx0bca3VSI1pDqFxuXuflSX/Uw/k
	 qBI/yVQuZGAnc0/bI2WAGgAWfGFJyEYxEqXp87NRP5CYMSZd0Hhv2ojsD+wqiIKgaZ
	 adTBdrOrK3iUBxpDwdOpga6Qt2l0JFwRAQHlftB7pk9UpjJ9huGvBPJSzBIskvIaXv
	 1Qzl04LbiLX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A3C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152059357.2543.4950342867313345295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c130cd2e4cfb1176f9618e895d64b9370e4bccaf6ca25152782edcb52d58cd3e
Date: Thu, 03 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751520593

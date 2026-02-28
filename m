Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F65F33F8DE
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772307294; cv=none; b=ub1keyBmsVNkLB+96abZI26+L+MyMOIh2uw5nRyzkEVzcJrqSpUgrv+8Fmu51AopHUoGEisGyoKYX21+P/6RsCED1UoFUD3mpVwvr2xsFOY0VKcX2rPmfoRzGS5SEjy/sERnuuggRYqS1dSRw6/9qs9Dr6AwOfY49QZNC8b44Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772307294; c=relaxed/simple;
	bh=85OgcqVk5mmX3gktJQLdA05FlwUBcQRVx97iJti6TSQ=;
	h=To:Subject:From:Message-Id:Date; b=sKGGKH6hFg8JDOVmBSdh2qKGl7sgLf545/uXXW/YGP2OFpCxenvjIaVJCZVSdCQB6EPTq8nlO3QuThGRuaXxemCImN/DY4oJ8rVQwjrtSrxuqRexN+ZgWFA3u9pc+/eBpPzZfI/dPmuAB2FFOufoSqxeDc32zu4TQyoisnbHneA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvEsFjIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvEsFjIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C3CC19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772307293;
	bh=85OgcqVk5mmX3gktJQLdA05FlwUBcQRVx97iJti6TSQ=;
	h=To:Subject:From:Date:From;
	b=dvEsFjIsivYH1X2FCM7dhxIiV7eXY0AsAkGvlj+KDFa6itYF3mFxjRrmsCZS7BTLG
	 kz87QH4p7BMnGC+MUdFCuRkROvby67MerJLSn4Ah7B1AFgBKZ5q/XH4kdwz86ucek4
	 gbB/SsHr1YWRfw1hWxhLvRuKY3+UJmhcjV5FDxh0RkJcpGnCl9HSmv6oYI1gnUkWq9
	 c/U+IaZbYXgVQPcl3Ty6Vbe8Kz5eVHJElE/U8ouj694ed0uKvscrq34h02UPlwW6+c
	 6Yhy5oNiciOZYM/nzp6KoFPugE33xR06mWw+5NHyvKJjf1nBThlyeB2ZI/5qpXUQZe
	 PP0sfn4t3pGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94956FEE4F7
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230729357.11484.14250535658870343519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a1ce3637449cbcfb53a2f7f15afa6404e63d845e3c47cef0d99cda4505ec94
Date: Sat, 28 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772307293

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571201A2C04
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716624263; cv=none; b=bLAisPZPrye+mJJiA7ZOnfv6BIdHqvRhD4UANrpferDddsGHIFfG6EJczBgMpXuoj+Bledhr//y77fyququb1wKOalNRykneJzTZaLQn5Z9fWm0si+pGoKraYAduzfEmrUd1lvXUei9SXWlllDkHDJqpeLBGjN/Ktu4Pn8JAuXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716624263; c=relaxed/simple;
	bh=AC/zTgZuWbiixVp9V26Mz5yP17JNDtvTBxD79Ce4tVE=;
	h=To:Subject:From:Message-Id:Date; b=cF5PZMs7gHK8kuFToH7aNPCNXboso0A8J45MNqKIc4rdJRmQl0ND+CxUe24K/P3uwCjhZ/4K4nzIU23GdPV6wxcYB2L7ZBuugAgRN19dBZ8pWWwJmN6dxUEzqslPHMTTNQP2mNy9hInqUiGzxaAvbt9u1ccLrq2zPRXDg+wTIcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGZvXfdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGZvXfdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1855C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716624262;
	bh=AC/zTgZuWbiixVp9V26Mz5yP17JNDtvTBxD79Ce4tVE=;
	h=To:Subject:From:Date:From;
	b=LGZvXfdtmEu1UbI7aLxAov3AzD00wfjUanWPUMT0k8XUo+VYpw1P3OGyDUj/r/fzs
	 x0dS+42HOq084gEBozjxhJFJmDe85MeUmrLhMDuOTGqGtDIXyvCNzn+pPM0kAGvb5I
	 atnC9ki8KQNID9s7kGI8STckPwceojFLTH7NG0bJB+9pe68Yx0oMtrdEcdGrwQ5Mc2
	 uIn8rQ8HO8zORhzDBgeq69l9V4VjlWDy6MmLQhE1K1Pvfp6UFhe0l4TCmojOsbepSX
	 qzv7XNCUMyRuarskkmzhWJxamm2AngebLudVSHjg3yNc/DpwB8kQxw51tMTufqsu8C
	 LW+YlS4OmTRhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C258AC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 08:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662426276.4810.10472782784864810827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b30c84677bc196f1fb84daea3dc267a645c6a9285b1b5425fdc14a7f3c07d96
Date: Sat, 25 May 2024 08:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716624262

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6277F2D8375
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769205834; cv=none; b=V1vtDuOYSTGF7zZSec0OASGZFvzi0DOzDGcam4nn4XNIguXy3HhkWGCqOEIHGcnSd5GfPU76i3yHXrbVv/+UuO8YE7RQPAPVhm15NNqJAaYer8xtocKCPw7vrr7yAi1S04yzyhTjqiAzAv0sLcsmHphq1oUeWc8X60JsJVnqxj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769205834; c=relaxed/simple;
	bh=JmxGqsH4iyeW9h+fvtEehfyx5dFEI5M7yg9QF1dkPA8=;
	h=To:Subject:From:Message-Id:Date; b=JypS033iy0p9rQ213w4y572AdWq60NILUAeskKqIuYvOEx7knVD61IV9k9g9I/UByZIpnu/LxZRmFPPC0t6s7iBnoZUlh66UnEVLsdUTdbxWKmYb6UgAb9TOFj6Dsd6GOptsmUx0TFfuZey5XepouLWBlzSEk6oAkSMrVDqwMuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYcca0/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYcca0/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF9FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769205833;
	bh=JmxGqsH4iyeW9h+fvtEehfyx5dFEI5M7yg9QF1dkPA8=;
	h=To:Subject:From:Date:From;
	b=FYcca0/pL+GZBKsMyMK7pfqBGgwjAWrEnbSJjBIoph823OSNPXawjmAsOHuu4NoRv
	 vIyjVB+x5fwv1K9BEqgYeKFZJF7TuX+aLsTgCJauHhgokd1HC0h+BUxelbz0a/BrQS
	 HCT1SbzpXTvW/bBmz/gdVzVAnjfkICEt7usQVlHB2oZsJ761MzuyFguty7Rl9UCdz7
	 scT5OF6AKPqEDRvRZJF71JXXCDJCHh8Y3/9g9XbYOvPcK2GKcnlnto6szx11E4mS4c
	 ucnjA4n7Isx2YaFmHxBkTwvYfeKdKla5bOS/PujtX+fQJ72/LW432hxsysRdh/vM1m
	 3McP3L1duozYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E297D778BC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920583361.5901.9989419011744996136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd393ffd41500874a6d4dd917585f4c351e9c46cfd61661c42f63590bb0be54a
Date: Fri, 23 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769205833

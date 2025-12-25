Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222D326F289
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766650434; cv=none; b=ZlFnJeVF67WY2y0/EzA49O4XfeqQ1DGSDnb8kTIUws+Ub9dlHoVR2ZbWGX4IIwlTJLCfzNuOLMfBTAkY/6C8QAtbwhcRSwwpjTk+lC5PNPAX7TbTQyYyP37UojfxrNSoK7O0X6LH4rlvWNSQlBNHOmx7mIkBAUOsNBS+AAhe4O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766650434; c=relaxed/simple;
	bh=Lgr9Ey7mA3qf17wlrFkpTto6sY6t/RmTGiy9wQYP36U=;
	h=To:Subject:From:Message-Id:Date; b=P1FZCDkjMuvHuaziqY87qS5vwFYohq/py4QUzvxvyMAaZJf3U/2y4K5n3L8xf5TeN9L3inK030qWeeKaskzJDUbY+9rWlxcs1t0NltsHkS0D188/u9I+TObk4oFv0OS/smwwPaeYbORwzP8tDOYrJVRTSjdvGUTBzrEnky59QJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWKzv/pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWKzv/pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08AFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766650433;
	bh=Lgr9Ey7mA3qf17wlrFkpTto6sY6t/RmTGiy9wQYP36U=;
	h=To:Subject:From:Date:From;
	b=pWKzv/pp48keu30yJz/lu4pVw3Tk70ENLiHbm8V6D8larfvKMy0C99IgOcwrmuup0
	 dXxnmYBAd0JHBXfekYhA0UP5rkU5UdaHT4H9p0xWlZIgC2UABahLEZCry1o/2DVLE6
	 ArNKjyTGOQOYVE1PzKjVsW2AgJA4P09XiLF0BXSTIaQUCfbSfTjIomhZ5ePedJkvZF
	 WrbUr/qCVyXKT/93qiiNaTr5pPEnLfuIBwjWV/R48cJ5JI5ZSo13hpPl79T1iwkGO4
	 p3voKw6IjfGGG4wuRgZVrLkd5ZjnpaR87sOn9ZW0Fg5ayPqrNj1SIaGPJGuaMbHVFI
	 6DRHwPE2+LG1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9015DE7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665043358.24945.11894820039696346489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec44c05fc75ef4626ca29909e548577dd3ab18bf7392e78d3a3c2a9cedd38f3
Date: Thu, 25 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766650433

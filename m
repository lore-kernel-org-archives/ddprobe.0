Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE07019E98C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750459193; cv=none; b=AxrfP04yH2TYrByNJKrz/5cnMumXZHiOGspYq/H4nzf29dxf38nYh0rFB5aftQ3oPcicHwduL3pbzcemJQSCw8udatBmMlJHDthyniPk28cUMIi/fDyDSbXETcntMjsm7gYNfMUBNgjW1Yq/fBbQUYP5R2cqXnvD6eDhhmu3Lsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750459193; c=relaxed/simple;
	bh=ljooViF/27b9yVl/zaCoqHb7dpiSzTxGvW0rQuiKPTc=;
	h=To:Subject:From:Message-Id:Date; b=sYVNaPeW2pge+sCX0ey7GIimFYESRxd4tlRgcxk6a3f9DSc8BbkGBGybgB44embn1Glryqzl7oZnifloTS7HICbFUi7byBKHhxrEEGizRn4BlWhHdsXv2reQJ46fT9D83zGF9joCTZFvWdgzyMpYeAfLDQE2tLqahCbTMNQcjGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEkzqmHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEkzqmHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2303C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750459193;
	bh=ljooViF/27b9yVl/zaCoqHb7dpiSzTxGvW0rQuiKPTc=;
	h=To:Subject:From:Date:From;
	b=aEkzqmHgQqQl8D9/RhrjR8lz15D4ba5KiM0sOpK4gAP/7KCtf8BTuLAlWwwxDCWkm
	 7zQXONJTO81pm7jMzOL6xnnbSXMQkMSZKdluJJV+9FPU5XNEC05Vq5AWd9nntZSBrc
	 xhjDMbY4GanSnwUiPS2mhMVHlp5mB0PjFJi0ERfgdfLM76/Jdm4b+XxRf4j/nbNEzm
	 d/e7tC0HhZrwe5P8Q8/wG1crYWL8tktY6Icz1GzGW2rcSGINFbbzxx3IBXFSsRfxLD
	 nMkytQm5g+Wp2MHnby919pUS7jFEiRri96Onp/StGKEluXgk8nxCuinfM0UXTDGv43
	 EEp90TCvxqAXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ADC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045919357.1637.3801252351646103864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb96a8ee0d5bb7688b8baf8677c2632fca34b596cf84b5d4dcd9972cad481c5
Date: Fri, 20 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750459193

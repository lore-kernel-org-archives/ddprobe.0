Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53150340D9D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782100594; cv=none; b=Uct/aBpzwbe6boU3WxBPwt4/AUM++O4tWq6O7xYTyalN7js5J9uz28n37neeOm1Q/8caeQrnEsQG2yj7bx3+5JAfOSIHkbNnywJ70uYduGzmhbAH8Vz64AuQmmBG59xn7ta25wYwIGF1mcBiAD6YSDetFdED7fjeG+8rpZ9Or9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782100594; c=relaxed/simple;
	bh=z8oXqLxyUIYYavv+0+nuZGIZdIaX5/URD1YBPPTr6ls=;
	h=To:Subject:From:Message-Id:Date; b=pXurh4rDHCty7NhUfFi+bWWEHwVMCbkD41Jr5DmnLG06mZCpB2GI1zyeIOqkd/p1JK67k76v1O2G8InLhOCEQV4mHjN4XWJDoiIqkmU+wjYEBKxGdze1+IIFqzqK33eXE6A463oe9v1oOH30CJMynCpYOX3lW9Os9XX21d1uzsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8CLhc1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8CLhc1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C145CC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782100593;
	bh=z8oXqLxyUIYYavv+0+nuZGIZdIaX5/URD1YBPPTr6ls=;
	h=To:Subject:From:Date:From;
	b=P8CLhc1buFbbBcoggD3YX6Sn010wsWGqL0YCHQ+2y/TwqvGp5eOHuX7trubo4VSRl
	 gyxTlttgw60PTo+xYg7eroLkKWo0mIji82BJQxTkbtv7DWfTcmm84pC2uSiY5s5vFD
	 djhy/ZkR3Hth+bpiFaTQJa1H5G37BLjv/6FlNDa1WbvDQQuGdW41/iGPo4Y4wvdAje
	 MgrXmanWuiwURUDUmu1Wji+93lUoj4Iap3CyWD/MtFiZeXq4wQfy6QzUgqUi0kMWZD
	 tHrB49CNUkbSDqT+XXSIBJ1sgYlUR+lwPdvN03yf7tLhmuxwcbF5QnMcof5/5z5NIO
	 r+ist1stoc31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0451CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178210059370.13279.5401065097824129574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6595503bf3e2a45e0fd50b339de30f263eb0a87005c6e4ac5af93ffdc79d8f
Date: Mon, 22 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782100593

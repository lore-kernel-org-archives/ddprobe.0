Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DC7A59
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772919894; cv=none; b=rKtpoNhDjgUoKcB6EOkCfhzbJax2o5swXVYPIHQ1Lb1LrLQUJijNyIPrf0DyTaIWyty5Jsw8edoGQ/Xbsyi4+xS+6ma0dxE7373bYjhgyiKu3abwtGD3LVTVTMoboK/v7eGh9igBUmyJFTz5jXn9lbGrojsjr3J+Sc7d28QE9+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772919894; c=relaxed/simple;
	bh=wt6wBlG35U+LBcYa6+Z6hEFDJ8/QjhnX1RJIBZ0aBuo=;
	h=To:Subject:From:Message-Id:Date; b=rplhN49T4QR8dz6Q8uxgU5cJ3pXnKVmw9smMcqa30g0lG98AZepy+SoC/j8Ame6k32PmmrOBzBZSiqXdqQ2rr2kKRPJ3j3tPilidrFW81+Hci4LGnCbENtUEDhHmMWo186co681+Hs3qgTLB5YQOdbTYyM3XElw72v0H5sBYhtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVncYze0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVncYze0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2043C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772919893;
	bh=wt6wBlG35U+LBcYa6+Z6hEFDJ8/QjhnX1RJIBZ0aBuo=;
	h=To:Subject:From:Date:From;
	b=mVncYze0j+CQbIN6LkgQJRTttgRQyp8obuaxOkWEgBTV5JRMCyLqemPhqDgnrJKfm
	 7e/V5X5SX30n1rF063GOwmJkDCOfF3divvfAqSF1MxUO4wKnW33g8Ylr6vq+hsBmpI
	 ZQmUNu8GHPpdn5a6DmAWnVpT4ciQp1tEI82hxLSEFC2dUMFRLiKnGvbdo0TINx2m+9
	 ONmfDx9C46u5ho6oVmPF9nPoC//Ji5XSwus6xTAQgNPXi1HYdEexemW2xD5FSm1IEe
	 OFezUk6zu0Mw70vdEMo2Dfjw1HUM9+NWubEgxKCuNWa5iK3eg9qDVJcaio7lYMxtkK
	 DmRUwxFpb6RdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F949F5510B
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291989357.26839.10591610044223509773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46824a2c011cfb111935bb5cf335b2d477d506325745ab7e402c7d319aa4d628
Date: Sat, 07 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772919893

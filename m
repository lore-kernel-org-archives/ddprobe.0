Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA881F4297
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754857794; cv=none; b=kBonEb4bBje85qEao3eDbT9R+K6HDrGHzk3U3QTPuyj151UfQsma0xERcPCs7h4FyDoejuJaA9SQSCUCibVfG4Qt+HTlDn5MLvtXg490fgU3ftJw7/lF/gK2Pjqvhd/nsgFTYyIV12qDB0uBDu1NdtXdCmHuiMJx7wFyWL+XtYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754857794; c=relaxed/simple;
	bh=BiyGBIO5rP4VHr4cjktUyj8Gs9+CtsC8S4YYNlq+0MY=;
	h=To:Subject:From:Message-Id:Date; b=OjO0Rvqdtl3BiujgKH3j4gviJE86pxTo9cQy6kDV8rn0C2YPoc6qc81s03iA1WBHs6UtV91NRhnecUQxdXHVLYSRUM0xh2LVfSOxXUBWJqpwuBMsaye6CTU+OOXTb3+c7nCJxOFNKhLVroAGWIViRI+no8tcMw3iHleQAxsX/4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptJYt3BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptJYt3BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5494C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754857793;
	bh=BiyGBIO5rP4VHr4cjktUyj8Gs9+CtsC8S4YYNlq+0MY=;
	h=To:Subject:From:Date:From;
	b=ptJYt3BDWkil8BthTNo0hIYHmHywQE2A9TxeX6Rml5MCDQ++WIfEcyolThWW1p02j
	 jIQD/V28BNKobhPguGikseWY1+Z9HikRL4HIMKgQVRSe/LcQmFbxa/6kItxVJKYw0r
	 bNT4dXsLrWNViJ8hCaFtTQjVNVK2ZEgaam8sDwY0f6iPHlYyq0R53OrBgFs4xl0IVC
	 07EJCz8KSN1/68Pqo/FnWSvJa/NjcSv4N73netFYS1Zec2ATyLFnktJ2J+mY70Ke4y
	 nvmHlygQV/RVL/XbiE92Tp2NW2KIJjtILWCgaCn7D1rcdumrn92bxM80rhG1SbZSz9
	 7+DT05ih8vhTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9256FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485779357.3801.1181083166514578856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea24b3370ce1153c98f1f886ac3f07eb5b5a0f41ce9720002a823679719c092
Date: Sun, 10 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754857793

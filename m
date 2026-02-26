Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DEF3EBF34
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772064294; cv=none; b=NvQAyomyv9Qo5kmE9Dtf3HX/PZrLf+PXXx9VwXxTX4JfsWAYMGEeD79K9jk+3phpE09tNBR705GupfMXoX6g0MNWbhUlmqKgV1kbKWg4CRTdmcgsXG2hfcuyiHv2+Zo5qJSelQs53qXJXX0hzyrhlN+pJSFVD4AOOhzWZ6ELjck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772064294; c=relaxed/simple;
	bh=NDrIWpsQHmeRSntE3O6bDFaCmmXVbfOo7n+FXjiW1Mg=;
	h=To:Subject:From:Message-Id:Date; b=eaDaXZiKAJ/KFrNhHPBxfIV7Cq5OreC1QSF0hwTWNoXczTxytgBOxJNea0JDDj08lhNUnLvkLivMJLaADdLg1Dp4Vgf87xmy9hPjcV4OQDOG8it1cIbv7lWThZktiFCD07qoi6nrmd1on9R9zywVz4YnpDbUhlQYU9TLICrUkUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPRvjuQq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPRvjuQq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5493C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772064293;
	bh=NDrIWpsQHmeRSntE3O6bDFaCmmXVbfOo7n+FXjiW1Mg=;
	h=To:Subject:From:Date:From;
	b=iPRvjuQqdZeSuSPDA58XvOoH4xhacw8fsJpt+Y3tUsoozwf97KELzHj6IRvrk4Qnx
	 fs7eH3An6F3WgY8Dffdkn2tYuYEHZVDAnYD14lv53/DasR4IdeafzV3bgGkwctxujg
	 x2FnCjqrOjzQ7iS54idb/Il3/5zJTBdOGtaKSLttt/92TYM1Wq8Lvwzr/Y29ASiINb
	 hA8At02AssQaz427/rHJqeMswLsuYzsh1itZ6qhaj7fAhxykW7ZfbiqRRYcnWJMAPY
	 8NZxwfJc9hAuwaD202EePPPZWq1cQPNJYZDYRg5BT/2Tf9P0ahgaJ2NytygS4hcefm
	 4HsN2+4/FFEnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E25FD45F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206429358.5030.11960557195473944571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c38d934c42aa719132c699b875597d9cfa54a54801c8e3f16d7471d36d9962
Date: Thu, 26 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772064293

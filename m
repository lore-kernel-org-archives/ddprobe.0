Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDFD22618F
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754515793; cv=none; b=hyTRK5rPap3xMO2Z7AaQO6mSYqlDt+KjaboYAxMl9PCbwK8zYVEejKfCZlXPfbwY3ToeyyfwV/vYhl3ODXhtaSXax8mJX1Evs5gf5JQqhhwPlF71oO2j/Ba7k0BbAqZx53cZyxzjN2ujA+Vu8G26ExHXyNmGFcUY7HXEuEcnH1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754515793; c=relaxed/simple;
	bh=VNsIJz97BoTsuzFhK+a37uDgO19F3oK5QFsndfQbof0=;
	h=To:Subject:From:Message-Id:Date; b=uDo5G8EgIiboTuk2e+/a+ANi1s0nzQvemCg0h7omZnWo3gJfRmQfrSYpTnRzWUefjwKmr1E2rDuWIaE31pGOCUM3h5xEFWanlalEFZpqdcxFnnaJ9B7qzFZc2gp4UJoVvoiRVhv8c6O3KLAuBqt8LVfBgTm6HLxPDcedGPr+K0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCoaJGp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCoaJGp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC81C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754515793;
	bh=VNsIJz97BoTsuzFhK+a37uDgO19F3oK5QFsndfQbof0=;
	h=To:Subject:From:Date:From;
	b=hCoaJGp8omETmCUMO12ci6ChAsmuxgx3pzTWmJiPNIHUwfkjckx/xS7pwRPf6ghO8
	 q6Hp6xmewgVtL+HDsotiGDlt2zQYuB1aZGHRthsWB2XLJ530Va8MjLCe9zZQ/1KbQn
	 4c+pleB9MPfWbLA3HLO8TTtNE9WIjGD84d+KRozjwiojVUITIPxf0dNqqQN/0GFOc2
	 3AKbt/LqGEOrq7a2tWZvq+AIypbVBUSQvtz5sYsCylMcBAvPedNFOX9BVwFJj3paH/
	 ux7RVaC+OC0CxG7UZOZpORgKv/AQexriKjOuLKCfCN0pNQsV9id8Z3AHiMjty9SpHF
	 WsE8nPY3P31QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C2C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451579357.12669.5132518594315563938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08e1392814fb22f42d8dcacac33ab89e41ddecd7dd4459eaebeb4102054a81a
Date: Wed, 06 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754515793

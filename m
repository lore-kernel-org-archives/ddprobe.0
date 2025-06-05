Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328091A76D4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749101394; cv=none; b=lwEI94M/kKgu2a6O/cmGYD+43o/vuEmnlCUNbDICVTitX58MLaKIxOF6tThV52f8X4RMnAiPQvKzZmWC11l0tvNjRtcVnCTZuEhAi2ohbdGjRRzI9VsZKzbiEQtGYsAokVZBvYp+VKeKgtmBUyUFjy8BaCmvJJs75jpQNb5MwJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749101394; c=relaxed/simple;
	bh=37kwa238Ekr7+BDRLQL73z4xmIyB1bVgOXdCTgbGPfk=;
	h=To:Subject:From:Message-Id:Date; b=LZBYP0RoNxa1cPwruEkWtC5fLm30YHpFfN5ITMMl2G5nFxqWiOklHBd27N8fOa4L6gTj6sxbrfqmjvl7d3yk9aJEghr8AHtUngzIpCVHMzOwQYGO7N0/Smp23EFhgXlXAlYEVP9hQ+/SQvj8EZ1dbCh74zrR+v5aoHEaOm+STrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsF+6GP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsF+6GP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37C0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749101393;
	bh=37kwa238Ekr7+BDRLQL73z4xmIyB1bVgOXdCTgbGPfk=;
	h=To:Subject:From:Date:From;
	b=jsF+6GP+xfKf7yptKFhTwu0uRzd6MHUE/jsSDb4lAy9vhtvOgrNfpHjjcaB+bfBSa
	 A0ToYXY8lzUm0H9cAdkfbX0oJbSfN04qsV5+zAkgAFFrKPYf03G/6UVExm/buZeDRX
	 /ptjjO9vY0kd0F+aSyzwkrc3pHAo1Alrg7QVVBagm6s9hmEO+x/byz0Quy5VRNa9vf
	 MMQ9sOoWGWLB1UO4wHIsoIrxvCN8nC5jUI5smrtAoxqu1UJ10Y/xvoXmfZ4a7j+K51
	 gfCakOezqblIDCgAg3EL7BJyf8mP6hcsihYW2Ybt4R/hDg05ktCqHqt1SXxklupd4O
	 OubN4DxaKlMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024CC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910139358.3973.12932396543381030815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2372d497174ffadf0fecd8ccbb0ea14947bb091efb24a5dfa24c026c31f41293
Date: Thu, 05 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749101393

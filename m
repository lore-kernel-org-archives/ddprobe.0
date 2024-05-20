Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF2717BAF
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716238343; cv=none; b=WJOcQ3CO2z4iyU8mlDAUrBgylVWGgEY7V9MgwKaPRlu52IFErbE1WK5VbKIn0x9o0UGPh+aOiQUXheSct1nEBiyfVpFH8g4oi9I2EHgbwOySE+6W+eO3aElhbhCNLJw68gKdnALw0ex/CV1FxBuz7UQA44AEjJhBT+qImj9a54Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716238343; c=relaxed/simple;
	bh=em8NyFs58yAEhzFrCC9tuG4NXqDW7NePuEhXTR3AD40=;
	h=To:Subject:From:Message-Id:Date; b=oUJDMy/ZldwAm8t+1pdgbrUxiq7ByMxVdT7x+65rrW3J6HN1UgpnkkTHfKCst5WmN1WSQj4j6ihwG5QbO/jKRlBxGFmc2YS558jNWMgzT+DF64XDVYVopGPGwSGHvLju/RFMMPfgQgCXvKKJ/YuYuyo9B9QaxKcRwuxH+th677U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LD9XLoEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LD9XLoEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75DBC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716238342;
	bh=em8NyFs58yAEhzFrCC9tuG4NXqDW7NePuEhXTR3AD40=;
	h=To:Subject:From:Date:From;
	b=LD9XLoElTqv3s8NN4tZm1U69jeZkzH+MjJcz5JrXIEpV54k8xpirZCp27JDZhU85F
	 B0rwXGKf7GBqzRzsGSWIdQ4wbC4MEplGHsfntOe6cd7jb2y+Gpw5LawtrdUOYKBPMt
	 e9zUJSDdNFZrJNKi5Et6ew9dlEENFX0fLMx5kfiDvEAYBjU99aPRaCuY4LeQLiHQWF
	 llRjAFMicx/YwqSavR5TQeUdaPCMgzn33k6oDBjLu/JTMOyKQHq0PFP8VsRJ/uYqR7
	 huyhKu4ez2/L6ZuyzfK+iauhblmK1jP24gy2Uoxcaq92upDx3rVcbDydfo0PdA62Vy
	 1BnVYlpSJGK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07C9C25B77
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171623834281.4663.4288303886210893243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f097fc30e189e47f71d9c2fde169c877fdba6c124c457db1b341a9d767ed0abf
Date: Mon, 20 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716238342

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE423B29A
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712044096; cv=none; b=JpXVhXS08RIM6CeeR7bh6VOL/W68CNxztIzOFwn2TrW6TNbpUtUTP5xIZo/Tc9sHgr4EmRNalaVQdOQm1qKmlJLJoey9moOvm1jmP0bTj7BiKfqiTy1QbMWGGg24YaJA7Cckz5Iu427283iXeB90S8bENZU7NQ7te50JPa1DAQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712044096; c=relaxed/simple;
	bh=JZofepZ8n/L1c2ua0RH6qSkKpg90elMX3fpPNVjawI0=;
	h=To:Subject:From:Message-Id:Date; b=Dfmh8U/JCE39MgKhXGo20/h5RnT1hA0Fcy8wGgsdup8uh+3dZkFbtCP1du7mlH54ClrXjyiIjy22RL0yoSvugfrByMQeDQmzWqdUPoKIgOpgE81jXfMUyL17TRuHIk6AX0bagjDeeVnVxxssFtkxAGUx9kWnncYo8zTGbIM2QZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihpIcJU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihpIcJU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7292BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712044096;
	bh=JZofepZ8n/L1c2ua0RH6qSkKpg90elMX3fpPNVjawI0=;
	h=To:Subject:From:Date:From;
	b=ihpIcJU+RVSyPN6CzBkk1/p9RCNN+RFLXAMu0PGR+YdDB+LcxAsFA0KNH3/o3OxGm
	 9XVNiEAYgFjUb71THTxjFPbsXTMaGedBH2OO6tYUIszBdDRkdxQ+bBruFkvqEN2AhN
	 bM4HEKPNjTCII3Ropyt+2Q1rc6kJgKwTUSYrUlTsf72rMgDZgAyzrmHvii68rMxJMq
	 vuLDBOAPCVduF7cFie6KRakxDyAwfvqxmvrpDJz4OHZS4whNrtTzJ4ZVZEqSBhKR1h
	 acMw7L1ymCgsk9JKNUdAtHrcLMjwp4Yan92a7XIN3jRfsaeUYdAInXop8TohvIhAIf
	 pl3dYrYpTxcYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6548CCD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171204409639.23576.2652950125175105382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0b9f468aed85fb4ca0cb9ed5180b4a7d19e256364f61afd9d5e10003dcd53e
Date: Tue, 02 Apr 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712044096

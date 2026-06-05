Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2735C3F825E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780660474; cv=none; b=YTJAmlvtufvztZJM68jJFD39Q+6boB4+Ptqyil7fjOLqt2zFf+EeulioOxtBicXr83DvlFs2uAKbdmwnTLh3EpFVhB2iVaz4cnHAiB6p+l0xu7tjc5Nwz7/tr1O+uF+25K9mh9LJnWnz7bufL3TE8/aef5aTA0KAxmlpAwNhkLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780660474; c=relaxed/simple;
	bh=7NBqkrH84eLoZPz7BJ5TENeDAgoVg3YfTBYRBzFaqyc=;
	h=To:Subject:From:Message-Id:Date; b=eQkF4XJ26girrHxePiF8KJgI0ly0nMp+BafNyjTa/jA7Ko/W1L0Tw/3CvlzCp2L34cHAXmfIn1/M37GsEm6HdztxdjDy1ABgqvLjJw2vxfG6B8TB+vVQ0AuBwZm3Cqvg2n1rvncFxsUy3JYRmQ8Qn+xPglBCNf4/Q74XDUn2n00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gy7gHezT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gy7gHezT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69A0C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780660473;
	bh=7NBqkrH84eLoZPz7BJ5TENeDAgoVg3YfTBYRBzFaqyc=;
	h=To:Subject:From:Date:From;
	b=Gy7gHezT9JoiHdIe3IM+iL6TMfKFScL5jBwnbYvfgx4EnkvwBQcVJBMgzaMyeKS+/
	 0D8FUz/SFRU2hPx3hcG0pI4fJMLZmlkdyT7i7TMV4ODDeQfjef6ewexxtAoUZbc5I0
	 WYkYpuQEfNgjN9y1Ou48xC8nFcC1rcNrtkZldefUwBr+Lqjh1UqgVRkxHDXvfpRKLE
	 rplnCLdgJNv+LuGrAS2rXh1h1UV68Fq8oIkIm9SiAdEmM27twLi90IIO1Ec220C4Q0
	 AXym+goZR/zG43X9nwPUZCRI2f18fT/8peAgJxBg/x1rSf+SwLnR/hdmYnI0OAXquv
	 buzpwXweevqGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB587CD6E79
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178066047368.17525.8753520199479540992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55c1a489e8121f31b380bdcc20ec54ea6b7d777d458b125dcf85ce7d8616774
Date: Fri, 05 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780660473

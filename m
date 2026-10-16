Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B9126C3BD
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792191634; cv=none; b=HLWS+xKa1Im/STpd1N46XAW3MMjxxrpNP7d7tiOQjFWBDsnypvHA0rWDMNQF8Q87yMbHtxXHKc+Gx4cYSatwyfX7H3ovkdpWqDxQi2ZjCDgos1R1xn6G189HqhGK7OjJLlSaLOgKrIk9avhUZhP1qIXiwFnzjllAYAjwOb22tRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792191634; c=relaxed/simple;
	bh=pOUwWnWM3w68+O6hKlDTw/GRtgPUGRE08hIdoJVyuJk=;
	h=To:Subject:From:Message-Id:Date; b=SNHbIsP1/FCqCz4DBnOY+89zBni4tL4ILQ3X/8x7bVufiKJ0C9b//ROl4Hgu5ThIinNQyokbeSKDj9SlzWEvEcFGWCtT/TxZwZ4T0xds8QuKzIrqQvL1qrWqnRNqnav1237BnGClzH72vb74OYv9+/bcNq+G54+GdRjz7UwRows=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptTvnH84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptTvnH84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39D3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792191633;
	bh=pOUwWnWM3w68+O6hKlDTw/GRtgPUGRE08hIdoJVyuJk=;
	h=To:Subject:From:Date:From;
	b=ptTvnH84ju2bGsWQJDGNzbSZPvShJmCVk83lf4VpqEaT+R8k6i6b5ZO2qRXoEaOTs
	 qM5Y2oQ7JNrab/h1wohQCNPk1rP3aaTjbUrxxkGTrgzxZtZq5MVE8vnM0QkYB0MLn9
	 HRlmEgGIz05i+3BifBE3FTprKlxmw4v4Yk5m9L0Or4lnWvXaxJaSL9sy63kzKq/HtY
	 Lz6wpMbRWCS4PkoSv+l2vncNn2+KdfymOtxAq4WdaHSa5fS0umqgzhlbKzviYJwoZc
	 OhP02v9cGvu8ZayVtJXImbN3Y3+MD54deBP7uoJ6KmxsTc491jZDm+nPBqsUIy2V2d
	 NB2ZIQT1JeVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBA0CCF2C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219163369.7909.4991874051110984391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376ce2f9a4bd0865b2d2134c542bbb05e955248b3d25ec9c75f9ada98ace4ae3
Date: Fri, 16 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792191633

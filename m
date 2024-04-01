Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB88A59
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711936097; cv=none; b=SymvqyrGbnZNZ7r28lfTA1PoSCOeGKAi9zky1nKSsXqxaVRiq+t6ttTizUWJjI+FfooKf+7/SU2ZYeWBpAcggP7wEHVGadAa4evqNAL0AVkuPeg0ei1kfXfCE1S/PFAe/4vMCdSb9SjmBvMd58bu0FF1rX8GXmWqFAvGbm5FxjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711936097; c=relaxed/simple;
	bh=Ip11pqTmdOOGGGwO0SZYm4zYaw5BytYW24KxPURPiqE=;
	h=To:Subject:From:Message-Id:Date; b=NGD0AFuxdZm8K8AVtypoXDg3/txQpsRLSNIaQSeSD4DxR6y+qquoAEAu9A/u236Uw9bEMjZNTzWoiccZ/QbxHzsqLTBocwZX4jQA52FC46Sb+DuMEmMzvhfj7/qaF0xfSCDxUwfj+JZaqdmdLOZRvlvBC2+hC8L8OyYUXCQwobg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrLgXMKw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrLgXMKw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CC1C433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711936096;
	bh=Ip11pqTmdOOGGGwO0SZYm4zYaw5BytYW24KxPURPiqE=;
	h=To:Subject:From:Date:From;
	b=BrLgXMKwP3nG4H6hVCD/irNPlB1Q3w9Qklm03ogNrVmcOVrOWs5X6CA+JkQucgJnq
	 oFE9blKV1aN00EROgQJS5qKirjN+qfEU8hmrAL4Rexwj6xKu5ZCDGHqTjH8cse5xMi
	 bNdZQbw1nhPdFsQ0L3nt1Cj2yJgX65s5mfJh6xYIP3qBzrPFD9plqaja3nxfzgmvpT
	 c3nlHddMPQLdUZ7ahhcmex4SU5qJTmAdzlycEF2aT1g/E8Vx8rRgr7TYMe+2KFe3Hi
	 O//DKlzwf/GiK7S2qWm5cyT7r1BVuCNN8DMBt8hhEe5XvsHYjJX0S9pmZ4lYyMPmIQ
	 QOG7qqgIQZTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667CDCD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171193609640.20795.14986019243684849208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8917f5aafb28a16046382e3b82906be6660c5bab672b0f5b4edc4389ca4f4e
Date: Mon, 01 Apr 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711936096

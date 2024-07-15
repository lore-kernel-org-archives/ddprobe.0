Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7487F6
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721004743; cv=none; b=SMxbO6sWgGvNLfP5oMBr/oLItEqTqP+qGsHauoKmL1bKoT5LcN01kXZM9KCap8NKo2SCbnfWt9Y96hQp244UJPskwO+Rny3puzMD+6YqB3triKgU95a0A3+BxhHj/4baGS4DN2SWmWL04NDoB6n295nbLdFoQ4+WfBqsCH5Av28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721004743; c=relaxed/simple;
	bh=eQ4/Kjt73LQO2RDr6sNxH/KcHoiutzWX/y+fA0j7AQc=;
	h=To:Subject:From:Message-Id:Date; b=jYeTwr5AX/NQaLqCdHyvPOZ1BfKmbGkuSxNJVpiJ8ptAokH7O63oGDLDLTuOJ05TGkAnW68IYM9TUv8kuFazitbr+83HNLONzeuO3pMpSa6tAq5At/gOOcjzE6lPTYvA1xTPN3GW93Mx/lt5Yk3W+tR50a4HFgDhQY17MuyHP/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUo/svuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUo/svuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6782C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721004742;
	bh=eQ4/Kjt73LQO2RDr6sNxH/KcHoiutzWX/y+fA0j7AQc=;
	h=To:Subject:From:Date:From;
	b=kUo/svuvx0x+2JGe5JO5JG5pauBL9SK9KH89UP+C9JK7ZzVDOd5IGADDXcv7D5byk
	 Ou8cpcLM4d+GinAHDZYCk0bEwk1ASWC8f3zqw4KZtPjY7XRH+5OcjOCpFcIVD1y3MM
	 9Y2lOxtpDB020frLbrSXn+5Xg0tni8+lUZpRYsPxtqFAs9PfWEW/4usJ33j9SstG72
	 tQENFj2u+iGu/PXOSObr3rUJys9hkTB54vK3jeAiVSBDL07KtCGxQc96VPeV0wlU6f
	 YESkHQgIold6ikpssq99XbLc8Mdz8Ov+Y+idwW/Yoei5sCs70swdrd/76r3uGytoEK
	 FfZRYRMsyjx1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBB1C3DA42
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172100474277.28910.9048212769353763920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdc7a263e74afd42c0d6649e765c52df447eeb4bfbee72276aaf5aa5f4c39ae5
Date: Mon, 15 Jul 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721004742

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040EA5BAC0
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706525897; cv=none; b=kLQdKdEfXpFCbmWvK/Vq5Hw2XmE1ALRfxTi2e5i5P2v+4O/RbFmPenpktmCZXowKN8X+zTdp6ljMoR/70pSAzlBqpeIrZaReB4MsQIPjf6KpiqTwphgtPHF8tF1o6LxgTf2J39MMFIKKL0ATdezhfbQded8YIoMGO+tBGwEpRFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706525897; c=relaxed/simple;
	bh=fLioFrynDhd+clTa58iV6FcMI+s/eLn75VORoD2EuMg=;
	h=To:Subject:From:Message-Id:Date; b=uLhPYS0nzJbgFtonzOGaou7lKD5Xj9BTPHxySnCAVCUCLDj6LyrZw30MJQIz4aQPLy62ab+aotTi8xrYYhsjDDNnDbTuANZcaO2PtLh7yHAkwC087OHBzfOSbJFbQrilxN97cCZ7sxMtntgaXxSjRP+FI/Imrfyd8rOQ3ymVKWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVJl3aJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVJl3aJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F14BC433F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706525896;
	bh=fLioFrynDhd+clTa58iV6FcMI+s/eLn75VORoD2EuMg=;
	h=To:Subject:From:Date:From;
	b=gVJl3aJIf6PxqkOrdBMelqHXFY56nQXNsSY0/dKs7Tf7wuVY69DFM+S6xWp6LH+ZT
	 7frhg0FntlDA1UxnGFS0nXwNOdqVa1DYmS2Q0DWu9e+nw94AhKUpAItsohZ+kJZnGz
	 TGuDq7zBrduKEUnFsSCgGlY2vrcs+4eu16+bj9Y6lRuyc7XkQxNimausIug5xgDsBq
	 0/1s8FvXz+du7Y6Gw2hXIyC1rzlCxtdHB1FNzMaM4sTpxVgrZuWbu/+/yQ9TGZJuec
	 w5kdQTQLU7ci3v+1fMQcNvAJhOaKzZwyUR/+kbGsD0QrOjsomQG5K358C6fkCcmJVo
	 eNtvQn3oN69pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65032C47422
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170652589640.27689.2508991530419134209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73a2f3131d048f2ad22ef8002b86cb131a613ae5b6130b1e6d5fb328f9a88be
Date: Mon, 29 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706525896

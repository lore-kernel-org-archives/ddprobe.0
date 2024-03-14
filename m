Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DFEDDD9
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710427097; cv=none; b=uYNtgAIcjrFKvVExLkDi5rKar/3VOHiCWQHE8Rw+Zpwu+a/07Asu4+/Y18U0G9t6nfMnE99Lc6evaL7wsuA9PIUvlI/iyDWGvi8Ehy8Nx5eOsUSLCflAEi/xratydgChK3j8+eth6d2GvzA6GxMynML9K5gHH2OXkF/CrbuRGgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710427097; c=relaxed/simple;
	bh=zl8v6Qg4PL0dOpSWsn1tEI8Pu7uzy/dIDkV93hv5f8k=;
	h=To:Subject:From:Message-Id:Date; b=p/QS76kyacq7Mfh2NNBX1+/g/n0/W96E54vntpbDr70wwOtt8MNgLixCblmC+Cv3Z/HeTtyFC6mXLF1cDLW2xJ9jocS42C29SM2eph6j0zN6v9WLEW3toO7/6hnEc3KJ+CfzadQEhA8dfY+ZI+nfPqw4AyHHMjL38UHzayqp4zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBaSafGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBaSafGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85111C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710427096;
	bh=zl8v6Qg4PL0dOpSWsn1tEI8Pu7uzy/dIDkV93hv5f8k=;
	h=To:Subject:From:Date:From;
	b=UBaSafGrtR/+c6g7GlabvBBSoV9xsJr/jeMfuFS1pU1btOMfPQnZh/cDuocGdOGoo
	 KGoX/6gQxvg5zE9ZRjHT8kE0qa7Iwf6Ta9HIF380qgtLgXekDSBwikEJMjmrl+oQ+v
	 9OmqgZRitZGOLTSrxxbFBvtPs5Efgm8EPBDFiuy+ARmimvyQL3IASUtHSFfydO08iM
	 wzvGVqDl3yd55A7cbhlEFIzfyTuUwj+mfcow2BfLkoHTm7k9sgJ0RJl92fpia8X3cJ
	 bsboTDLOxbVWOmf/ef+0WwIanZ1m1YoWriMlT9cQwRBG1TrSoDrH6bfMgtz5thwLR7
	 SARn8Z0bWPnww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C4C1C54E68
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171042709643.20165.1049747377607841670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8d5953dd074578559aedc16bb8aaf764c883295e189799ebb9f97da12b3091
Date: Thu, 14 Mar 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710427096

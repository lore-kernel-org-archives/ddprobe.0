Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4110142BC34
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784095114; cv=none; b=hR5hO5bdmyubKD4U3+rhP2TgeFDGoG71vGTRoR2dIDymu6Cn4Yed81nB6wPwm+vmsldPo9D7RxppMrP38vNG2/Fzn9ASyNv/cLLKeVgT7ACXp3j+Ma/QEh1U2M8cii3lqrolFPElobKz0W2gdlJ8o/lJxrOEw/W0Do5V42rJLD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784095114; c=relaxed/simple;
	bh=jaOu0MrRA2acBBjEODmz9yrCPUmFDVUZ++u/tjgmONo=;
	h=To:Subject:From:Message-Id:Date; b=qIPI8/3W69DpmDIhQARLu+K9EcA+gSBC421jGWgaXKad7uxp9fYu10yiBR8S2f+2FFfIb6VAtkg1vxbCQv7R7OKlsuyDAkpUCQgiSf9DVPFJrpkaba5BmN+7E18c34EiRdw4rLmQPzfIt/rpT+qm2yFvBlewkoj9bmIaNHBv8XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5CSOaJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5CSOaJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0356C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784095113;
	bh=jaOu0MrRA2acBBjEODmz9yrCPUmFDVUZ++u/tjgmONo=;
	h=To:Subject:From:Date:From;
	b=i5CSOaJ6Xp2sgoonQXv6E54AOTarjIFsWdbA6HNhykDn1TSMxkKVMyjQHve6MgRt3
	 m3iawHec73x+3rCkFpiwJX7r/ZSJqHe7smBbhq/mCURbwqa+YU/GWDlXbaDpNYsxiM
	 VzWNFRa87r05oV69QT0yMyDTvsfCSLJtt1uEOZOr6P1ITvF3LRLqCX0cL9Db+kee+U
	 9idIUl5frh5tG52cjHr2Qk3bHKL3Ch9cKdyMaylDCIEeHDxS8bdNY3y85U+W/S6cPY
	 BJB0nTf9xqxKwYJvrHbAcXI0Oin2ems4CT7hnr8nqm+RLiiH6bwrwVQ7cY2wUDS82G
	 2Fw/+dHWLSLRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDE5C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409511369.17534.12247543646158487152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031fbd59c4a9a6ed6038b58cf0f2bf211aa530e4f6ccca46d71cb165e2339d1c
Date: Wed, 15 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784095113

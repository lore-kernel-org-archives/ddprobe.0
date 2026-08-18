Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3882288D5
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787020234; cv=none; b=a46IpK2MrDbSejEyH5Kb78PF31BWx0DawGgiGnrGT8FUn4ZvT4hxSIF1BkTt2XGP4/CPuFHWsKJ2uOICP7LP8AgOAr2++jZAINhTRE/MSeV+NiT6w9DefcdpMnJKYdEOWjeDKEFYNnX37iZbKyiae9KMq29X+AEu+/53gzNF1Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787020234; c=relaxed/simple;
	bh=eHb0VLEKqM/g6Hb6s9eT9HvWCcYi9RefQrCN4V+G/Jw=;
	h=To:Subject:From:Message-Id:Date; b=Ec+4HWQFVPTpBiCpaMsub0Cx9l8/a0PGT1vdb2a0LHaEgf5c91NxLajj+/jSD8LYlbNyuxSgRQvPsIoKhngLHOta+G/lVFwOAuK+gROX01QpmDzMPpF+swR0CwLhjwB752YCOO01cm2BS2XBmAIIM2Psh48HdWPVe5+01cLkDmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WF9wqaGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WF9wqaGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7CA6C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787020233;
	bh=eHb0VLEKqM/g6Hb6s9eT9HvWCcYi9RefQrCN4V+G/Jw=;
	h=To:Subject:From:Date:From;
	b=WF9wqaGPV2rgcUJDMjPNPIOzRYj+MVo19GnizcKGIlrlH3KuKaib/QzkciHL1sZ/M
	 fAscqFW3+buz0r72TJ6qLQRLjMMLoksdD24zcBNaWWY/DHYFAgb/qqKVPcHdDID0fz
	 ikRYmnGgO+kuKgf/ez18g1GBDUlm/ef/OmeeL1puq5IeXLd6pvU6roiH/T9hGAcbZo
	 b3MKAle3U/GTsMXhSOjiEthbTDLwcjIkAyf5uMfmKNromjyTX9qsxmOXQqa9VhK75g
	 8NeUYGvNgfEnRumOPzOm/UX8X5T1C6c571Krj8rHSXa4gTer/QTxXFvkdqGmLjX9lA
	 AwUFrTfQSC9Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8FCC5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702023373.10557.165222594458712824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e84893f656eca7ba9d834d9cbf7a5df56c27d1c1db794c1c59dd40e087b667
Date: Tue, 18 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787020233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5303BB9F1
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775216733; cv=none; b=vCc/BmVO8DQVdcRNSnxonmp9cuRVge4Sey0E4rsA1PyiHypEl8bXDq5RNCbSFwdaCmm1gQMv5aUC2LB4UGQQdfRSHPyuHnf1iDSrlgWOKGJjJnhmvAsyZ3Sg61XK6eOVl3X7kH8/JFGbeu64VG+1DsK28xSuY5l9aL4xvp2qQ/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775216733; c=relaxed/simple;
	bh=mVL21YN6cauhxCNCwS8htmaTeh40Z4hzGDD+9dsyXeA=;
	h=To:Subject:From:Message-Id:Date; b=n7TiVrCnv+guVkkYGV4yo9cUrQ7TUic7q+U15p3aqcyPl3+aBSL5qTMGKHy497eFGgFlhTzTyBmsCk7Y8uu6IJAfr1iRqtNh8zusAe9xIRy7JXfq5xxUCdzsLS1HuwRqzAlKmh3kji1KWDboD30TjzWV1HlYdbrDQ8RzOCAEr2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joqWeSob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joqWeSob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775216733;
	bh=mVL21YN6cauhxCNCwS8htmaTeh40Z4hzGDD+9dsyXeA=;
	h=To:Subject:From:Date:From;
	b=joqWeSobf/UAFM0pFvtwKAZBlkvp5vFi6nEqJgtXH6jmXOH57nkhXxvYdGmkbJOoR
	 IoR5N0g4Ya2eFaq6A46ysrzHl5OzDqtB8uvehIXMXr5cLHIJP3CY8ICH1+/x4cxEiO
	 FYwLMv7QjZueasRmb37Q1ULvCHqx6JIzysboZ2EIuTX41epu+9uJ/lv1v7m/emGAwx
	 ip1tSwzfPIxQFCRA3M2zbKjfdGlOl+9F4jT0B6jR/twg2MlYvDvpf9J+yXLDffET6f
	 oaZapkCLuobgn1qNIdyhf+vLuYq23VZvQteJScps0Zw0ajuGTkG/qZNJZcIPZogWXE
	 Vk1wpBdb+O+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC894E7E37A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177521673368.4113.6274282319546682451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b54326cae3eba0def8fa7892b5d53edb9fcff1e267ef14b4f6852598211417
Date: Fri, 03 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775216733

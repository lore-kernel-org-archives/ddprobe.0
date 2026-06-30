Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD5A404BF3
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782824314; cv=none; b=P8TMMjAYmhJio7FNgJ1rtKqnCoqP5F8POmXvNMd0H4vh3LpOP0Bzm7xQq01Nht6veReSWgSRrnpHGiPOfNwKWZnSMMa3PCFNbP+AwDk9StpphcbwXZhIavS6Y4HPXzkN3gf8CP7oRLveYYpqetzJ5/2pKJAJTk5DlI/Mm4xvws0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782824314; c=relaxed/simple;
	bh=/Lh7BNfJKiDvdUSANqopPC1hLjMs8Ewp7k/LcbmuWzE=;
	h=To:Subject:From:Message-Id:Date; b=HZF3KgRsonN4z/cmKrkAlFUtsQIElwm1VbzvR9MWWcK4ICf27xr3RuaWptl4E8aaVVZkVGx2gHT3xtvcUWFpdQMvQKldK5oMAa88fR5An2tCt1+bq+kJhdSwo4KjzNhpsJ0oiav6jPtMH5CMIEc55o9kCm4ona3bahWGGl8DO4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvZ5nvNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvZ5nvNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14C9C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782824313;
	bh=/Lh7BNfJKiDvdUSANqopPC1hLjMs8Ewp7k/LcbmuWzE=;
	h=To:Subject:From:Date:From;
	b=jvZ5nvNxbhDSiKTywMZaamiRvEUDNHNeXbCCiZGrBDpX6OQ2CfDHaMRmSa4SqMTeh
	 rb/hxV3UCEhmNfLI5bRlDNopPQWFs8ZfR4EJ42HzGSSilvPAfnHvz+RlTlsYicQaj2
	 9Pg4T5y4rvk4m8QZ+kQnlSkY667jlk3Z3lt1rHRdLTxgj5yUBJw8IyYjx9m/epxrZo
	 A5H7ldbLycQLxPOZO3JaU6KKmOlGEvNOySUZxq+Jvzdd6QM9/u6Gn2/tmkW28hWCSc
	 0t1TeS9SBmkHOsWIEPRaMd4CzD9Akqxgef/hCJF3tklvHNliDqj9xMIgdt/7ieb5d0
	 V+eNhFpKCM+sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB5C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282431368.10347.4155149010767223480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80106a4f9044045514fcc1aef2360726260fd518a9fa03aeded5196dbfdc769
Date: Tue, 30 Jun 2026 12:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782824313

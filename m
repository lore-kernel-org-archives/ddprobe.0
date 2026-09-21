Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7370F3AEB2C
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789974634; cv=none; b=assJU1cvpQAq+I7/RbJG9xcMQC15fqTWAToVG9coD7mLwy2bCS4KKskCb2/1y7yXQJjT9AWteNyAigLeO4Yxdj0fxMXQRGNr2Voz6GHFuD1T2pKXby8cTVHK8hJ3g7N9oYV4jPQMoh7Zox3nrvNdFqPF1nuoSi6FobiZcMEonE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789974634; c=relaxed/simple;
	bh=hiAcr9pZx5wMoxD6VLoovUbnUDx7FRbW/p/ece4WpDQ=;
	h=To:Subject:From:Message-Id:Date; b=hcwrXe8itSngw3YuNpLYFsWly2F/ErWjZN5qwDR5veecTsC2b4m30u7nguZs+Xo8tEAWYnHJc/q48MoS8tbbodDrum9uBeod4KtIKJFxkd5sNj4j6b6eYUz2bNsle4ro/LYzixNRp9mBQTTUY53XQSmaPPTEeS3y3bRGortos+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzuxjQS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzuxjQS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB83C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789974633;
	bh=hiAcr9pZx5wMoxD6VLoovUbnUDx7FRbW/p/ece4WpDQ=;
	h=To:Subject:From:Date:From;
	b=ZzuxjQS7hKlSZNvsClLbQaY7rgJyxqRU1cQq1muatsf0+BzqAz2mes42Kwr5dnLrh
	 0H+YECtTKolGOP47bO6XDJe1sClI6KzX1dCYiJLOPrxOCn1hhSbPumf27eogSJzKom
	 JNo38my09Yj3I78dRM3CxL3+0N6U9H200yIv+g40um2rvgaaNRD91Q+R06GHxiJ7iu
	 v0Z79kjUOLwE0pMRtBY0YMM1nl5iCY8TIrBLLrRn440lF0VV3ZaAMrPdP+dPp8rRXI
	 2/WvAWKbvzmHjD2KEmDWkxHZ+CpjcdJ2KolUIuBMe6FvX1pApG6nmy7RuYIG5vjZv1
	 V9F9OuZYCCuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3C4C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997463369.9471.13341104062482945985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7ccf49ade3204ca536e9c00c6f4e08ac7ae7243889aca9253cd688e3599704
Date: Mon, 21 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789974633

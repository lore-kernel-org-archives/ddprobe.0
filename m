Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE70377556
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771362893; cv=none; b=N7BNwJh8G9575lr2pLGJ2Dp20SBMbUrtnMjhcxIu357mkW9UYTelXwZmHOZFE3I/GdpjtyptFhwlMNia1RS19qrs+Mabzp5kRQka8hQhuU1UHmclk3j86msWcP+KHQ5Ijboe5l7lAnfWUOGsBIju816cCPaAxrBBx5Y/k5KkfUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771362893; c=relaxed/simple;
	bh=FpU1Q8eibBdrowj2LSAdVpjGSuE3mRg9MWX14uQnWqQ=;
	h=To:Subject:From:Message-Id:Date; b=LDU4k/jThSi+fYrDHwrdx4yMRm8IzISLm4q5u+cURkAVmdLLq6ysjqQEdgMocxGwAM2DN/TQ8MXTD3NTAVsX/Otjihoveq1Mc/UxqSs9f66nvI9MX44aF3YS1YKWmJGGarCrzh3LxqU+kfCyJiFiH70ret2ZKBiapnAG6Sl/0dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QlbiNY5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QlbiNY5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0577C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771362893;
	bh=FpU1Q8eibBdrowj2LSAdVpjGSuE3mRg9MWX14uQnWqQ=;
	h=To:Subject:From:Date:From;
	b=QlbiNY5XPEuzRQY5sWVO6X6RLhV+SeZqaCj2ZNd7q4xHDfkNdHeF4Y/l9A/YS3KN0
	 sjk+GWSY12dwF86BxkasKRR+8ReMhSATjCLgV6Bhn3JWpbupz8YwLE8i9e3AgQH9zB
	 caQ6o22K4v1B2cgkRmO5W0Z1B6D2IFE0kgr0+08uG7JMePHKpQ1SxDE90gzznnvQ/N
	 3YjRt5nKj+S24koXLvo/dhhw+4UKY/B3pPm6Wggq2mcpkSHfycA5stPT49vAeM5p6B
	 eIKIiqj92zcDf1hmifS2SlzpuFEnRl6GoERXJnJC3LB0oSXPD/YZ12XkVe1S1RWEZg
	 3sK8tNpTASCZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C622E9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136289362.13960.4525843396578414551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16b1780c0445f7b14c44cacb8b78c883334bb2b970551f3dfc090f9695a88ad4
Date: Tue, 17 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771362893

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492DB26AE4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754966995; cv=none; b=R1JZydYTEBl+OWPQBWZt5DwQrROYk318fMpF8ZTyydT4X0kb/p/dpICjcZEUyrhaOBmoPEUhOPJj9BeNf0Khrhc4PVq6VU3lUNwHMcm0vjxRiI52z2BfFUjIVvtTBQm0GTlF60weXztSPQLUXj9tir1Ff6oBdDsN0Lw5ncmBQ8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754966995; c=relaxed/simple;
	bh=tN1bJZNQmBlt7zZlhHSjyDLnjBvwGlIB/lTTimWHtrE=;
	h=To:Subject:From:Message-Id:Date; b=CEgSaVMEmAQUVQNd28TeAFRFxTVO8mt0jcXNtGCwudF8w5IqTWfAzuHR+YZxR31i24M1AC1ygOFoM5ZjcBE2OsZcYElSL1tiD6fD8+wRV6+Kqn+w+kwrmwOpiraONyEEV9LsqAtdFZ8zWdYIsZWzvJckA83rPfc035JDb4ejNdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIUY/sSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIUY/sSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B08C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754966993;
	bh=tN1bJZNQmBlt7zZlhHSjyDLnjBvwGlIB/lTTimWHtrE=;
	h=To:Subject:From:Date:From;
	b=WIUY/sSUMBrgyVC6ZZK++4E62TxBEHjcPOz1Xn70uoh19oGlgx8YA5C4r5qTyJN1A
	 u04pud6MkmZ8U7Omo15w6a8L9TgKZ/K1efv1ZmWCD6jDCh2auuUGlDsJrMk0Kkjk+G
	 Jkg9zDCqi8nSjJPA3r0fJDGQIF2CBj4BjZEiT0eOLbJzS4YAzn1HT0+nSvEn7G3Kg3
	 yBY1/Rtry4AtLYtkgEAPHFYQTZuiv/Mt6BfKBsL4PggqVFc94tywJtY7RhAT4r/Bcc
	 5ULtE8XZQt0tHM+tx+8X2C5fLz4Cq+8//Epn0e3PgCICcajNM1FmB9Gk18K2ZHjwdN
	 JJMa2aqLju0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128ACA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175496699357.17243.17413757100101208386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273c076ad6f1511ea415c4aab6d247f7b7384a0c2e87c535942773f1b9bd1c05
Date: Tue, 12 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754966993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4BC2C11E7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785736834; cv=none; b=NIqA2F6RnWbncbaz919gow2sw3nuKYGYTorgbO6etb7uxPcCmR6h5wsaEza1LQEQZKJGDZBi9VpPDZk3n/lteM6o5PIuQJa4QtpfkC2zrVvas3MnMCsa8A5SYV9RBWcolQOJGVeFWDjQOWYHmFs4ceE0EeTsW3fpfpxZYUZrV4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785736834; c=relaxed/simple;
	bh=jq1lHq1cT7qzEZNydFc5lfRmUi/SoLDOImsRGa29nEI=;
	h=To:Subject:From:Message-Id:Date; b=s5Rzsh7U7inWjMUVj9svl4S0Pm7F5p9D1YthBUv27OHkl8RqFWSaPJuI3LlxYxp0gDaCO0puULuTb5H4+t3zbLb9Q7n1+liyDzDJTXMFq0WK1Y0oDYjlBjlS+ZXG/Mkw15+uwQEde/CFnKGXbD2mUKINr+ylQKK6OlPMILTxRVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bx76DNH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bx76DNH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA2DC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785736833;
	bh=jq1lHq1cT7qzEZNydFc5lfRmUi/SoLDOImsRGa29nEI=;
	h=To:Subject:From:Date:From;
	b=bx76DNH6RkqgFHC2g4IEDVFYtfZ9xjDXV01cuIyL8g2cr44HR93gVurpi+8wdk7SV
	 4nfDM93ohKc8FZddLE89Pq99biTf7DdtXkIVvVcjReaq8Y1qxT32U88vGQWhf3HEQF
	 iTIozCQZqIM5x8u0UUkydNBYPoSjCwGw/V0AtAqsYlaiHRDwhbTfEnZe0NyHA5Qu9c
	 dK0i2woHlyzrflCPI43z6+X3lXteRLia9Kb/0J1h5EfWEoGx0lesViRziITOupU4uD
	 wsifCFqC92d0visuKBziAOo53NJSIoaHh3nWrMVSB0SXGGJ72eZL2GnKeHneh0+mac
	 ihtb0dBufikDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4704C5516F
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573683372.28109.14097184894065994131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce0b8b8e286f03a5696a47fc0ead79a60fc6caa2bb029f67b42a0c11c0fbf46f
Date: Mon, 03 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785736833

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C7C175A83
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777175854; cv=none; b=jZsIxh1aI2pImotYWRL2xbUhKyrCH4YN4tAKS1eDgXV7nWD/ZgzLLTRJGTC4PFjayFjEMUT05gj7tq4tJQowzpSRyM7UqELGTfh8RcO35hYPWEGeIjtZueLR/jK91UJVqVMxjGk1RIMI5ytMer1rxnTPqFTS0xh1oJEJseb2yjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777175854; c=relaxed/simple;
	bh=p5eOtOwyW4djun60d2svv1kQArKo7QXJGB9uoxZXYUU=;
	h=To:Subject:From:Message-Id:Date; b=vChzemwVC0DKqjcWOedxOOyUeq7QfWbaK9pfWzxL4aIraM/sfbHX6fzDe5CMDn/H7rhpmStYKaZw/yXURc0JKTqQuGiLdhAVHZmUPxtjbKRAgzl4iIHXd24Lt0k81s5Qgnp0CWp4vezViY5q5P/ZIch/5o2U3TRhZXQ/2D8aqLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7eBCNNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7eBCNNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01DCC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777175853;
	bh=p5eOtOwyW4djun60d2svv1kQArKo7QXJGB9uoxZXYUU=;
	h=To:Subject:From:Date:From;
	b=h7eBCNNk04FjHtxnLDPYvcm9abbXP458BbtsUS6Y5hMmtlMaUxSdS8P/S73hVevIa
	 aWDDr+mqH/KfqYVFYPh2N0mKa/zdAs+AoLc8Sy4/bF3hmBZy6wkDOa9C7526f5bLpv
	 5PRue6rgb7jiFf66t7cIFUUhueIZf7xGBPUqZZdHDaos2RRQyv/oqr4Xn+4WmuLKko
	 nS8qNr5qxgpTI6LbQBa2+INR7w/nxHxb0CY3QpvHCvZ6a1PirnHn9UgOdKU3CXeXsz
	 1jnqRfft+dkFL5umYbcZxFyyhjC4VzZwtMTlN5H9hIR7PAkg5UPNgj7fd8sSHfQeS3
	 Ld9/E+KO7Mr3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE44FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717585368.18205.8765819865991514145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9222e628ce91fc87953a832116a88869778cc54dd37d36d378f744168e5855cf
Date: Sun, 26 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777175853

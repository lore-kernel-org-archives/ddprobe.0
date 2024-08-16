Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5531BDA95
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723823754; cv=none; b=HP9wn4Y+AL/ZdPc8fUhcBFYAXWhUxQ4mQ22Wi0DHCJK4H3iR+ivEbopPQzzi/q9jAsbYkGfCn6vwmn0LTWrhXYEnRjidLv83QNHiIF4ACy/rdmKow4z9Hjgn/a6nlG1DoPcc4+gJm3D7bf9uNuRTtufoYTrIcK63NPeJpMYeN+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723823754; c=relaxed/simple;
	bh=COJEQYseP/0Ro28LUf/J7AS59b7H+C92QVb3f2KKg3M=;
	h=To:Subject:From:Message-Id:Date; b=i6Eub0KnGLMkXeeAZ7GvAfOp6lf0fup8X1uaDAg0Nj/kIPL31kIK2+b2RZRcubCTKfgRfIa/IWW/LMA0iHEx6nVs96tombqWLnYwiyH1lHysIo6kVgz6S5XqtG12BCMKonFlHFIN/goMHWI0nSNsfx9cOI22aLCf5HKMAAZiBVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjYlgUff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjYlgUff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A981DC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723823753;
	bh=COJEQYseP/0Ro28LUf/J7AS59b7H+C92QVb3f2KKg3M=;
	h=To:Subject:From:Date:From;
	b=pjYlgUffnjTvuDEIFk87NgkqdkGc22yHY2RP7OOHaadGYteeOtX8WsDsI9JIZTxWx
	 jlBktLLWUPDD6KX0P6cujzf+Spmjkds0iOwLsGAI5NqHWJm2LICyKfKql/E1tJ7gFD
	 oQzmOGXANSnzrIPb24ZIBsneLeltsR5KyrAKyAWMUC+tzPuY8DMcw0wceao0QAaZvc
	 jnXQSkbB60wkF7y0cIobvyDRqyeDrBg+Oehi7UvVKozKtadWpr5Q0BmB72MwjZwG+G
	 KRaMGn8M0h7HcmHtuIB/aedELaQaKx4ZWvnFqRlmAd5rq7UU6qsGE4alpQ81FggsTC
	 iQVXg5zgg2c9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9876AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172382375361.31683.14080752507878793168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0a696562488277d0bb4a09c47e805ff228eabfe88eea679f63f00c8a577632
Date: Fri, 16 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723823753

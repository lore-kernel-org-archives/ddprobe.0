Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28A145348
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727294754; cv=none; b=te4oR8LryKpzLJIgNRByTdzOtxhvAUbB6ExW4AnGb4Y2QqW81LJ3YhyHjKp2O1BYN5hsXS6l094n+JdHG3QlPJyQto3hWR0IrGlgP+mriXFIc1nqXzsih9ki/9Rq3RYdSCnSAIITz4zO68kc1LbJFJr+1xRd0/qrm+JPY0I2Lc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727294754; c=relaxed/simple;
	bh=exN4dS4BrzN4LyjSa+xIHdvMcEfKzND0aBS/5grwceU=;
	h=To:Subject:From:Message-Id:Date; b=L8H6BG1tAjoDEwgJwz0lZkbnoU94GTHl3dlcHxPaDmunjAJlbQ2djUPU8hTCnusg1WAy0kRHObljyUz8h9Y1euJpYHJg1D2sPAHLK01h3AS649O3Od/TJAc/kmd15N2QM4zVzslXy+7Bj3a6ZrGQEnOB38gGikhguIfeoB67GoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGnlN5hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGnlN5hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C68C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727294753;
	bh=exN4dS4BrzN4LyjSa+xIHdvMcEfKzND0aBS/5grwceU=;
	h=To:Subject:From:Date:From;
	b=MGnlN5hGOG0dOH3+xA2cqHNfXxplgFlffWWPiu62Pnu3PB5CF59XeL2cvBHtgOZV8
	 kq5NWsJWluiBAy3cZ+FtsuQdduxVu9C5339L9p7v94LSmXCG6LF8I7fpvQsOV6iESO
	 WYXAXTciVyv89v7vQwvtoF1hFL92fGLMTjEnl/21zDycN0a6sF8YCsarsQByEkbU+S
	 /r2/O5fwjxo9d/uCc4PZqAK4NzJZXALLZ379micksqOWqQ4Dod0NXbSPRaTiD3wV3G
	 xOwNt9akxuJ3PxUDoQbLUxY9z4eGX+a1OxfLhlRHohBoNwHCifMKjbWCAeI2yeGa31
	 r4D8Y/dUv1hnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97936CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729475360.7395.14147975541657921691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264b25b0b1b2dc0e34ec40ca49ce44c5ee1e6f9edb27defefb0e0494e9543368
Date: Wed, 25 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727294753

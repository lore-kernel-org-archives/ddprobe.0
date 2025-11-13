Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1173624A1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763051394; cv=none; b=h9DjuwPyvAZq+1IfxbuEB0taPld2nFRiA1sgjSe/g6Qh9Z5BD/IV+wVk5+UuxcfkehBDbPFrOLi8I8ksqz06J6a/dSj1Q9MtQc1Y/p29/LG/w7yqfuh2iXx5uE0UcNziTRv+xVa+xJ3vjFNLF10kD3vo/9IAkyMEJCHcm1g6LyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763051394; c=relaxed/simple;
	bh=1qaguywgFeiPbZU74GC1fuO8loBu+5etIQjouj2ISi4=;
	h=To:Subject:From:Message-Id:Date; b=NTB0IKGPTJGlnZA/Zm6XhFWkgCBHo88mNydo2omB6BgrDZXGHCHYVjEzThbgadw5ju9QhKPkDoR6AvlhKtX09M1krFJwt8PgNjCWcAzlzqxLXF7KITf47JpGaJYwnIpQ/MnG9uAG1On4Cqnu0h+ANPn7p7xAsuH1C2Xx+5ot5yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn1GpE1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn1GpE1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C9AC2BC9E
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763051393;
	bh=1qaguywgFeiPbZU74GC1fuO8loBu+5etIQjouj2ISi4=;
	h=To:Subject:From:Date:From;
	b=Pn1GpE1/7hdr2MAm5ZCLXkZG2x96+3kdHrTOV3frqRCkNJqtUmIcJ/H0EOLx4sOxS
	 o99xcx5z0a4GrIrmNEy4XQt8dXZWQkYPhfgs9QVC5NUsBSN5hcj3ozqVUNiFDI9Rfu
	 fEses5N4vzYG3ThmfcSFro3Z81WSPBoijvgHs5JCRHDy+jIfl6nJgO3xI05XZ/A3HC
	 0Fbh1pFpoTOW+gJhdLclAVD9piDACA0Ic0gyQ7WLAWvVUj0uEwVsAqe4aeKCjtWeIA
	 wTtgSTq7q5fe8ujH0OlfkEg8QOKTnaUGTBvAiHPfeSqUwgDcGM14o+mHMmQ66dOsYp
	 rLOalvCGs2+pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F956CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305139358.21345.17424702872737815376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43152e8780ce54095a3511067902c90c1c7cfb49e5378782292187f4c1e367ff
Date: Thu, 13 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763051393

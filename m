Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2FB31E823
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781720794; cv=none; b=hTODBlF5Gt4//8V1t43+hiz0MOkcV2TEpNR5NPPqjvyaKrx1llrhPq2BF5advz6hdz0DOnwHKLxApBIc2asyIBtAkdFwLB1/QYkvY8e8B0kznzufXlALGAeLn9MlsPfcteSRfPS7sKrGweQKIYkVYgwTfbTxHz6G/+1wvAz2DJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781720794; c=relaxed/simple;
	bh=0mPkYmEDKQKxiXkb8C54yM8+6ZT9O2Hp+qbB3wBoAwo=;
	h=To:Subject:From:Message-Id:Date; b=DNV9c4UhwducDnkxM1kNyy/sWxYjiugh/lwbAZiGiVgkT5BzLdJd6c2U7npZeY+8yhH1l9yAudWUWD0PgVcj2HFPcxzRiENAc9EIJn1wbNMnOSFQ9cYN/hM4nd1BF/uYx5aSDzvj5ILHZZ9+PBi8W4pjYb5UwGkgNELH/AkAt5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eajk3Hqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eajk3Hqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 148F2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781720794;
	bh=0mPkYmEDKQKxiXkb8C54yM8+6ZT9O2Hp+qbB3wBoAwo=;
	h=To:Subject:From:Date:From;
	b=eajk3HqidUGMipSJbi2L4Us/Mz0WAv70tkmidRG5DsxldEYsprBvNzhb9UCgGWnnz
	 DU1j7xUBd+J+JAauuv6tcKfJz8svLclc+U11ZpJDWlHdXGkh2uTNyNVneUOmPkVhnM
	 nE3Wx0OrsKRQYCJeJYOqvGZ0DBG+3UNM8uaSjPp/MxyIAywsDsqsz//S28A9dOJnGQ
	 Kdn+KryqwFveryjRB+BB9fbtoadnSDZG1H1eSZ5M5CqpV44F2/FRHK6scEGSvp0Ych
	 V7px2FwKpFgyx1dBr2lwC3ILkT3EpePAQSjmr25IpPdITiX5LvoGv+8M7ap1HC03Rs
	 TMuIPBh2NIxcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00C4CD98F3
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172079379.14058.791176621597004003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfbf41951ab829caacda7f5a6883dc98692e85b0fc6ab29f73d4444a6cc9ba2
Date: Wed, 17 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781720793

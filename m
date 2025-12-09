Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED8E23ABAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765303374; cv=none; b=X28bxcWE42/U8xD0izWJfzuQ1a9TCRhnZTZRxdeHLzieKxsc+f8GD1iSKKML7Fw6+42dwdOKgIrHkC453C9k+KVD0XbQjFRtiDsRwdD1Thq2ISp6KTcqjP8I52no14JbvuKxwO1dLvvFP2Ycjwvk9fAHejSjCURK5FPXxuPSQeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765303374; c=relaxed/simple;
	bh=pcBb85Z7HjkA+PYy/AY2TjxX0p/Q9bE8ds3/h99q5jA=;
	h=To:Subject:From:Message-Id:Date; b=m0z+aV3WOEj1ms3FqccM4b49/K1lVDHrD5XI3fDoPZYhH+c4UbtcgITI4xvXjZsq1nNAgzwBNXfu1xJsEYUzCT4gRAT4QEJ4uzfJeuJTRnxUXEoHpMPLj9j2m3Vt4RYQZCRp7tuP9mPmf9F2oL38NaSwX03tewKBHuk75JWe8cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=becx5fQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="becx5fQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B772FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765303373;
	bh=pcBb85Z7HjkA+PYy/AY2TjxX0p/Q9bE8ds3/h99q5jA=;
	h=To:Subject:From:Date:From;
	b=becx5fQEMRRwVcT/etHwNfzTctWtxQtyVQxdRp+ZTDbiACw619Mym4Nl/l+rl05qc
	 3zlTIwprUcymRfhiNwLykawvWQ4zkCyot9I47w9xmLXpXtFLYj08FbfEk6IdsIsGw/
	 bEr0lHzC4khKDGJDZ0GX6nHuWbgTBmoNeJ9ApSz89TOFE0xtq/FMDCukYYXj+kkWYG
	 VxNo8Loxjsv2bCG85qi4hEgP5vhPuKW3ynGIVZ2Bmm1Vf4dAQmkphd8vKyQZVI+3R0
	 iUa2aWwwRIUyX7j773iuPY5rLknepzqXNiSEd9lx0LNGLFNfpWLSAtu540hdMjCxs9
	 P62XSYR/OyZtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F893D3B98C
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176530337363.16229.6731514963482023665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec569ee43dfd7e537269ab3ed9f7f965896425f8fa6c1ef0f1b5d406eb4144c
Date: Tue, 09 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765303373

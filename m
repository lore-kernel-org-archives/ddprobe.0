Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4393833939F
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790718034; cv=none; b=hLGj/nGei2e4+82r4cGEWnt297sSBBsA1f8Kaw5mg4jtDrpKILy2P8gSjB5hhqvkl3FFEUD9DLbyJK+TNr5BkedZeDqPuAIYBsdaVdYTbrWTkUOYS4pT6koe+7OM0iMwwSu6JfwWzfRFndEzB0siZeIHwRAD4revh4s3qSG1uRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790718034; c=relaxed/simple;
	bh=WJOcuQtYSPtxef5qQYN81sA+zZlNoS+YeG/UMHfahjQ=;
	h=To:Subject:From:Message-Id:Date; b=etVq00gu2PT3XrRPmIWnrxnMzx5z7vY5DrkGDmjA3KVp6eiwKeU2azM6ZCVGJaRUo0Z8OT13R5JNhYC24qQIk8UYko5QrfYeBzWCIvyfLA8HyDpwXPUcv1+oAjGKmY4GJGKGjWiW5IUoiTQHip6RnMGI4rLwVZIPjSNXRDmkAmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pi9TTedo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pi9TTedo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D089BC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790718033;
	bh=WJOcuQtYSPtxef5qQYN81sA+zZlNoS+YeG/UMHfahjQ=;
	h=To:Subject:From:Date:From;
	b=pi9TTedoyVnGM6LQdrY4SaYzdxNAcBw1wtsrflWrCHgkh1k29o79CqkEo944d3tpC
	 KplXFkwXyanQK6mPL+BwdONeNvMBqlOZrf5a3Mb+wSmMVApMdjmJDKNfp+hDRWhrzy
	 BqfclNFzdhMaB8gopRQcztWTL0W51S5UUbcwVg3ibPnl3P31U9NfHiPkiRIhAjHe0m
	 uXr+RkLWsj+PZqMYTvOfa2Is/rNUL3NkURCQM2khk+TKOlzdO9CLv8ELB1kHIFtBn0
	 Gh6lyjUJphFanVgfdr2yiPKGZ9DdW9R4bo4UQ2sDy8A2hyfN/XdCvedFzTn0d35Zei
	 MMk2gEJwR/ayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB994CA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071803369.31621.11885437831922914721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0daf695c679bb24beaa4035b9b7a24d2532a0af7d0fbaa4953fce6415fa85636
Date: Tue, 29 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790718033

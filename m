Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258AB179A3
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757996994; cv=none; b=Z5MiLJcj8TD175xlbAG1lQPPw/Fe48Jxx2PcjmAzO5LNLZHGiEkto+mbxM1r7BnHszrdk4CwPudf5Mo8Ln9WaOByVaTuQFrYZAqjQWksf8qFh2o5AeynyV3rOtoqhjOJLnJelKF4UQ1mknI5Fnhl1AIUr0zvzSOSWUNseTq9WbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757996994; c=relaxed/simple;
	bh=nNnlRKjRZ63hHxWxgOi4XPom0MfYLr+1tbCZgnG1QiA=;
	h=To:Subject:From:Message-Id:Date; b=mo7f2bjEbNuy58rv/LLGd++Hry2iEFgQLFBWy2nMphfLoSZrxoJTImRZZGJsMVJU0zov6IGIaDd7z/Vzq+tSOQwxPWXNmpGxuO5hH/VNm1Jgl0J12rvCoS4TYOJj+fzVL9ZvccCVRWNQ27gyIoEAgG7TeyVBPcrFyAQD5aM//N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSFT7c8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSFT7c8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E8C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757996993;
	bh=nNnlRKjRZ63hHxWxgOi4XPom0MfYLr+1tbCZgnG1QiA=;
	h=To:Subject:From:Date:From;
	b=lSFT7c8FIr6/GlOecSnMb3RbpjlEI/vC1A8pPVIC4w8L8QWPaFFGimL+6eT+1OOIV
	 ND58zhXAkMOgrcYRxK18P3Dq0b7gQiLjnzbqzXiy5DLyiqyLCtfa2UcR08m328anUZ
	 +iShfJXvbYlsl6Sim5+hpneRQpz6+FXicqspJzZYLhHrSpmly6IuhxHQ9X02jIKyz3
	 hZ4n/B1qWLmBy+kc1GRQpfdEgkfKiwYJBKVouGYOwZXpwKcSv/jhw+3cv+0/2mq0lB
	 l61257AhAON1bvtC9kjez0ZGxFUIib2xO4dZS586mCxvJSNZXuAfHFl+q/RU7F4Mx4
	 E3jg89Hav9fyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9574ACAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799699358.15755.8322790804258128124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1223c84246e990f07881a2435cd5d03dcaeae3f50c259e908c927e47fefd044b
Date: Tue, 16 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757996993

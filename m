Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA682D4801
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314893; cv=none; b=f0ngnkH2zcaNWRXo67xiZtubBXldqLH9kEBSlpT0Yh17OaRXy1++Jb+5O6Qw+YvLxw+xqWwC/N7l4T4KcVwh4bL0ov2QVooOjYduDDSGyufYAUqMowb3SCes8nw9D6gKaJEqQuj43ylK7rumu7+hjuhBnmV1mENa7h2hdOvlxJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314893; c=relaxed/simple;
	bh=+PmoWk+rttsUHYJj1ljeBP5FHgdYWuK/+4kPcN3CJpI=;
	h=To:Subject:From:Message-Id:Date; b=EewdJhomd1XV7JWWRnSgI7SDHUFNStbXd39/bzmQmLvsUTVFGfcEyw5rgBCbcwlfO7ps74ACOFFKK9+ZceZrul6+NJB6+wXFdU3pcbtPUgyx91XAcFSbtB7HsPYY+ULRXsNo4Y3vUdtTubwuOvMLIRfIi3slErRjDVjHobMJH3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwY/9n0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwY/9n0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07EAC19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771314893;
	bh=+PmoWk+rttsUHYJj1ljeBP5FHgdYWuK/+4kPcN3CJpI=;
	h=To:Subject:From:Date:From;
	b=KwY/9n0x6k/eeLqeQVOi8jyJtYIwuJoG4TKJWArwS8ZYwa/UaQgJL2Liqxz40ykni
	 v46JTfkiK+1LCtcN0LkR+DvXqX04dJsaR/S59WaZxtmfHjaUKrvqfVk01dqSlytThG
	 OvpLvifnL+pESas/7WyVVEmPsjP0nG+8tVenxVaM4jj+xWdTwsnFkkugoNbT21Yuhr
	 v9gM9uTYWEb6FgMaWFfDj6kGDq/btOX/udz/k1Ll88hOfm8Wj8Gfy6BSfaTGKNT/5/
	 bT1XXml4e23DsdEAJnGAodvwa77NqwKphjevMoZfPhhS8F+ABvcTu+wZzBsn2eILuL
	 SlTuSvmBBtwSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A6E63F2B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131489358.12542.16669138697060144524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf8aa7a8e11a9a996ab1ac3816cdd1608920ff5808ab45ad8872b02bcb6f548
Date: Tue, 17 Feb 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771314893

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B2201033
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747415394; cv=none; b=dymHmnUez1EzFTvhp8USpX9GVGCZ6Ki7wSxdFkkLfdtpmAIIH927to2Fu+kNCbtvKkjLiCIElgijUx2faOUGdq+h2TzkZIkdsmjr0QMb6f4zZhUzH0ip+PRDgBqDfBqmxShWRi0cXou0oowp+gs8mzr2vKtpgZjQtCgJQWm7YkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747415394; c=relaxed/simple;
	bh=LvqYuyhy4kmqPNGBAK/U4eLfAxQDQfwD3rVY+g7sxGM=;
	h=To:Subject:From:Message-Id:Date; b=RfifpwLM2XkJhANaXNrtFzPsKuknCfGLX8FY7OzRt/sW/5PeaqmHGQa3EsOXj3er+WpfMFFjo8Y0L5yHzPIlrR+tQr2uBf38FX/TNg/XZvW6K5m3Ghf/wOcjCI5q1UeS1cu6cFhhPnhpTpA37ks2U1+TrWpp4NCqYya90fdeTN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwVqfGis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwVqfGis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A2C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747415393;
	bh=LvqYuyhy4kmqPNGBAK/U4eLfAxQDQfwD3rVY+g7sxGM=;
	h=To:Subject:From:Date:From;
	b=jwVqfGiso3qG+eS2TbOEvdFxAdC/73cj+RjoDsdgC3vbnjpBmlHCl++lwLmsPs2Oc
	 Wsnbq3okcJQIPTk+WRaJNIRYrwnHvtbsSRb64+4y27BnN4MvzeCbw0yjl+LT4PtAOI
	 7iSP/JDSb83t8zTAPc/nkfdR1YLNucyIxx0o4Df5Yabl2u4q7dQjbtVPUZOcwgEXb+
	 DLrvgaiHlqCr77hokBTRP8vBqswtL86MS1cesEODziosqqyQluhDPYwRhjSsW88Slu
	 nxDXCtiHvf2J9y30EeYkNwTxZzrfm33IMSe/rZFBcV1t+uzpAgtkXFb2+LYErW2qeF
	 I13BRfXfK3vDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CE8C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741539360.26802.435453119135281299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2dfc6193decd8b4fc0be7e4142f015a025776074dc0cd82548540761beca19e
Date: Fri, 16 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747415393

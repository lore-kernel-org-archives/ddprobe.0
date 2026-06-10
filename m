Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5FB1A9FA0
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781111794; cv=none; b=JOTL5oMlV+YCLVYklSIZuPmZuZRRzP9X2UJkqcx91A6/E2U9LO8Pw8SLG7q/Q1HM5MGFeFbwJ2QUPhmkK4HG8oMRfD84zLsh2mzZN6mhqHEeDHLBpRtyD4ob7KAN06bB51oK2LpDWTduV6F1fJaXEFyGExATciCttdhXthJjaWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781111794; c=relaxed/simple;
	bh=aqYeLitV/T3nCiDam+CgUzIdsLddXVqhDtjecLivmLg=;
	h=To:Subject:From:Message-Id:Date; b=usFbFjN5Cavb9gpI+9uJ8It8pL2Jqkl2Pb0ewHDeJqEnh3E6ZP4bVFsxJEFM0mutFmWyDLqPLqD0UPIXbN+FyTcvx5zV5oxEqwR4F3/uf9yaTjtW3GCe4Vrb1IZt+cJfonexSon/cb9dIV+nTxvM0tu2c6DGarZM25FiJ/tq67c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ci54Dc4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ci54Dc4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C808EC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781111793;
	bh=aqYeLitV/T3nCiDam+CgUzIdsLddXVqhDtjecLivmLg=;
	h=To:Subject:From:Date:From;
	b=Ci54Dc4KE67Aw4rn4NMNP8Y9vJGA8gSS6zetyAhH1GmRW6lLXjz2AnQg2fN8On++F
	 YXhSHRVmfIJSnXVukfdgn5STUG9Ra3CY+LQIAk7F6gNswC2Gqr+oOM2tA99Zvj00uL
	 dYHq9g02ct6FhQQKKqtg//Ifr9vEgsGhTVaqSnNJuS8w2ZToR4T/w2Zd8cFZnAvx+j
	 n16n6CWjqD62d42ctl41yCYjwqttEzIaCZxhvzhRUXMCFrQQeS1C8xb05MCssUrEI2
	 8zIx7sRs9Hz9fNLKy9aTapR4IYH52Bl31Xgh40ULl3HsLlIi1sgocUpX2jjUGuI3O3
	 PvuLDO2SHIq8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB09ECD8C90
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111179368.3404.10258900470171537133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eceeda859b2457177ea75d5724731904b942821c489292ed534daec230592d5
Date: Wed, 10 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781111793

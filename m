Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2566660B8A
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727547354; cv=none; b=fod7lix4gMTNMLI5LVjBzn9vouQVflKy3G3KmhCtmYHK2V9YO/tKQZraHacWg7BywpVeET/WFaR6FBlxuxsF0o7ISBlQdpXsjsSlpscq8nrcW9Ye537JKopTMs3GurShxe08XYeWJAOOERgkNRKlyQAin4qefOSTosZlclkddes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727547354; c=relaxed/simple;
	bh=9echeXhW66YPZcfdhfnUfpZz7wDWJI3Z3cntSaw/+Lc=;
	h=To:Subject:From:Message-Id:Date; b=ZMWRAFVVR11pYOsvresIvqBah+Xj+yHfC63PMK6MzeF8NYqDUB2d02412yRl8Dqu4KDOjjg5rUFfi+6CXRcSbyzcpqcVX1SXa4Q9u+QD2WLU1OmlHjnXEV/fjtCynR94fl+NUJNMJYzkuSxrVooH7Vhi2ghjlPkCcI1VWImvWtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ke/b9myX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ke/b9myX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE055C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727547353;
	bh=9echeXhW66YPZcfdhfnUfpZz7wDWJI3Z3cntSaw/+Lc=;
	h=To:Subject:From:Date:From;
	b=ke/b9myXFk7nWC0yIWMmLGPR8Qpp0rmWBZOYCsFcAufVIG+taOi8OM2JKHzPAc4K2
	 B7Nqv/rKEoGJJVB+P1mTEJWUVdIhesidV/5ibl/Oci8/+38X8cBUPFRQx40Y+eZv/7
	 dRA2GzgAig+1eV15o8g6nNO1EI27cFIZ9tAkPIgg+UZXyVf48bOsZz6Vseq73evBIi
	 09iD7I6oxthJzw0pOBUJIVtvdF2gqyLPMJ65XF6COEbtC5e0OH9+XmYBRdV4zgj+BA
	 EF6J851p0+Myxm4njw9d/+JwmqDsnAy6S5CuYjHxRD1Ft+2uTuKH7U9l+a2IAQNHRy
	 YLug++izCyGJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E02CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172754735361.12871.4772285537480453108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17391426127cd4df5347b60f64c1a3929ed4d9d911191817a1e7b1100d71fe7a
Date: Sat, 28 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727547353

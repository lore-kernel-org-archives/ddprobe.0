Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B4C1D618E
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751433594; cv=none; b=Zp8ofx1XMXiJ0IE6dHpWokrfvdoVCx/JIgYdMAXaWZjoMLmRvoGJOQIaHz/OPi4x2VgPYrFtWhpdFdiYuAOinkagBQkmpwQ9IC75p3+Neb4kRq8hlLbZx+LINDaQWUO6uzB/w6hfuR0oLWqBE03m+Y+r2k2sBvtrhy3v0iExWKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751433594; c=relaxed/simple;
	bh=SC+RqCmauH7DysHLd2345CkAE3o2BMXj/c/q2pb1+Ik=;
	h=To:Subject:From:Message-Id:Date; b=iLmkVfL5vCCfW5/khQGOed4a43tSq5yU3ban5GPFASp66ml2MrmDihRv+1GuWQ+J7w4bBHnRVWo9k0/4UY8Tn/Ad+dVCLHUHNQwsJ2vhwevkjDXmp5sFfOD69xmA1hWHy9bQ74VsPPHbWP1tZRm2KMzMgeY2uA+7QrOhYTHEs7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RucREON8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RucREON8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A96C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751433593;
	bh=SC+RqCmauH7DysHLd2345CkAE3o2BMXj/c/q2pb1+Ik=;
	h=To:Subject:From:Date:From;
	b=RucREON8BlvMbzmBCfQfG83w1IkLzKCFDI7Tqpi8U1HxmpcNnvyW+8YCB9o2ZRz1U
	 d4AmY5JE+aUjOtgQNhnebBPTuGcZn8Ab4XhDsDRmtm0u/4J3CLxBaeQt0v0QHPjV8T
	 xtCvKX/qOTjoQ+uxRvpUjqdTbpxMBIApzqE4Nz6RfTMU5JLHYwkyllYCQ83OaGlpLS
	 +B63RdT6+OAzh9pfX97EGj538x5xXfCqmcMxFr3uH55BZkVFFEomPCzAJhs3bKADtt
	 Mt/MJpg6tiqHKUoAcmgYAOwODW/kWTdLR0qg5tkILfZnrcd8fgGOH2BpsbqT9gV62T
	 I7Ivjvkmaa5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E8C83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143359358.4919.17523795288924114046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2904fd144cbe9dbe15dd1bee5e09c6ef139072c4da72588acaa63c9263c13546
Date: Wed, 02 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751433593

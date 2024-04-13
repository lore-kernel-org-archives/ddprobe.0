Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A131E86F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713031163; cv=none; b=a2PT1/sS4S/sGEB1vyRwXS8V1JGANijTTEKleFX9Iu4Lgl6HeJa0D8Gs9jB3SH3k/VKSlQu+468EHDR8W8dERqFsbt5nvy4oF2r9GIWWAt6dhd8WXHZRBtJTxEvQ7mjDFaO1Mzd4EiqZ2P6SpjhwvzaiuOdoK1ORWcaqRp/0oAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713031163; c=relaxed/simple;
	bh=lA+6hdjdzDcrVPKRbzSr2UJWUfgQvqcFs/qyEYk3CkM=;
	h=To:Subject:From:Message-Id:Date; b=uYmwOUmndd9JpOnN0h7Tmolacv8jT25Uy+99OdvbsCvIt7cSiPRPnHCSO5i/mxZ48dDLYUlJtLW7ruMLrXVv7dGPtwq/MQKUG/cpkJRwMDtvgNzP4Y6BhjhwXiLFSWeVGFu6bs1udhJ01YFvjUrD1GwcUJrP1PfFX5avk7Y6KWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1Mf9vom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1Mf9vom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BC4C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713031162;
	bh=lA+6hdjdzDcrVPKRbzSr2UJWUfgQvqcFs/qyEYk3CkM=;
	h=To:Subject:From:Date:From;
	b=L1Mf9vomNTM1/NdcgujyJS0GGrBhMbQCNoFnmc/Xbgn8lCSLANZ9gYbM+w1EjqAb4
	 2ekkXV7dOMfOoYjFRNwwJuOaLCkSdWGSWaKSmk3KSUCRnwhL/F4fdspW+k/KwMXM19
	 7Pgs8AGtzmi1Qz1osZU478DLWFU7ZoLeD3qMXi9iaVAkSG3IAFsCyca+LQMIDSpUUV
	 xly+NGckfsgFyyQ6azaxOQDhNtIvKO657W1tMITx+dDW/lyZo5UKwVsEzWO9GWE1yl
	 oQF8x/4Gi/nDpnKmFbi1yUvcSkjtQNuHTyATrm6DAYPUoQUXEx9uL9lS18kp5ERwCs
	 DT29E2tc84gYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A81C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 17:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303116276.23401.8939463462746250500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24f8075c062e222018e91a17f1723529a665c026b219388f13cb3265570e2fd
Date: Sat, 13 Apr 2024 17:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713031162

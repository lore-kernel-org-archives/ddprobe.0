Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68A48747F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720070723; cv=none; b=cj6YQKaub+5gAyE7oMokjxkz1YwkihiFoxce/ysxkf6aM/QX5MyoCAE2PYKBnBJm2Aa0GAY+IV1EpsP9jz/+yufXjENIGEHSjsukMMKBYs5FxwKqvI9Lo9RUILBz4R7+j1Db61UoGAHYLjhiaM1ZICtoPyN3iuQI+qDV3QTFu0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720070723; c=relaxed/simple;
	bh=tahcR95onarNhnE/49GSNaKJXgNWj1w2XP0uyW11tPQ=;
	h=To:Subject:From:Message-Id:Date; b=IFnSC2l8FLUWzyWCznecBep0nEcxSP4B9Jb7qtpHTuvQAx6o3J+U8zMyJzLMIxFKrlCONNAwRyOE97ZjhQGmDQ4IJ+oRunCl3Xk6DEMLrQryEJwn4/ZMOBqMug+hkBzqvqjYv2RaO7hyxKflYwJhmyYrVxloo0hK85TG4Vku0u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdTQRBBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdTQRBBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6564C3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720070722;
	bh=tahcR95onarNhnE/49GSNaKJXgNWj1w2XP0uyW11tPQ=;
	h=To:Subject:From:Date:From;
	b=KdTQRBBLhzvLkXQQPPt3uqPPPq51SqzMnXiILCT8tXOn4mQaPBYY//LeXILsF7MuJ
	 0ZcBPQgfGywdkWxYQYgxTIapjXC+cO73/3d8xUS7eyroUKiC3HgEh0J2rLYFL9cFyq
	 JOPiGZv05AAi1mJgco082gyecJmC/3dGYruMPct7rbcVi+unO2sI9Bptke37HLmQ+7
	 z+2uSMOJGdsQG2r0RPjkrTxjJmpwjLfXXlU58eNNHfRS3ojdl6lgDRP8Rqv97h+S7P
	 S3Klr+pLFfYBBpbpZOHCWvOeoo+xbN92uPlRDpba0MWN383y74R1JKE9S0UKhbJ/iL
	 O+SH3EgLwPIHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C162BC30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007072276.31327.16342643785779270389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89644674e4cce7eef0c3526ce91c306a9ef34c08a926b76de8a5c64bde87aa27
Date: Thu, 04 Jul 2024 05:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720070722

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152095695
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727487954; cv=none; b=RhzI2m5vgiHBevqCqAQAnHpxxDMKPRDE7d8fVRpCmSv5XUWgB7TRA4YUiakCLQim1A85vkmFOErlBTUVxTcp0NCTOLpOULeEqnrFkvFpv2lvIknw/ypVVwUe7B3jeqPufdK9BH377KR8q7WoDfRFS4hXZEbhq3MSNW2Bb7+AT1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727487954; c=relaxed/simple;
	bh=MpBLBIwFp8+JacvA4d7rznhg4m9bJsKYhzmfJ3YLMe4=;
	h=To:Subject:From:Message-Id:Date; b=bikapG5YbF6jxMEyY6rSZDyxckKXMF/ydjXXBxaLPbEOrtCfmEsepdZz4pWgLGmJAI/P05A5T4qCOckx0pYVexUoEhIpTvT5a8rXPIxwYuIdPEVd9xmhRewm/QWHI4gGvxDZO0blyvkdWjsD2kK8cdkaeMy7L+tCskLRlxPxXQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHx6k8uL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHx6k8uL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B13C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727487953;
	bh=MpBLBIwFp8+JacvA4d7rznhg4m9bJsKYhzmfJ3YLMe4=;
	h=To:Subject:From:Date:From;
	b=JHx6k8uLXqwL0iXHL1dhG2kqHS0Ogyvgzh0gegXPxYPnaZLawKdlbM8tCVZIpEWen
	 Opq6QW77BgWZg/viASJRk3BwV7dfFk7kIliLmkyyIKF/bWJmljSFPy97pL55pW+f9J
	 MhljS67iom8Ut++oQI5PTFhhffnomAzt0PlQKiUthLWuaCeRqmnhcmChMm3o1XllO1
	 gaFCsXCBaJ6gfB+gUPeCr/+pLnk1t7Znhl1ygVHJwQtxFtBjS5ScjfH9vcYkcaygjR
	 fBJRAj3sjgSpZXYW80EdReU3Qz+WdhtbYqPdnve8zkDqzLQNZ/8SP9kyAQTavNTlpn
	 iLSGMTo9hu+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9367CCF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748795357.27749.13403343602580096859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c96c43c997e6f90b6ca08a6926d277ac02428177874e30f9c65e753c2aa1ceb
Date: Sat, 28 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727487953

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD821EA6F
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754983794; cv=none; b=aCDPC2W5BMMtAemr+A/+QaAndUqQhzJgVsoJDlOYnefiLmZNLLLFTmwrT7WSRQFK/ULfxljUYVmGKOk/ZSPS1Dwa+AX45lAB1w76Dbn6uYafkwT6ErE0AvcZcNXVJ2QrBbacj0kvnbEIng06DVxXgJVjCC/lm1wVFuf+IWjjcYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754983794; c=relaxed/simple;
	bh=9FMmtXziUbsrgslHsw2e1C94R6mZcGak/Ilgh+aacsg=;
	h=To:Subject:From:Message-Id:Date; b=ZfO5NtaQ1qrh9v+EwXfL+9APdic099QGsnFZ2TDLHoLxksozfstAqRkkGA9es4zC45rlPY/BZJZqefn9fv425A5lV5IS2wPHWEQF0kDQ6ddskj9q889SMoRThMJhA49iSJ2QBzYWNmPlgCjpfU/8noBV4uCG6v9Uh+BxXXcZthw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLGnUVpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLGnUVpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A00C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754983793;
	bh=9FMmtXziUbsrgslHsw2e1C94R6mZcGak/Ilgh+aacsg=;
	h=To:Subject:From:Date:From;
	b=XLGnUVpVvEQwmVleJvmcrdXf6pCQA26ANfwyc6kTMt3g1vzbPf62mfNWHMu+nIh1s
	 WuaP4/HMGo2b05dLJOztnBM2G73OMsz4qbmXU+ynqXTM+XG8iAbP6mHsaV7Gi9F3w+
	 a64ZqkFJcj4oCmO28VaGLn440a2k5SL29h7tc7dxXgzxrdOarhKbaK8RWnzF3X3Ktk
	 Dfn+481Sh9kMKGgHQPURkzY51uKtcThs1XCI2IqjyR1WyvVjw2Wc42Gs7ehsOuLEoX
	 pByTIf+frnvLKfU6BNqtGCBEer1Bym3ge+Chp+PImbVoh14rlfBK9jjKEnkLqVIJh7
	 snnSqBQ359rqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32BC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498379357.20630.16222582954183930202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc3c6cab03d0ce9ffd560a28a889bcc8223118c70df86b3a701d70164cfe3b6e
Date: Tue, 12 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754983793

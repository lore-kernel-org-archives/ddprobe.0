Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E9F3B4EB7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786450234; cv=none; b=PUYa93F9Wu7FSJjDRmx7BFwWSZGLb4QuqtN2/g/KIF4G2mRg/Iqg76VqpeUkfqts2A2ChFHhGoPlx9YiyNnO+Pvp4sL86ojSR5ynQYoYM2romNiU3hESUbZUOSUs1Ls0O0+YlC1Un4qNDcFaHUwPDmxCpfGb6CLwd4byg/xUMrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786450234; c=relaxed/simple;
	bh=xjdttMF8wrFNJyFhXCvLYelsDDde15ih8l8kfxbEGkQ=;
	h=To:Subject:From:Message-Id:Date; b=pXzifcvtqyBL1sW9GbeiSKC/oDynPsw8a0lS3+6XkcFu70f5DBNkkEk22MnzTDbLpNhaixxgBlPDjyqot8nHhoVbIFK+KoVXeEWs6VDBLKjV54WEKYw04C40erge4CL8Cu7kloXmHsxzJvXqGmlX3KtrDRjHCOgXig1b7ymqs3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1c1Wb3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1c1Wb3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1874C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786450233;
	bh=xjdttMF8wrFNJyFhXCvLYelsDDde15ih8l8kfxbEGkQ=;
	h=To:Subject:From:Date:From;
	b=D1c1Wb3NNp677w+PZO+JKyKGNVeJdbysGRujgLbGZAuGJxq/j0jFOVoQ/RmwTAs77
	 P1HcSCjjmZQkxocPW9y7hWD2cQkNsCHsA9FWUUqco4XBFh50aAOfjDnt3JtW3b+b7W
	 BrWxCmxoEBWOt5CDkuWPx8bT8wRDrjpUPVLHzLLiSk4H0djpArBP/qAFNktfFYCMQ3
	 FasDPWD+NQJWf8476L2QU7OM3v/ApilJiwQumjxmhF/B6fikTPoMhcOaAT/2Y7OJWQ
	 qhe7EDDUtCtrQRXdXltSrBpAPUBhG2vQzUvpUirpF22aKE7eVYZb4h6dUMcO2Rffb+
	 bnBPeoUCnTL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D8C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645023368.21381.18353757979491213772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccff68af34f11e122b05cd96d4db9688310dc85325f459dac0c3fc220342e6e5
Date: Tue, 11 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786450233

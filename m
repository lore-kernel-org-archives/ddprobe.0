Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AA0181
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723441554; cv=none; b=k9HtXwNeLaVDrH4aN0OEw6sdXFiJWmzR06mXovwevvjq1Usi41wex6lWj0KBG1jUae8rWIhqR7RTFiQQw05bUIyPDChEg3/Ri6YZYdA+NLHtcaKahLOsK8tOywTI8VChgrbqaSN0fOg4n9DFd25+2QD14t15pJ932GwoDMlP1kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723441554; c=relaxed/simple;
	bh=DVsOLmFfdP4o4amM9ktX500zmCzxYh5005mfg7SYLM4=;
	h=To:Subject:From:Message-Id:Date; b=p7y3E1xcSFU8LfmUV1IBKdqopXUjX5XTP2cL6jDA3RboUIhjEBRVGl9e0HMWBrAWzowRE7fDpSDb4Fr92k/dVv14ZJixLkQjyX3FpMO+aEcOLD6mgEE7H1CE94ogWgvRr7RpFwF4mmjOXeFmtSLm2gKFi0V8Pj21N9nOpBtzDb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEGLUv/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEGLUv/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E03C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723441553;
	bh=DVsOLmFfdP4o4amM9ktX500zmCzxYh5005mfg7SYLM4=;
	h=To:Subject:From:Date:From;
	b=XEGLUv/i9PWTFL9CyciofWVLBIwUU7VNWrXqyHX6qnpcH4jAHT6O19Dy9uSbk4BBF
	 F2hBlaGKsyKaqYR35Os54Xd/ZMaL+gD6E7yXWfu0jPBvR7OAq/HF/uzmU0LiKB8t5C
	 gBMJb2Klne6rMVv37wvoWhTxxC2SlWR5LK8a21PfykswO7Zk4IkT2STn40QHwKVdtc
	 Ym/j/uhflGgcSqMIg2dEhZ1i/QljWdqr9T0l8auBgRwjsOp9VB87+Lh+VTdZIIK5mD
	 PqsihoqWoSxpAzYOdwojhn7vFuE5LrUTvo8eo2DKcU0Rvm/9p2CsJxD+vHCDFtLXGU
	 EcVvOldznT45A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1373C52D7C
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172344155364.22181.7132006720770579523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e38aba5e0b02fc3d401a9c3f64da45ea0b1ef7a2130dd81e94fb52214e39333
Date: Mon, 12 Aug 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723441553

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0006BB2B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706626096; cv=none; b=MyykjeA2TgDdGXBUIWwE2GgAqxbRlPbftFR1TgB00N7qr9JX8yxSms2bzUeM9eOJc6EcX4q6wFA/2IfChhgbyUlLTrwImtUs1GAyP5k6JHyrzdPNQoq6g8CTlsx/LAOkZo4JG5TW6J0HJU2Yk5I6cRTQwQzo/4WFN22p6P6YOw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706626096; c=relaxed/simple;
	bh=uxfvr2s5gv6PnijCL28WjkbcxtGGZpm52xmNmwkVSN0=;
	h=To:Subject:From:Message-Id:Date; b=sxVW2SOFULPoDfMBjiD87yWSELL7MSi9ZSQNmU7zdAL+56JW3V9i5fiht+ZbUX8pG8w+nYJiz849SFjW7d5R/VwE5xNzLpIpX4PfyspgV0VKNvtACyCa2x3gs+/GhUzQdqEvOACIAMTM216ngWNLQidQ0LDk2YZe+gZfHS3MsnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDBW504k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDBW504k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7810CC43394
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706626096;
	bh=uxfvr2s5gv6PnijCL28WjkbcxtGGZpm52xmNmwkVSN0=;
	h=To:Subject:From:Date:From;
	b=hDBW504k8JKo/N2Ezi7QLR8mqG2o1wKc/O+7FetMQ7m1S1BcoKrpbFD61muYvvKoM
	 u4XTVbYzHRYojXMwhHHP4RZYk10Zcaf7X2Go7bnOGbgzxuSglm7h0yt8w65wYZA3Ea
	 WyyqxcY+hE54Hq54mf64F5YdrtuhA+573WNzsCiYkRo2J1Fd7pXuEcEQLqDqxzT5C6
	 Brg0ZMrHI5qwE3wUKE/HT5zRZXpVsyUJ9CzqjPJLY5AHS1YyUoBWBOWJtUFN+t3p4V
	 dgqMvgIgUfmSWcufxRbTACTE8FUezXiHc8XGNNoCGcPdpxuvpzzJQX43W+OBShe7Ju
	 2vE0aSfdWJkKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB00C48285
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170662609638.30105.13382199106336686495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54cc88cdefe237999bd0491132a506dc4a637fe307fd39832926971c9cea3a8
Date: Tue, 30 Jan 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706626096

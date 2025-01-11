Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BB817C98
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736612754; cv=none; b=GyIO1UFtf/PTWlPOklTP3lFGz9sUDFb9tRQ5yw1bTLWJQbUnN2U971rE8voKkN8QZmTZgPsrOpih/g4XfulzuSnbmq85Lh8dDjz4clvE2WJ9PL5wsgKUcOV5/plkODe+TRl5U2MuryPQlgyi8X8yDISVAfu9EnppbGKbcFnBKwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736612754; c=relaxed/simple;
	bh=fRTz787hfGd0R3MGMvw1ha07CpYtVRTIY8srXxZ9dgY=;
	h=To:Subject:From:Message-Id:Date; b=MNo9agpARrLCrItzReI+Y0xjOqeI4UOyJJ2o705Oh39HX8p9+2eR1GiTMCDa5BS6ftPHkHb33w3UB5D46pCa5sgyBUjoEse6RWwEsI+f0Fto9U2YCVmSa8sNotStmRlrdp09HMaECGAnK2icabWWGRVdyTSuhkoiZ7Lp7YhF3Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epX0z/G8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epX0z/G8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90DFC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736612753;
	bh=fRTz787hfGd0R3MGMvw1ha07CpYtVRTIY8srXxZ9dgY=;
	h=To:Subject:From:Date:From;
	b=epX0z/G8PM/gwelTi+Mnym53VFCwjjTDH+lemeljFRHALMO1Pko1a/YxTgtlPkrLA
	 Yb6mY0v3bVHfNcb4GjVBNRuN5mcxikTqsLkX/ux8j1/Yjd0MdKhJF5mqc4xzsTTE98
	 isVMFPj//VEW/IjSw8T8j32Cz5dVrHRoKP3+ZDlgqRYM8QImKo6X6j24uBJCmMxsn8
	 Npgf9TwSWiHe83NFjVbBDBJDMZTiG2xurUrQBHgL30Lm0L882aNcF/ApMSQHzJmne4
	 gQ5wqW+F3gv6yL8Zu+mBBmpkJyaOBghKaG2y6iSG9G05BLRm7Qtv7xJelksO/CRRXI
	 AB4JYZigM9tuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9543AE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173661275360.9875.18185710875927520084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcfd07938b5ccb9a5c438e8b92e58700407a1f2a6e4ad240ee82f8ed180ee11f
Date: Sat, 11 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736612753

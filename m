Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3085C1714AA
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782437854; cv=none; b=hpSe8vmDY5tdP4g2o5270rXQQvdn5j1YqLQ0phOMfkl2wLCBFBIowkQeRllBtum8y7u7u4lRBZL25MNRYI7gSmnc0ac6ADbY1hRRdi1cHVE2PaqCezJ6JbWKle/hbVAzIsp0cNMbPf9EIZ5L8tX6Dg8hDsCpViczjz32qc7IghA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782437854; c=relaxed/simple;
	bh=gso/VK12E39V9UYhXR+7pJi/k0zsnDJjW73Vbtnxmp4=;
	h=To:Subject:From:Message-Id:Date; b=sHF68umaJxWTShMiVOWBiydzI0BbDl7dtTDNAy2uhB3IYgrrrIj/Ku7fT7zaogeY9flB5GlMV+6d5mKBe9ULMVKMzjKipAVpc9GjTF768Lhrnu723jAjNH/8fIQHq0JkDGbBlrfkWJs0LNJt+dJZ69Q++YUgagZGCNj5SQ105bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2Gw3vtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2Gw3vtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF51AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782437853;
	bh=gso/VK12E39V9UYhXR+7pJi/k0zsnDJjW73Vbtnxmp4=;
	h=To:Subject:From:Date:From;
	b=n2Gw3vtDCNGnb2XMR0E4ly6CEj4ym/jXkHKuBg8hDIJTF0HPHGWWbzCpeui09hawX
	 IV4BANtWUzGPKsMB/wfJWlkLxHpDHquhWoop81FGd7R/vX3X2sUPPblhd9f24XT2OV
	 JV0S0tgM/ymfp8oQsyYeNkAfUZPLfxlTFu1pjt/Ag2Jcjmkd9DBzsUnWSUsKF1CD9f
	 cE/nZdelALy5vOkEwi3yRbYz364W49G7l+cxYJRAZL9Mas6Ze0u4YawhpE1KVcPX6z
	 nrTa50PCwuL+Ntk9hekJ1wrmcf7x+/0pY0yxTk71yazWQr+pz+lqnBtSY7sdtFPrXu
	 BWfXVTK0FyELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EBCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243785368.9567.12294924564190209492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca52b7ca385d49aed41b1c5fb74a9bee100b1af6a40b93307c3d7e6e10ed21ca
Date: Fri, 26 Jun 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782437853

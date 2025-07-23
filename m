Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3823D215F4B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753309194; cv=none; b=orr1w8RCn0Zt1tZQuihB4QinEU359iq+M/UqRC34tdr0rRzY1As7IRLL3jQSLJ6oS6/TVQ5kdoclSpzo6HOp7kNjwYARf+Iokwmj4F+tbTgG4KbOTQp3iK/FQ+jnMzaSLT2UT8ywhdAFTC47VXyWa7ZgyKJyqgRX+gbG3UgiZIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753309194; c=relaxed/simple;
	bh=HrBYLlYaFtIOPf43wj9J8V5IM7LCFGtUKswhRFk3Uk0=;
	h=To:Subject:From:Message-Id:Date; b=ICm+9HnYuhZTl2Fa/UXbxdrHadEpvSiBWUViwF7MMid1M/sUFMd+fCDjfK/elXbVT5tW/RAkHbpgKLYN71F+/0FAP9MM37JLARvVO3an0C7cahfTT6Nz++G96VmNjoU3k3Nm0FsMfhzxGlZsju6Zfmv7fUSKM6xBoRwS23NWo4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ps4mOYRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ps4mOYRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33E2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753309193;
	bh=HrBYLlYaFtIOPf43wj9J8V5IM7LCFGtUKswhRFk3Uk0=;
	h=To:Subject:From:Date:From;
	b=Ps4mOYRDwmjZkqUkt8wohrTH4B+ydSJ1ZFyt0fPFCmeeXxV05wZWF0zWsoUyGgL4h
	 8d4Xf1ylAmyphDqOkmmCELuTeiU6GqYxCpzOAEhC5oCaQlA8I/CfOvKrOtCQYJpM/d
	 RNfIQaMRb6pwkMbM3Af4D7Ppbl/7EP5cVjejA6brW/oPy/RacwkBd/2YK0SduauEk+
	 f4biMgSrWKYwBhvMSTVyu9yCE8+m9Ntpy/o3VRF/HHeZSknsrWRQbx4atWs6tdDwkG
	 dqX3WKKvDtBk2KM5X3vZOw34mBWWTx+njQAsQaIQvhcvsZ99DugrOhQVQKhDLBHM0I
	 U6tJlDx+bMuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A31C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330919358.14695.8620247054380568971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5588463da5777b2d9f72c319b621486eb1b7e2a71fcba702ec848de553784937
Date: Wed, 23 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753309193

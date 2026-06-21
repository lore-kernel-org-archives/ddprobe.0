Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6D71A683B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782012394; cv=none; b=eTfKDKMiMUfxsn21cgoV8JcJQRemBiZbf1SQFB8qCqzBAHqJ/F8CHMuHwLMWpE+TtgvyvaBL7QQZdVtE29sSL0uCCtJbPduSTxXxQoNiMeoBztWoWugeT7StIgct1T3+3x1hb/Kg3D/y5Gl1Hjj52EDUgX22KAs7FHyt49vTV4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782012394; c=relaxed/simple;
	bh=HKd8nNCd1tnkx9HOLw+vLGdN8AeFUHXM5W2wQjsscGQ=;
	h=To:Subject:From:Message-Id:Date; b=tU8nzsEeoJ/TJLd/NExKfYwN74yM98oa1HftPl/q0gLSXC3OPZOhjiUbfaPLpUW3WkPdXfH+wMG+nIkz3qYuVCxsfu4A8ug1PuMXhug8bq/z4GqCf/sPrZOTa8FLp9amtS7nywr39p5VsST2gG7t7dRIUyNgUoFtOw2NiqwJniQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nm3ta0J3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nm3ta0J3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A40C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782012393;
	bh=HKd8nNCd1tnkx9HOLw+vLGdN8AeFUHXM5W2wQjsscGQ=;
	h=To:Subject:From:Date:From;
	b=nm3ta0J3ppQFgRFXsKp5UJBbNR5BgTwho5iS0k6xmCmZXftf5iBp4hcawWv+pOb33
	 CFNrPM7QBAvyuRP7qU9OXw9cHCBWcKGt2Ya5Jg+yIVak/LdtMpC4jlfXWi7XVF81nQ
	 08JcosY5kFwofDUKARR0xOzM5PqSMXFdS7t35Jj90OXTvXTJ/fuYPT3yV0gSo0J9fV
	 ytqv6KOmtWLcjLuXGmORA0K+789XzYOp3MCF0KTZaGFcSh2uaiyssTPBzjxp/3CIta
	 T+SHdWc2ROSvSQgjn0lCUujOf3UWEVkSacspMpxgtqcvXCVE3Rrb5jTYFrhEDXLgoa
	 muwp2kPkeb15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB225CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201239369.11333.11680118602067380619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 650afcfd1eb68df717d0699eed8df76dcb018c80b3c0a4b473d8925780b40abc
Date: Sun, 21 Jun 2026 03:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782012393

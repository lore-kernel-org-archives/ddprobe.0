Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6DF25A626
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737856554; cv=none; b=TD4pw+NgzJ6uQ4LvxStLZZmHC9MneLmFrTA1K8AdHABFAa43np92wkQk4dIJ7M2MEm7ivOfcfZJyGKg/xGxtL464xfx9lKtb9PIQOvQbJv+veL8YX2y2ldU1g/wY2VY2yVrafK3sZj6dfVh7DU3ds8M/FmDFyfE8OQcw/2kwdBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737856554; c=relaxed/simple;
	bh=Ro8UvUSsu/G30rhfsovHoHVxmtI8pYDqztKef2rLTJM=;
	h=To:Subject:From:Message-Id:Date; b=TEs/7/WEXbG+qcMuWfFHymGA6l+RaCcj4a4hCqj+aHQvE1qBjXWAZDWb7zX01Jz9KWpT02arfyHLW+wrmuFcDdaXMwWv9MV1bUKJYJ3DGJMUVSr1KhyV3WwnCDPSYwpP3TmMsHeYRAPThGhYzabfiH3C6aeVFwiIXXi8pasX86g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ap3OQs65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ap3OQs65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF904C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737856553;
	bh=Ro8UvUSsu/G30rhfsovHoHVxmtI8pYDqztKef2rLTJM=;
	h=To:Subject:From:Date:From;
	b=ap3OQs65weUYATS3pXupuZzPyLSeK6EZzevEjwM/yHRX/Vi0KkkRfP4Wh9oMk7Zpv
	 1n8qavj7IufkIQ3Qgoc+hPUVCIjXa4gp7cvF+117gjnGl0EbssdIWVIUaovGMSCpjf
	 ttUPBFb5hQddkhfWiaVVNi55wWmGQWdbu5OqlAGygzcxE326UbvALPf2m7arsPgVgi
	 6qcmQUnve1CbQ8LK+KWjK00tyXjD1fuJeyNRVksTchpyc+/9rxon+ncqT1W4bnx93R
	 1YuTWnlxCF+ZVWAHdZY6yes++s9zGO+ThuNg3H4bb/94U+sPCNppOx0JtecaEKXyGA
	 If02nOf6ltnKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDEC0218C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173785655359.29548.10782636650422607352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3697613e196b190ecc29593847664bf81b6555b1e7958fe1afdf505494ac3ed5
Date: Sun, 26 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737856553

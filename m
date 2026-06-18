Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DF223EA97
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781775394; cv=none; b=Tu/pNFxIfOXTp7mtCm/U2zPpwrfT8LzvajsXeVPNy0pK2Ib6rVDdetWXK3t1DW1T7gtRZAp784e0vkOKh1tcFE4QsSS1tgoL8l0mXdWc21dGQlEb9iYoaT+LFR93AdILOLWZj9Cuy0tCvnRy6xQsxZmzh6kSmlaFgx7d8DTWzWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781775394; c=relaxed/simple;
	bh=cdrc9VB1URtcQWsSLC8SFtgqrQ72sjINMnbQ/+MJU48=;
	h=To:Subject:From:Message-Id:Date; b=s3mIUEq5c1LTmmbBWt4Y63UTKm0oyX0G9gpsQQlh0T1BjCfejDXAwg78vLhK6wNvmiWRQcYNJ4R5SsGE+o5CnwAQ4e5LzsSu8InkmB5hN5JqCdvIuWjcynnsVTE7AwVuIKILA1POnTcKjxiZT28zWYTAf75Bnw6d+JWgixNS2NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqJzk1mZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqJzk1mZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC627C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781775393;
	bh=cdrc9VB1URtcQWsSLC8SFtgqrQ72sjINMnbQ/+MJU48=;
	h=To:Subject:From:Date:From;
	b=iqJzk1mZgt6g//mIWA9nLA6LzrzUiyWO081iTJQBkCCwjMKZbkYW1kQzNODZQ8q+/
	 D5wq8ObyM7UaP5OjzhAphXMx+Lr252sYyfxGEWxUAMD5QC3gMTSS/8CHR//gTxQ0rq
	 nni3FeEI+sxQgxPANbHUW+UXGNUTLhDW9LXL6b9z/ZFe4GFnUGCTYVWYv1jI+IxFyk
	 3hKEM0WcnbKILWOmWFq9p2hVpK+XgmHTZGklWgIRQUDMbJvjWz/C7HADsTYOOhZKWw
	 pS+t0JBrEEQDw98blqGAOkbMHtkPhvrPnrC9PdHTLBDsR2G9oLSp0WehNyAmqFovXn
	 RWZZhl2iBz1kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2D3CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177539370.4332.8723555706003266449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922cea20687fedf44d5dd1dbc66f2f4a71986528ad0cab2e3695f3d617867299
Date: Thu, 18 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781775393

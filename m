Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB372116E0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770425034; cv=none; b=IN/DZYXgXinVXVnaxXXiGoWCIq/qfD3xbvzmsqM8ZIpxYAz0iao6OkqJc7q0AZ3Ii/YVMvVFy5WDoKLR3B2bJ8xo4yQss6KBgsJBjlruO9fSR/INWMy6EIndoBQ4aVhfVQAtboUiLhH8F5aH6yTxpDDY6J1KtojxhkVHa5e25L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770425034; c=relaxed/simple;
	bh=Wb9unMecTESto05x4XE0IuiJ3t7KsJ5PtlOAp2BT7+0=;
	h=To:Subject:From:Message-Id:Date; b=jpiAt+JERqIJqd3CfgSTnM7v/SvPnRVJEU1HAccFkqRhIj2xqAN016C0a0BC8QNjJTrn4CjZiS8xMdVWS+8zzO8tU+XPA0l7lfsOfbfmtJS/cAWqR5EJ2jtnCq8+coWFyFH/BX/Uryx9v7CFzVaQ6xdpg3f1lEE8pyhRMSjh81U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyLjhOTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyLjhOTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BAEC116C6
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770425033;
	bh=Wb9unMecTESto05x4XE0IuiJ3t7KsJ5PtlOAp2BT7+0=;
	h=To:Subject:From:Date:From;
	b=HyLjhOTiQ8NFGD7U5R6nFTjvPXAmFWqKPJBBzjcxn4X7gX96YI65ddChQEHr06PX1
	 dDzYaK171uJk+mmrN4iCSNy2y1QEwCsZxaxNU8NqE+d7v+l3cNPHj56gc5+NcdoaPb
	 gQGKR2hBxPQwiBHX6bO4s63nIdA2wiVclyb8brgPwG2qTGWqMeWsaSbncLV4XFB7Ax
	 depRf5GztvTA0BaAWhqKywFjYzcO1cDVOu057AM1mU1hoOIcn9JkCcuHTyvSWvjtuX
	 G0Eot0ZnAGnxjk84+TP4HDglkFrjwajC+nJzpz0DGoP2VkUKQGgHwT8v9PWR147Q/t
	 REHjo4DaCfRyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB7EE6B71
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177042503360.9865.8685228523758549061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69b07d99f0f900bc25d50a8dfbb6180262dbd5c0eae253102aebc85b3aae4bc
Date: Sat, 07 Feb 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770425033

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A31D101F2
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713930023; cv=none; b=DexopiYClo1KawuaHkfDLjB1/8mUJbbk0FPPrj3dLPAqwRQyMAt+DFdlaXnUpuxrHgvHjhCrQFVDpHrN68ox4u8UIDCpaQkVoBEMbQ/gaSSxvhwIQo6WeTCP4E8cSqvwM1SDod1dG6IHHbcKEwlbxnM5pWlu5DPvGNHFPjXyw3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713930023; c=relaxed/simple;
	bh=DVtieqbuo8whSxn4RKCMpzI9GXR47QF74yr92+9jfAU=;
	h=To:Subject:From:Message-Id:Date; b=dK55qfc1UHmMrKgI4o3rzr8hmQIJRTFJHKpxGMibRniiJTycLPT7UnsFtiv4f9aLmBHjeKdjL9fHXK7Okkic62Iv936Jrdc3QCkIKAb4UdiIf7+qDO3xI4B1gBUxwGhkSCPWjQzmxKDKJ4V2dM/yF/a+0iqGUehMIATdGJ6l/c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HE3WZhoQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HE3WZhoQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5D5C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713930022;
	bh=DVtieqbuo8whSxn4RKCMpzI9GXR47QF74yr92+9jfAU=;
	h=To:Subject:From:Date:From;
	b=HE3WZhoQbMItYRQGqLnnuVty47gt9JgQko8iAJQuFAxBT4N2uFKulDnAICOP3kSa0
	 MQ0asdudhhc1EeM+RNT6HTlJ4YDhcStdTrtDT3IENgrJJnvSrap5M03sQV7ISADlCa
	 n8n9RqkBL8cXrNbVYmDwkZbpN7jbyO9yYlkXgnu7aPa1h7Gc4js+0ykp1+D3G2uJ9b
	 1QGdsaB+TN/RPKv+aidySbJni9AwTNxp4Os+bmebwaqnWgC4JMPd7sek9N7rujxSJz
	 OXJOQJRX2fpdM5rY1DR3lgL4R5hRF6li9TEnabyHI34cOG89zWY0YQtPgqCwwGO1gx
	 m72uFLw3BjD5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A8DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 03:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393002281.29807.11647160665749223373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9c0090253cef2b3e196a5c8605ec8f2bb4ccb2573efd29f400aa412b7d232d
Date: Wed, 24 Apr 2024 03:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713930022

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DDD1A9F9F
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773734094; cv=none; b=Ruu0Bb583RNQeUWXScSoQnjjmMSunkNje0+d8YtVB7WZeC8YIBAPrV4Bo8Fa6aAVCl7BVGiycssZStDWCC1MBjRl9uTpeb97hDl9BqMiF6hZVGb4CzSbxEllxq7x4mssv1JWRmFLfS+nc7T/l0RCvuE6w+ZKU1bwl3eJFnnscNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773734094; c=relaxed/simple;
	bh=WE/xcb4GMarAoR0ZTZfSVS6b8Q29yIJySQ90hfztyrk=;
	h=To:Subject:From:Message-Id:Date; b=u7AOmGAQLKio7DUarPZqiaDZ9fQUrcDEQouVAYgjq/w3fFqWPE7BA612yrnN/E9jdu6V2+p28+LHooDN6O8yh2S7uHxNTu8QKrFbrU+84kv9gAA6t+kRC4lBPTjnzv7ua7NYUUHOvaGOgRH5iNz8vED8pmBL67ZEeY6JuCCneOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYQPMM2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYQPMM2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A195CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773734093;
	bh=WE/xcb4GMarAoR0ZTZfSVS6b8Q29yIJySQ90hfztyrk=;
	h=To:Subject:From:Date:From;
	b=TYQPMM2HMPl5ZX8ovSvuDwQ76NDGes4vrBM4JkBYDiMHYW3BUsxZOAPT40K1WLtG8
	 cSibbYJJ8n6q+dYRYAV51ShQViuMprNEwKvuhYCeft9S8vcA60z+GPwdUtMIwm5nqG
	 VkqozFwR1yGpauebmJPyTr8yS5UDC78WJbG0+/VHsJji5o8+WvauLuxDj6AklvREyl
	 r4uOuxM/Ukq0tkoNGZ7fDU9MJ9gy9+QOESYRhuOmvtrOhnZdOkWISeZyLO6mRCLfGM
	 lL9hicSaZruXp8Fnas2+ZOkiQ+CkQo4ZO4xGbJocICyVkXgMr3sQbrZyci8xReSv0R
	 Ib2x3PCjssZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE86F3380B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373409357.17457.11527007433194216041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f377bf0bf3adf3f04ab2a90a9a9278e3290615aff2332cb803e5e1582e0638e
Date: Tue, 17 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773734093

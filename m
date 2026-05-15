Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3C83B47D6
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778855434; cv=none; b=Nex0Uf3zocnY3+hljyAagYYcRtGCpwqHc4ykgF5slAzkpZzFCM7uNjBp1hFcmzXFJ3FAn2nRwSkF2ZHiyFQxD225KjOMTNKKsbQn/ryeixA/xsqcOaUJ+xHEv7RzexNdPNxqQZ5eOSO+YoIA+Hl5/uwiKZXNt9LK6q65IrBD4YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778855434; c=relaxed/simple;
	bh=DzyfBkj0KASbqWh9lFw65zWzxAZY/WxxSDjjThE9Vmo=;
	h=To:Subject:From:Message-Id:Date; b=A1kZJFI3j0YeXR29/wWNBn81Tl+7ijAMEn6kXs/2OX5VuM/R1NuHuDccsOCuzonkSaqmdO5Ghw/Igv7sfaWPyiW5Gm05o8FTsqUFroj532QS1dJVSE0T+Ldj20KFCm7RHtVJgAMjESBVftD/WFi0yzcl4CsCwTXv6buTRz4gBSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/gHdwcx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/gHdwcx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15C0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778855433;
	bh=DzyfBkj0KASbqWh9lFw65zWzxAZY/WxxSDjjThE9Vmo=;
	h=To:Subject:From:Date:From;
	b=p/gHdwcxHMrt/UbKztqxTyCjHC1+7FFRFCbag29OW+e8YrpB/5KrJZYxxr7dvkgLt
	 0w6qljlsA8XrLSrN5aiGyD89K/K4+4+Vp0pJQBbhiUu+rybXaQutIocRiNe0gFGF5y
	 JORp+0a6etAlQ1dgsAvB6+0SqrCU0AkGP/QfM0aGoE6KOeZVQSonjb9cbFXLQ8nqTe
	 jlNODdYzN/xwSIXbBDgyUXpAxdwFD2EPdDrgUjUY/5rOPDhT3jehBgbdmc1YNrrMYO
	 WqZKqvEnOWdiB2B58cxDU31N6yqicjdQEsrW1vkmsn0bHaHGdgGgtX4o485Wm6kynZ
	 ay2raXUDVk1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6CECD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885543369.15867.15877637773088149465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178431fc21d20563c7b320187b1ec2e48ee6a29fd3cf77c00d0e44cf012e4662
Date: Fri, 15 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778855433

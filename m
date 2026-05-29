Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8F638F250
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780076554; cv=none; b=hzPV9CKp7mXy2f8QlG+ZSkrjV9jRR9H8pZicSY7Wk+0XeICscz8ezs8sQXXHoKdJb0E7+7YthsacAirR7MN9eh8cEwR56lfyNV3/OLpKSU8pkOFSfs8KiW3jE9idbZrG7ucek4efuzSf0erXhHtVvOY53tzGwGSd/o58CRid0aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780076554; c=relaxed/simple;
	bh=+zObF+IEf2eE8nCEdWXo7yI2TKrCxsnxUnzhEg9lIp4=;
	h=To:Subject:From:Message-Id:Date; b=pesxmnuPl97SjMF1OW/6HfXoS/obZ/XeE+mXf3s/K+l12bkZBeV8tFt1r+lL45ciWi5+ONn8CLeiqlL3kyHqBQXFp6A2I5rKq0Vqek26do6LL1zVgNvAgiQ7Gj9Zmk97SrIAgGTQ2Jv2rxJea/W41rd01be5OPlZGCz3w+eTA0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PteaHnS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PteaHnS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA57CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780076553;
	bh=+zObF+IEf2eE8nCEdWXo7yI2TKrCxsnxUnzhEg9lIp4=;
	h=To:Subject:From:Date:From;
	b=PteaHnS/csRhk7Cv/+irlmlND4v097Zhg++40LRdA5QSpl9AhhKln3fWOJKU/0s+L
	 pk1WZN4iGsIwWQ7bhHxR/HfntM5FER+JtVzxx1Spl0fqGS6r+Mnw0yMhBEDxXkWVO0
	 f94WTGBqkd0Dbo8SygJESSxhYc+EVkIPOazNuKcEO/vJ/TuT3kGQGFdCTg9VAxeHyP
	 vqcsKUwKL8KDhXyzrZgI50OCO8j635P2Rtnhb/5Xg/vJPZ9JGyWZB0UWNPubnyDPUV
	 QOHWb4gpRSranzjiLi5C+RM0p6kVg/U8H/ulpMAPe40KaTzFNEIBWbpQEPyAspDndN
	 NMty4MzzNwouw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8C4CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007655370.19578.9135275062446015992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31bab66b21b68953e09b4743692418a7843b24fad487589941859790ccf39810
Date: Fri, 29 May 2026 17:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780076553

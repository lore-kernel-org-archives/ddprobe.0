Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDE6361DB4
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775229934; cv=none; b=GnaZle1Fx+WHs1x4CKut+16hjcuEJMT2CJW3ndIsWodzwmOA5A1eKx8SU5w13rT+E9iivTyjKjRgu7ieCkb1j6c5S5pLGpG6mmq/NzOIQQUljxZuBoLxRfmQ10OWsDQOthAnNH6ngd8mhhagrfk3PCTd74VE6pRPJ3kEPU3uZ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775229934; c=relaxed/simple;
	bh=CdpzQcN+PDotI9FsJJ6KrUabgC3USXq46UCrVVVI/Mw=;
	h=To:Subject:From:Message-Id:Date; b=Dc8kHuf7oYyQMQTrz6HOdHRIS08+6Qp/ZoeezaY5FvvSmS+ZPPvdebTmZ5l63IbuDH2RwQs45AobkVxeiTtvbfsgUgZvXNJEWKF0lP2t10XuG7+rfE9y/In+NEkxkvQwOqVjBxx+NyiY4Wdmsjq8oeQf7B7hBcHvOXNXFzn2eH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuV+a2EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuV+a2EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2B6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775229933;
	bh=CdpzQcN+PDotI9FsJJ6KrUabgC3USXq46UCrVVVI/Mw=;
	h=To:Subject:From:Date:From;
	b=iuV+a2EFc0HZh33fsb9qpT1Dckq1Qjk6Ax+oy1DQwjWcIqinNiMcSg9DAIpIcBJhn
	 L6XNWmM0KTPJVU9JuYayFYNc4NuXfyWFPfA4m/4l21kynG3iF71p9Vx8R99OZD29hA
	 ea6jEuS2k1M1LMNJcqmBrWqwoY2FQoKPjAyl1sdfJlKd35pS9Y3eaucRZcKxxPT4iR
	 y3g9uwN+vjKtF0vHSqJoW+PrGcxUNAVeyNZNonnA6LEbHMZE5nIWEiRVtP3uFDNjyA
	 E8mW1M2mX/Bfcp8QCgfn/DYy/6GxGAaUZm2P+M2mALh5O9VRz0TqwJEc5g3Nm00YD6
	 wpRspKvmmBhYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABD5E85367
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522993369.26813.1262589540886679036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72c10cdab12ff704742534e0f85da05f54b7849dd7c5db4b9b65d4de86f85a5
Date: Fri, 03 Apr 2026 15:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775229933

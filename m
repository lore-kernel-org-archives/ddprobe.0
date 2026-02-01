Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DFD274B5C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769982234; cv=none; b=Bk00QylWy9tA+jqYHRz5vO5p0XzFdo5aajhfo8jv+q+egSkHeK/vGPGzYrKMGNb7aUpTTNXxLwrk2FV+aQSKuob7tFcQcLq5gEbmA8ofPbNzYkoB6qlHwIEg22vluJbtp7AOIkKHy1S7fFj4dz1HSMQE5/L3UYOAyhhCtIAfLes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769982234; c=relaxed/simple;
	bh=mE74e4tgokp1dm600fT+G9ZJ2WNVQCLys+rtKWy5XiE=;
	h=To:Subject:From:Message-Id:Date; b=a27479/YV43T/amwHDRygz8Ojj0UAvFKqcNzm2U+cmwEKGDM4NSAF5V2P2q6LqjdinMgA/jYQ2hdIbReTereIG3papLYZAr+HUmC+KJ8RaSanWVxt43u1lciLacsUWE0vr8ysYaaYRjaTyMnffBW8N0yndWZSiHsSetNToTb0ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alddY89y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alddY89y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED73C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769982233;
	bh=mE74e4tgokp1dm600fT+G9ZJ2WNVQCLys+rtKWy5XiE=;
	h=To:Subject:From:Date:From;
	b=alddY89ytUel0YXmwqj/DvBXn1LdZDA/qSSDqYa4Q8gZzV/dC+m053GINZox2cjRL
	 ggTK7cZdco5y/jq9aXq6ExvTlCUAT47RalSEPvQjs/TwRLEE46YDKpS0z/CIWslwcu
	 wIX+FFJ48w+Z8by4eSUmTaeNyG5URsewK42VVFPhisKx5DgknrhW/WYC/jZC4j+RAQ
	 mWdPLQq9cD4JMRw7IP5Y9NEVb6HhLwry7ME6TyyFFb4QJemzxswEV4U1W097dvnmvR
	 nn85zvsVISnpNXqWVOKC0umWKUCnB3fMkPvbe8EOXTBByZsMB+7oz7I5jQt/KA1srP
	 jaoiPhITtqK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A66E6529E
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998223358.21840.14706323174019891798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f4947d9dda7f380be769127d41f3b4091b080edcda841262c9d723a12904c1
Date: Sun, 01 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769982233

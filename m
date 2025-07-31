Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D500223ABB7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753956593; cv=none; b=rHoBIPHn70Zzzy9baKTqLuGvIe4brCjtrc+DdyUzQUvK9gjlaRT3Z8SKqvNQlZAsQKq148/G4yVCeqpKQ1eY7FIXP1/FuEbAaYhXDmi3h9UrwfRlqUSax8l4zlKynSiuHiKf1m5Nh2f+tNFpEdwEzTn7M8PbG6pXSJTOahbgGiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753956593; c=relaxed/simple;
	bh=k43ofN5ESxqGKkfkcLeT0UXKEzo1W/vqYVTz5xEzuZg=;
	h=To:Subject:From:Message-Id:Date; b=SzrG50Fox6O3dK4X+dTLmYU2SxJYSAqCJuf4xMwbsw8RY3OBuW2QTc9J9RMkoQg3A/8CX01o1cxxy+vGlUoKdM/CrYFnJCpjsvsBp7iZodHQR93jmsHl3EA2qzGVksUhly/xJAmcS7blD5vrhyVesVYPie1BwYK8q3EHAsLKyjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpS7MgUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpS7MgUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA4C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753956593;
	bh=k43ofN5ESxqGKkfkcLeT0UXKEzo1W/vqYVTz5xEzuZg=;
	h=To:Subject:From:Date:From;
	b=mpS7MgUf6zQFErNXq9MeciGl2kVhCFy7xtqqcsm+XDOWB3UeWStGkF3Ncqi/pSeCZ
	 jYXPm+K06bdiZxyeZUgdnbEgD0Ji6RohWZSvrOHTczxNKUKiaS1zo1mAYeBVAh+zEs
	 kexusljIgvHAV85nheKRICcqJ6R6h/JHwilcf7h7sROovqF8s1UaRTSZists7iIubH
	 lchuDRoMwO9cvYbxy6gaNH/5g8VoHSeEpMwK8XG6XeCZRO7ItlkgKvwH2K8Icb3CAl
	 667WuJCu0ZdOoa859hqmyYRHmU01dfDOmtTCmZpzhRLwjBjNqJ0bnLUgYBGEAcH9uL
	 dhR5i19eCwf+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B7C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395659357.28950.7215399878291129455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009992cde93dc28bc5a494c6147900aa593f2954a5c2a3198403f89037332fb5
Date: Thu, 31 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753956593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0A333EC
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778374114; cv=none; b=Ynh3N6cU2rMjTP2DQ/cOneCxGcPdkFYWI8N/Rtewh8pxBnlANuLdL/hvDzj1d/t8Sg+quef4iUdppLGhVaOBJ4bVmsYRxGqsQ83MJDdx1M4fMM/cwAaimaY++2Ir04ls+hRTiQUrqVG1/0KXEJDiN5+wHWSnEYHEsZGbv0TO/d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778374114; c=relaxed/simple;
	bh=xNqq/ICqEI2dz3LgRKJ1Hn8jDAl/It+lcOzFWf3CxU4=;
	h=To:Subject:From:Message-Id:Date; b=JE7XBQNMEd5B05sclwCx3MWyI5D8rDW1G7jb9ObpxHILNKFb0lxA3RDNGKFRgRvaQuzi3LRMEwgCdaTTZBSLQp57G23PZjnSewxsCs2aen6Iryj5vhjF6LODKpjl61PCRS8FWY52CvFFKn5cAGio/x+LtIrOpLJrARSNKOkEI88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A64qDKtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A64qDKtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3157FC2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778374114;
	bh=xNqq/ICqEI2dz3LgRKJ1Hn8jDAl/It+lcOzFWf3CxU4=;
	h=To:Subject:From:Date:From;
	b=A64qDKtIWZe+koclvlCuospOz9aA3gr31avfIpAiKPTJnpuap+Exh/gmYZv1SYrXi
	 4qI/pgywQVupApmIhZd+sVxbEwEgrD/pLw88kg2kE2og32y4BujnSRvHeGJlR6sNXY
	 B5Q/D1dG5qU3KM+lNeKm7Wjr64AotNTjJ4TgKHYsgfH2y2XTpNz+semAt35s84xf+w
	 jZAvQzSk5dW9m78l21aH32yzpJNMV9a37Yy79HbrN8wYrULkWMQfgAeK++CqOG/h62
	 b2lpqrVyYGrx0SROcT58NmdwVY+yy3ijmAWeLkA2SzJRcCWonX8QnLQ14DjhgITm65
	 XYQMQEcpJh0kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE73CCD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837411393.8733.11202046142754507486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a50b25076d8187ca75688e515ffe7bce5968ad065f9d0d41f00ac309d5795d
Date: Sun, 10 May 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778374113

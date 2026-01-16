Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549B57260D
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768604034; cv=none; b=sWiyJITcqxGa6deTk7I3gG6iXHDUtp2FYzthh9nhgWsrx9UTefY4wqiy5a4J4NlPToq0MIWueR9dSccdN+wEGGY+u59MQ4arO3xYysQbjDMkR8y0zcle3FdHNR+66L/TQZzz8x5KmO/q0Jiprq0y8FcqEzb/BjInOI7JVZD/AjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768604034; c=relaxed/simple;
	bh=BnV+IzT5fi55kU980v5D8C3VhMTAI+aXib7RXsOvB9w=;
	h=To:Subject:From:Message-Id:Date; b=J2vrfHZxOKeCV7/E6JQGZHG6EG5csyv8iYIfXH7/wNidlYnv6Iouz78orqfpkrJHJzUlPZUF5FE5Be9xSGpZvpobGqlE3v9CKsWVMZ928o4tHsJIBdLOQMcyKrK89nZZ6W0EfGLqGUsM/hqP658XFZyOgOPQcG/yYQkhv6BHNZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/GFuMC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/GFuMC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E50C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768604033;
	bh=BnV+IzT5fi55kU980v5D8C3VhMTAI+aXib7RXsOvB9w=;
	h=To:Subject:From:Date:From;
	b=e/GFuMC0KAc6dvX07fUvFbP8cEB0M3yCWuhfcT+81AiHv+a0kPcOMczYW/4u1Z6xo
	 1K5G/IdFg2Q4NLLl2OSkv1fsXg1z786Nuziq3hRTO/LJ5Lwx4lJPbBJNA4rAqNaKsV
	 SSxY6K250NBXv3g7VbBVQbfBaSh1Ik5I+OtzNiCciKvwsXDA6u/FFlJU0tyo8D1Sb4
	 OGo56D8dwXTudg7XpmdFyjaFQX4O3kPlnh9raqgxkn6X+kgv8cq834WWNLTwXin1+3
	 zkq2Nque2t0TVfVZbNkiMMTAyzMkUi5C2c8s1seH5ESpFt8PqaWpYd4wZ0+cSqa6q0
	 9aurTsVpviMCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1CC98302
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860403357.14284.13559052980318169187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e222daf3ed3e043171f4faee626b61dc217469b99685be46b95c87d8661d7a4
Date: Fri, 16 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768604033

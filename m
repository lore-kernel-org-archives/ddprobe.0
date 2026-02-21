Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C9132E6B1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771692293; cv=none; b=Qepqak0xj1a934zOeW1T6wEtm3qkO+81TN+7cT88kFVFSjNxNKpHx63s6HYYiXoe3ldEAJrUtT60ij/fnWyYVaD93dJcx5XJfMUP4iJCJjJsgjZSaIsIEwMA+xpp0KzUyBsYvi8SWLOl5hBRqwGiXlf7R++3zmAssfNkyE7Se4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771692293; c=relaxed/simple;
	bh=JbLMrdkIDZB69Ww/LnNNtwvGDVuiREgpEdF9DwC4B8M=;
	h=To:Subject:From:Message-Id:Date; b=oP6plnEsL4YNaQXIl1GyQFW6BFJkcikM+xmFQxPMwyl4dU2nU6JmlTmvzLd2UXeZ3WimJPNsy8ShrKcY95G3wnQ94AZaDxco2MM9akFaCH9SCF0v4SwgH0uS76vssazri3I9ExsN8+R8eu2dMcep1mnpd8xuat/B+vbp8G65LTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5cY1xm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5cY1xm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED8C19424
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771692293;
	bh=JbLMrdkIDZB69Ww/LnNNtwvGDVuiREgpEdF9DwC4B8M=;
	h=To:Subject:From:Date:From;
	b=G5cY1xm/DjmuFwYHYHIbnCTQ32j4zr2ktxoS7YTYVeUd/IWOpHrPqMeBHwqxLmEOB
	 WdydUCM+dU9eRZystuBnbOiA0CCw1NmPUru46mMEbYa1eZJxtygpvTzH0AbMzdGh8q
	 07k9VKfu2E5OsFqnsE8JsebDh2UQ79ljENQtlsRUFL1Im6VttIFc/slDxeX5Pa/kR8
	 xMcrzF+hUtNUQcuupBj2oTnc/MdkRcC9I6EILankrrG/ziPip2NhAZR2edpwT1B6of
	 MXxSFB0avvVRuKraQERMjOfAzOixMQTTWTrkt6Iwrk/aHyoOdpXH2CjyFiPLJzDIx3
	 J9IZ8qV5W5+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9483CC5CFE6
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169229358.16255.1515385862872581570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7443732ef84a023edf8786bdad388b2cf37ff589f19d6795b4a30d375dde14b7
Date: Sat, 21 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771692293

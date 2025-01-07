Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526141E3786
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736243154; cv=none; b=JjMYVeBXTOIfaMndvQspTUbA6qZyPFRJhVkxCP47UaO7DR9GDCigFBdRwYtV34RKoThrJ0WAp6+2TbncDFT+6wwR2/cpb614o3xeXF2zR7svhBleJeHr3pyKV6y60D9DuXiMIMLK4qyIHUFjGKjU8C5dcqiksWNZVviU6pf5lVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736243154; c=relaxed/simple;
	bh=tdLbYfsabD6Bm3+a6rTyiqsyXAKRHWOzcqMo8KapMBA=;
	h=To:Subject:From:Message-Id:Date; b=TceOMEX8lWb4j88AuaNVMhIkwhodzQ7uGJsXCxMch59xU9lu1G0qlpEPiZ8Z2jcZQ0PjkkXj/vqXY0h03du8rWKRXtBkJMV1sfAX7U6QmVzbVvMSqFu900InxbtETdgV+Zpn8qd6j0YkO4ZQ42ZM9mSwXZfUf9cJWQ0mYqau2Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+NeCPuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+NeCPuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2764C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736243153;
	bh=tdLbYfsabD6Bm3+a6rTyiqsyXAKRHWOzcqMo8KapMBA=;
	h=To:Subject:From:Date:From;
	b=H+NeCPuWnWnHfPDeGo1wm1Me1IlzxT76JSs+NR3LJR5CSb3cTVy8ulFjM+HRCppb1
	 jUSJYMOKLWrQm+7fW5PZHt8q+qBr+a4eWBAFgkFawiyUwsf9UgVIdcMc0ODCWOpAaa
	 JiPJhow7sPmmwxshv9i3Xwr16X8Uq1f0u3tq8AGXh6Ko+4gijiYBsmB+WJNeaEGLPV
	 O2z89P+AWVor4rBxE66fCizXDNvqd9hqPrA7VMw51DjQIxdIjAronDuW3Rvsn5habQ
	 ZrtLZ5C2H8A0D05AnqrGlVHnD9zmCd//YsD+XVAuQZVoLOt5xYOL5Pf/RGFXhl4bBM
	 /ALCli9Ggj3gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F02E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624315361.6819.2239460147934734927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404d5187c0385c841c3be232b69dc380386bc04db315640925f0157186b96283
Date: Tue, 07 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736243153

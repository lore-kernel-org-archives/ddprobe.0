Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5421399364
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783530514; cv=none; b=aC9ByDloZjfusUAERYfdSf15dV7kBMMVI79ifQ3K6ePR8OqRBOluu8s/T0geTYlMYOcRroS8OzRbcOpa1jz4//1xHMdyu+S7pTkIP8r5OnaX86KgcEHMNbIsQjxHOPmoHYazWF/WnxjetvmdlC7/mN/NsjJnYpUKJ4wJ2Fpradg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783530514; c=relaxed/simple;
	bh=a7OMKcHKWbB2L4xiM70+dgZJFkxjYl2X57xkW+OuEzI=;
	h=To:Subject:From:Message-Id:Date; b=KRIBACbdmZECvgwmVpYu0m3bUOVZO/M77AmOoFZQbt5CmqB1+13Pw5COzEaSaLwWg6dw68FkOOrfmR2DPbQaYQto6Dh8sIwUyQtP0LoQYhlpdS+kNZCKq7u0MvJL8reGT5f2pyT0eJq+dZAeRJx23whr/ZdINtAtHwU5eW/wusA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLAk1OBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLAk1OBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03C3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783530513;
	bh=a7OMKcHKWbB2L4xiM70+dgZJFkxjYl2X57xkW+OuEzI=;
	h=To:Subject:From:Date:From;
	b=QLAk1OBWdHflLePU3AxBxWkxiwC79VWRgFcxpHm6WMWktb6lKpJsXQjNaXnVtDPjs
	 OUTSQG5jJx24gCSZ5TPxr5tONY11MZpU2okgOivXQ6KAcK7B9PWhXEUCcJ69GwaE7o
	 btaH08chrFtVWxJS9w54NHclJc417QAxGw2jPVkVkBpeCHVcyqwL7KGybTSbFr4vie
	 MAVD4QkvijoDWqZSdJ15vp/fYuLaFk47LlAXn+dS1AfKaabjz8ld9QPb2YprBVFIJo
	 dbHyt50laB9dXfP175mkAlF5T8IMAApE/YPAy4QTpT4IH15z9A8xfJ8Sy6hVlqUUVD
	 /m1gIM/BKUiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBECC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353051369.32383.2368605599069671474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3dcd1cbb5b2e6e8ca9217fca7b38fe479d74a321fbc1b2fd8ae55d796426db
Date: Wed, 08 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783530513

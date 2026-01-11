Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AB129AAF8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768153434; cv=none; b=jbN/JALxqaF0sCkLM7j26wWK7pvRjodxv0GfUAGOc8KPQ1inhJNE/uzMVQgTeTR4+/86M/bGdrXBK1WfUVUAO1gsOEbc05BaDrVkkeQZpBGTtBS9qMu+DdLxzGO5WG3dz2Qfsk3dTiTZ+ekg5APF5gy5Napkqx8G+lYb/wDAck4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768153434; c=relaxed/simple;
	bh=ewjJNp3pHPVMTmcBem/Nnh5aCGbO0ZWcwHQ6v6C0NTo=;
	h=To:Subject:From:Message-Id:Date; b=NMIgrDo27fRQ8BSS5l5WQVZzAPTAcXIEeHz1ugL3WBUeMihnPvjj0cLtEvyB3UgitYf3ck+2/urRS00pEALYS9KtsqPmSQTxnWi4KfCe4OcwgF62A8Nl/btiRuWp5FYNmM1g2l8OAsvHBSeSGMp+fC57yIJPZgHkH0PyfFXJtyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDj4iKMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDj4iKMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99B20C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768153433;
	bh=ewjJNp3pHPVMTmcBem/Nnh5aCGbO0ZWcwHQ6v6C0NTo=;
	h=To:Subject:From:Date:From;
	b=mDj4iKMtzWFtw6XGAC5Jo9q8iWdV7ogmFNhjxlnSoLHJ9MrBJRQABc9WFOfW5INEl
	 K4PkaySpkMLktypOh9mEXyD+z14lhy0ncbls3GVVDrN7PjpE6QqJzfE9WYTyt3hwgZ
	 3FAwas3k7f36fFReoz95zvJdaemiScRo5R3QaQynJ8Ta2WZXowZzB9hoHjENgTAcKt
	 tA+y8pTOUu/hWrefJwOiB7L3KC+3C3blIzMXk3A1F189L6uzO4zwb1/Ict4lalBgr8
	 P3UfkoC3Te57wPTtjJuHAqcr3cp9hPpHP3pPQ4ShZ4p6bXb/+Hua+qXKosJFNmOBSg
	 bbDbKzlj/Cb0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF23D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815343357.11116.3562960108951147304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55de774af4a4f0c52618d1006718d59e466e8db46109d3a95b3e939e807596e
Date: Sun, 11 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768153433

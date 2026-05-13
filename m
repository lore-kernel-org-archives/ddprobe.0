Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B893A9D9F
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778698234; cv=none; b=rqtS1tX/pvxcAX8W7GwkN1unWIgKf7z2znjUQdfVoZIwTD5+92m3gQ3RykNPcpP7kF1xYMRflF9EEigYGepxdN2EVFNhI9HdfP+bgDc1C/tdG2N8XR5KM71WJdn8ojVJ6gwtmjO2jr4sisgfn+ZHMEAP5ppwPoJ/iHIq/zVhXIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778698234; c=relaxed/simple;
	bh=oV8ggDDGGvbQ4v3YiaImbGfKoX0Qis3o1qh7xyUpxYw=;
	h=To:Subject:From:Message-Id:Date; b=p8AovyMr1sZaixxXXh6RFrSoEoPNvMENH/xd7tl1Na36cabMkc0nglMzeZNOfGW6tKw1wc1VqUEJrzc8omFGlkXnG4HPLTzVK8ZIdKX9pMHq2r/ctuyMLEpz70UNjgJL3BgzzuE4K5quBYDKNeddNs1qE24PBLLHVfW0sWzLO50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm+EO2o/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hm+EO2o/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED9EC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778698233;
	bh=oV8ggDDGGvbQ4v3YiaImbGfKoX0Qis3o1qh7xyUpxYw=;
	h=To:Subject:From:Date:From;
	b=hm+EO2o/8wh5PAW5gPn1/8yrkv0xwjAe77iqyQSew3KDxLqelrSCV5FmTcbDyzqNS
	 Emnh0gmAxf2zi3YvgvTxTCxgv/qXhftsYnpSrqWixCTQ7qXLLelTOBZJ58w4M4TTPE
	 7KT05XDy6FkKE9W4c+Q2Y/R1aTXyOzrEew5RSFkef+dz1cOKozj5U6xDGk1V7cSyA2
	 E/RhuOI/CAaa6BclY+IkcwQLl74ow29EAYWFMfjtBCue7fdYm5rEz34/4Ail0Zw4z/
	 7S1YHtfn/mFKOnmyi5kmNTaEwn1pt7033m3OrQSFJlY7T2i3C3kXOx7AbRVyZsIj5I
	 ypbg5trn5Lczw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD615CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869823370.18647.16998300075541624672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff35161a39ae74c59e9a424149d6c6b142c13be38d18c0260c1fbc7e1dc152f1
Date: Wed, 13 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778698233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458BB12CDB0
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723851954; cv=none; b=RcjTBIBZdwbc8BV92Bv3bZLT7S3WrtyZiwjHRRshizr7x9R3nv7co0FqeQlKGpONRkEh7iaR1bkHNYeulGsX5WaW2UL67rCvO4oMIY3fD805QXFXdSaqs1QDz4GHAAiHwERhtF01Bftr3tFaXMi90gebhw9RQPPs5/S+QBCqSFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723851954; c=relaxed/simple;
	bh=puvDYpDv0dLSUMSwlKacJz8nNy/DFPpRrf6NEGpNAzo=;
	h=To:Subject:From:Message-Id:Date; b=uppVjNs8tLbWJ4t9aBrTrkORWMpM6Eb9TfuhPjnWdcaS+5f7nwAqAGhgw0Urhmo2j9wkt7AW/aiy21rrmcic3Oq4GG3QEJHOmzD6nDRtLpHUpGxeQ1WtYJGOYk7cWkseArvmLk+2vxENffLY3IIySjcjvWX1dFhl1otrzNhRVwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir7ltfvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir7ltfvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD81C32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723851953;
	bh=puvDYpDv0dLSUMSwlKacJz8nNy/DFPpRrf6NEGpNAzo=;
	h=To:Subject:From:Date:From;
	b=ir7ltfvAhxqLblCk3gxvO/d/HBUXhtJRj6W07CuuGhlOVHl720k1QAjNhKXJ3PcRE
	 eCckKZdmAlrUwW+Z2YDtDWplvN5VznXnk6zKuDz78YV2WYS0fL+SdmKL+463T3mZSF
	 33zyoC7QK/jPQZTkwv1bHsEma7lq4JE78zoJRChuFotAEpz04/QpJuXIhJasmOXUFp
	 Ikd4LevHa3ZcmcH+A+Vt1v4K2Q5D+IT0wGET3vbEqJSrtcIIcZuvNjOzBznpVOxhSK
	 zjZ473vN7nerUwuACl220yTlseltHMQzP7OOnJDCEkqf7C77PwL1yRkUL+xWYz9DFo
	 qQuq+l3+LUiSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9830DC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385195361.25323.16514699125377051029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d323b27259a46692eb62ff1fc4f6f95a2482e48fab47c19dd9289b721ce82e08
Date: Fri, 16 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723851953

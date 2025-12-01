Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E54921C17D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764616374; cv=none; b=sty74dHR77vE5al2klFl5c0IT8B0zv+yYzEeAfKPMpwoGBc66KaBfa+h06XEcaj7GbPI9bhmSIVQkymhl1M8lemNNvNDP8lfcJ1Wpb3w3JIzTzpKHK35qg0APXCgOnA2z/pLPJUpdey6VggOGYUOXPXCt7hMo/1u70lnxacaowg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764616374; c=relaxed/simple;
	bh=2cRLvNWGV2N3w+rjyPoFFqwcgiOOJjBkWO8FkOKnkmQ=;
	h=To:Subject:From:Message-Id:Date; b=duXxs+mA4q1npk+aW22eLCa+6UUy3mVGc9HXZ/9dn3lCkbq3aolUOYo60/7ms32NhT6AVn1ptaIOq7yxSgzKdo57mkNRt+60dSvKnoA5LTAx3IiCv4ZqYlZ3fme5MYEP2gDn4itezsYdqWkspQtmel7snZgph/4NWuliRxN8qV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWmEZta5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWmEZta5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764616373;
	bh=2cRLvNWGV2N3w+rjyPoFFqwcgiOOJjBkWO8FkOKnkmQ=;
	h=To:Subject:From:Date:From;
	b=EWmEZta5IN4ziFiXJWUn0L2YnF5IJUkbd4+jXagvX2Q+vwIxHT6txEVZPp5eAv0HO
	 Ewv8cL/2LkR94lRkQLLHJiZ+124v2m0An1XOKf7aY276YBMQCvr6VO0VwZvWN84MtE
	 qwMuAqztHhiCoRXOMoXstTY5vJtwUwAtpu8unFrIlnKh0/XB/RZLCmWQC4nhGMw3Kl
	 LDZ3m5O6S7pX1k7K7lf8x/Dfv9HruiJGZrXrraVCfwSzlrp9uidAPPnn9LCeHAIoqX
	 gm+m3pzW6cYREiLtCgalxxSRUM/sq/s5fombygQpECGClosluSbBdu0PdDtpsrHanq
	 si5XBGcXLa7KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95946D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461637358.7382.3749313804207761602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9274fcb00a66de79759dbcf48419249ed0fe7a6c474b72b71f2b93c083532d5
Date: Mon, 01 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764616373

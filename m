Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E809253F11
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756706394; cv=none; b=mOlRaJcG7P2xJpQ+4qo8FulvY9wjxohd1Fo2J+2MXpp8zgs/VBcxtwn05dsfQBWxFsPaMsTBb7EkUrQEdp6+3BxUAbV1ppgDOai0KbOp+sWsesQtE13tRtKYNoUbOPzlzWRcJWDUa9OoL53UH9yqYPWVgYJbh5+W2jB0hpyiPj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756706394; c=relaxed/simple;
	bh=FOTda/jSimH4Aj36rvZ+Az33gXi8Mg/uAemKJsMkFQ4=;
	h=To:Subject:From:Message-Id:Date; b=uRG4rTr8ObRMVJwzhto3jDgdzO6KRe+LCFmrhjqpoy9ylWs6qIf78bf8QWKEfz2k4aBGPb2rLgduA37hibH5SbAyY4MpI8yF2VCO2ll0NIGPRY2t5s1fPhlAaMlRf02hTLYPlyPY+nRcRlM3c6O0hlnBgglW2WXwe31rKFyQse8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFIJxUyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFIJxUyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B069C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756706393;
	bh=FOTda/jSimH4Aj36rvZ+Az33gXi8Mg/uAemKJsMkFQ4=;
	h=To:Subject:From:Date:From;
	b=hFIJxUyknSn+P7SIm2g7aqzSVo5pmPNBNas9oNC08XPNKEiHQgBGW0KQjDQdHB9UA
	 BW3s00iPvp2g33MMYhvst8hBwWkMpqg/qzKLxizDix2qeHV9GNGacZuKOZU3OnK5R/
	 e95fs9jUITkRTxvJy8Sg8GbaHlWNZy5SIGsOZAkrUckJwoqF9KLTKtL4MkUD83d4zs
	 Kptt8TsTjq8AxvlW4G2VC6O8rQ5G0dw8q7ULxt0kkFwLHnlhjKVhie/akCLMy4HE5Z
	 ex2RR4jZV4EZQ47x4wcfAA9fe7QvRQY4WUcKDLMZ/g1DfbVLNevoRys1yic88Yxmmk
	 sZlZ2UL6Coalw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71CCA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670639357.5472.1203673081445076981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f838a623a4ac2382ff8e10ea86ca420b98b3c6e2cc3e4fd6f30843e3b4332a7
Date: Mon, 01 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756706393

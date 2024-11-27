Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BD882D66
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732728954; cv=none; b=dHVdNY61kVQ9gpSX98txFeSzs6cD4bn6wJtQLSP8vvxcpQnZK0HBU9wEN7vUQ4md6J+WA0tfGSzsgrdXAIGM//ofP5SZubcpwePw+0BrZQcR+DU9E3JL3wf5hIe5rRcVFLCtYYHzksCd5Hjs/9g+4rvQFy2lOaDj5M3Z8X+j6QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732728954; c=relaxed/simple;
	bh=RUe47DN+rjx/PD3UThPlM/b6qwr9QSiq6WJOWN2tBrY=;
	h=To:Subject:From:Message-Id:Date; b=m3n74bp8g8xDcy1ik/FleEtryLGh+81sOTYSMBov60tfMmnfsAwZEw4zP0dkn266ZIpVSur2GKnDmJltBydWdN/fwEtCmZWWVcUhjUouIBKLPki4DRtDJvdvfe3irFc2J7R+uLXo15A1s4PaqPKflNmLNwwU24U8SFTZQc0Hojc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dkOCUhZB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dkOCUhZB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B2DC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732728953;
	bh=RUe47DN+rjx/PD3UThPlM/b6qwr9QSiq6WJOWN2tBrY=;
	h=To:Subject:From:Date:From;
	b=dkOCUhZBZU5BBb064y1ArhVSmc5oKsETwh5R0dItMQWQR6bt4UaAbQMk8Gv6UZZph
	 UuLD+Oxf13cwbt24pDSpV4gLDl2k22StB8eAdGhtjFTiKP+QF+Co1zJzGlwhhnvM2v
	 d+LuF/dNGPBGd5r/kACe9FM5ElS1f1s/WRiZ6s9fjpQ2ldMW+a5vLMCWq4yvVFizBl
	 uPADR727Z47y3drxBo0q+K9vP7SDhMKQwRFHZcxbJC9JY4gsfy52J5Zr7ycTPBPyfA
	 2astv+SAO5+hMPwRRvrYzZgjtTOMWEvLh2vnimvRAGt5+L61J4rHwCT1XfOwZKg2eS
	 oWze9KJlibsYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F254D6ACF7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173272895357.11979.17649035992966640851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818995dd2f3169c19a762fe20cd2aff8b14e4d7dab6054f054fefeb6ca921c57
Date: Wed, 27 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732728953

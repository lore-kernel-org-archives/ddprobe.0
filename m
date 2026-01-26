Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AF822A4E1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769410434; cv=none; b=pmJ/Bn3XcPmM71oO5GlxqPrC1BYsKUaRdlXviWRMT4z86yltBAVwIKuSwqGXPV/obBCsQJWzaR2vSeC6L7hVqnx1PRLyDyi9pHRl494fDNwN2mo3uQ3klHUsPAk0qidTf+GZEm1vz/fu4NsS5b31HmYoyQlCmKObFhuHHAaKqBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769410434; c=relaxed/simple;
	bh=oShgjMdillXaAEXeoJVw2eDYgxt97G3e15eDw9GaeFQ=;
	h=To:Subject:From:Message-Id:Date; b=bqtuS+PafozJ/2Eur7nmkJv3ivIdyUF+GeeCmm4+dFwaKneA5xbo1uhuofZnpljkicsKVirQnjJnnnrjJONeQ/pORznC+JYEMC/YkG90vJpz6L9M026yTaQ48hsZ5f2gmQHqDhWezm28cEGUJJ50lG7l2jQGopaNQjgaxH2TGXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DG+TmuOt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DG+TmuOt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38FAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769410433;
	bh=oShgjMdillXaAEXeoJVw2eDYgxt97G3e15eDw9GaeFQ=;
	h=To:Subject:From:Date:From;
	b=DG+TmuOtJvYUnaW1dh/iLaxOzxsCvwXyqoydpXmS/i0i6n77qfIrIkt7yM//NrNjQ
	 PunBxZg/fSMORWLU7Q27YbACEtNtbKZbFBuOupfljRQPWKNzCu06owD0L65rOhNcIs
	 0favT7bXas50KGkR+6rhDvXvATnyhGgW6c5f58o8A1XQhY+kf/XoV1hnWBWWS7DmKu
	 tQKOcv0fPH2g2JpDsds9cljOz8XFH54AoFsHqtofKOUozWdGyl0rdBJlnDzn1zCJ0m
	 Z3/qH3KSTILpmWrELaueQnAjlMHjhZG1SKqfC+JwtMHkuarUy/cuqydTqsFZ5XMzPg
	 mCBPvns+RkRXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9379FC88E59
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941043359.15511.9363232301191871699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a323db8b5c7b46f9c244c2ae867ed88a9dec39a3c6a2743751330b6003a8b7
Date: Mon, 26 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769410433

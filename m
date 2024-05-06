Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5651315665A
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715016143; cv=none; b=rkLMu1A55KJe11eSJXY7r/I1y2uKAiAJevcpozf5TiG8pMcHtjsajUsCJy5uQtPzePf48mdudl7qjPqRPOoysc6d63KUrjfs3wIfk5Zk0b6vjF49/gDrSbDNIbD28t6E5nVJ7xNYNaL8CVs+Ia3RrDnrXJWBAXF6rWjXJohiP38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715016143; c=relaxed/simple;
	bh=bYuqr5/a9eQIe0iQ213d02wASNeSRYpj4JT1OmvJcMY=;
	h=To:Subject:From:Message-Id:Date; b=XjXh/seA9Lzfu5/srw4hvalG37LzZbnwwCdXrWUgyUxO+f3xIO9zxdx8QO8PVGYUT/cIWuJ1MsMHh96z/yecEE873c0Myf+RpPUyOOGfne6Je1x0mcYXKWU3JF/erZh0uAMgOEdoPE6is2OyEGys14g2kXQv04Wr2vKJdttOKCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JseuHJmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JseuHJmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E504BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715016142;
	bh=bYuqr5/a9eQIe0iQ213d02wASNeSRYpj4JT1OmvJcMY=;
	h=To:Subject:From:Date:From;
	b=JseuHJmo/jlxhieNnzN+pXUDHs62OnDYkc/C+Dvi/MvkJ1Vgt6MIFCbJnPJueszBy
	 YVMkmFLqkJGfEXogL7x/Ta4QKdl1l+bqS5+HQQuZscBc3HCCuMopUqYeF/EuJkjfA7
	 Xe3N9r3KYz/N2cZq6S23zThhA2U7Tjo/Qf7clPxYBhteERmJxhtPMnzETyUBInh0vv
	 WNJFrNI/pdiWdUxCXMN1a9EfGHCqPiFGl8hDc8kjCcIks3LdEIDgRprqDi5zUSvkYY
	 49DAPBhcHpQ+mUB75ECGyXT3JAffZORMCavGLM8TyErqYSowPl36+b5yOXrbyCLo1r
	 c0aa/D1FX+JLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E1DC25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 17:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171501614281.10146.9309989643551583942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d97291fd6853fa344e7443d8d53bb569cba7b18b2742ffb377429a3332eac8
Date: Mon, 06 May 2024 17:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715016142

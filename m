Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2896517993
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755029394; cv=none; b=je0Y+xJSQoPzLFMi3djeOe0lRCifkcUmvOSujTlJjKZBNq7L8xbL7UZr1sjtsHsoLdhE9T/WQtA766rCKhqhFlTzi2RMroVALKP0mSwd+dK1bRbV2S+OP6ZBQZGI2SJzj/prwle/gGgoIlAMVkTHgWul+YpnQ7vm8S8FB4RX3Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755029394; c=relaxed/simple;
	bh=afyrLsQ/tFtAXLKUhtGQQlmIYS5295HYZuYApJxwSjI=;
	h=To:Subject:From:Message-Id:Date; b=t4ERyN5hznTJXbzTPyIkjmFuYS1xk4jVG6TO2i27bHVQhWQg6bN+wuE+PiiSsRYpHvRL6wVkGOmgMkeiHQOYLUK5mEEViFiLuvxDfxucw8neBe4m06euGOS7qLeh7TZvvZiN2dxG/JS+QA+/IXglPT/Ac62Vk0rDyU1og0+fJ8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTVui5ek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTVui5ek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A2BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755029393;
	bh=afyrLsQ/tFtAXLKUhtGQQlmIYS5295HYZuYApJxwSjI=;
	h=To:Subject:From:Date:From;
	b=mTVui5ektF8aiD7tvMlnl8ktvxqVasriWe5/onrzGa8Qjsj2JIC4cajH1/FSU4AIZ
	 UKbQ+IfcpGyAthrYLSMA2Bq9ctVoEECk95daXEuvJsSIIa24oGVpPJPqwdLyBVs+2f
	 5g2oIs8wXRgvllydQhDiE0cmnEtJjeHN5/bMGvh6v9HSmfjof2inzojZ9kAvRCDWKr
	 ODSqATQhCTBNe1c7YnPBmGkGZggpr4araEbaVSeKU7D8GlKpJR+QvlWLrRmY0ttxMg
	 EW1m+lxt1fhdwrCSs5M4DIoyzTY+vHXluh5rAeZmnS6wJQfZmtPO6dEPxw7XQmPe2d
	 zb8rsHdEyUMvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9408ACA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502939357.12475.7215884920355134993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf968725c427f30c47f38df59d95cdddd8864eb2caeccb6a5d396d7ce534cf7
Date: Tue, 12 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755029393

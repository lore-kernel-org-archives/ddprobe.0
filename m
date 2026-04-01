Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A9636EAAE
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775042133; cv=none; b=DiAd+chiHjAvWXqX3v34M61SE4JUK+V+A2yw3NQVfBPU69nXMW0KfDKUzKj3nTTKZ3sWbaoUnM3hUn+2fCT4s6TiSjV8cKYq+e/2MpNTwJHT3h4iu8eM+QbXDp2suvWfg8cLZwu/fzlyofUDIUqtQN9vDWLMv1ZPoCRoBpkCvhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775042133; c=relaxed/simple;
	bh=PbxbA8sKJVqjCGU0efTbSerwv+6zccITf9NGpujCtEs=;
	h=To:Subject:From:Message-Id:Date; b=tqhrIH4cvbavRH3qctHG8obBtat+Q3r2rRexsl9sqQSaW564fZgazANmU73HnnknNPjyai0ELFYa8IxasGF3dVei1RshoLRJ0I8KxAaycvflwmwuDzwNUyp4RS+E0HH2sppveP9ta9pe0mvxQqcR1r92/a4sOrtOd12YkNibOXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0IP2lfd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0IP2lfd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4E6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775042133;
	bh=PbxbA8sKJVqjCGU0efTbSerwv+6zccITf9NGpujCtEs=;
	h=To:Subject:From:Date:From;
	b=J0IP2lfdYDDI7ctD9Pn51k+8UoMA2dAw+bps9hYzpgYcPqWcGUh+oYcvX+6OnCnxK
	 4LLFCccKfosG4Ck7DN5MWaWtkW6sR5IZGahA7RHv3Yj/wh523GrkCqBMeJ9UW9zI6g
	 KcSsO9j8jAi3ZIceXrFevHGqVUAftBlf/ztnlau3g6P4yPYRFQwiRsK/1M+7vwdaae
	 tjyb02SfkPcf4JLTRbUPtmS6A8/gD7JJulWRneIOi+SkIWwa9AqHdDplFueOxAw+P/
	 9e41B9vovwdsyUOMzlert2fPUyLJ3HjqnR3hKH45m0pLZRyzfg1IT5eyy7sGC3TcfQ
	 vXlm36w0JtwGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD8D35162
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504213369.6722.17364688325115639566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ec1c3806300c5a2c9a5428d54836d32256d9bcc2a26180152d9f48e9ed5b3e
Date: Wed, 01 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775042133

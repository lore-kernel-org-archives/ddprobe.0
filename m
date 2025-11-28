Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151832D3EDE
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764349974; cv=none; b=KCb4IohEGat0nuffXvKl32TFgTzr6KmQy+LZesjFmim4V1rtrNBJsTcbgnn8tiu6Pa8ft4HwCzy3vxy7K3PHCCXjeUXSsJHxfk0B51q4s3m5Mu5ZYlHhA94IfU3wQuSWmml2ctxF1VfYQqMpr4E+Hn4C+Sq0KEMOv5bJsv10tPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764349974; c=relaxed/simple;
	bh=ef7LGXJk4FlkTQoYhdeWS5z8grsC1vPeGrmmAlfgUj4=;
	h=To:Subject:From:Message-Id:Date; b=TmQupWE8o+frhkR+ioEWw0YoCDGAJqiMAVGbW5KTzqd4j+GTnMiSIJr5RVhM70gutmdoRNXecQaKwCxiRaSn+xzW+jl6lYV49OZdo8q9DBggNzVoLqXb4d2CITxVuzYkfD6XCCawlbyGId0eb2MQH4lIu5EY9Qr+kthM7VCND+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUnLDF3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUnLDF3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD14C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764349973;
	bh=ef7LGXJk4FlkTQoYhdeWS5z8grsC1vPeGrmmAlfgUj4=;
	h=To:Subject:From:Date:From;
	b=uUnLDF3nNRGcd5LV5LLZbV2P/YyhiYOQYvNSM2KctLAAvWL9T2h5HiQrT21djl8uj
	 jRFO8v7+bRjSyneGV3w7zAqX5YNRMHHGLvvz3yBkk1zl8KzacTbr/gU/rRk48BJiMd
	 9UTtT1JSAzX6JaP+8vdLpsa343UWgLhMSDgYt1/LM9Os8/8Ib5z0a5r8vV0+r6S9v6
	 J6lX4RUTc4eN9lI1TlS//2fShH6Ph8lJxdVY3cT9AQq4q8ZnMC0feeeuOMswFCFp8r
	 tHfMhQMF/2gCAyf/V4r2dYX/yquJHT3n+jUg24lV2r1AxQXUQL4aVV/uZNORlwWqgP
	 isC1atqgfkvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A3ED116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434997358.26951.5029008809506850433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e685d81c0c4ba0da083733f0f13d0ca34a10e1d0977d8a5befcd8342173e1201
Date: Fri, 28 Nov 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764349973

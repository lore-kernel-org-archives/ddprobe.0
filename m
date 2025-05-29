Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F10921B9C4
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748509794; cv=none; b=adxcz/phWOh2PoaFtPtRg9lzdzJXgivujyronv39hRfL3g7yYrLTlLOiWR0yaOrs1EBH+6PIrOsfVAtlW+7q0fSwo3xTEz4LWYfdxNLLK4QeWAgZ4IUOddwZXcYw7B0SXX3TJNF3F5ynYTJBkqjngxMwWudzG0MaB+aNOTUYxms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748509794; c=relaxed/simple;
	bh=pB3hFgq7Q5/KhxhsvtekZTJaSyioGWjtxldPzU6gDoE=;
	h=To:Subject:From:Message-Id:Date; b=dTIwz+l2SO7GpYGqfpEshWaIkCJZQG124Hhlq7mSxILEPx3hWWOR3cpardZ9/6fzRmsZIPntwFTUtL0jmIEF+6GLt+y3KDInJFWUp9ysoaS6aurG57zsLn0cujx3PuG2FtX+Oo/EOom64QfIs4EM3FkVTfG8VtcUCd6YmpKPXQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/Q660lU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/Q660lU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6546C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748509793;
	bh=pB3hFgq7Q5/KhxhsvtekZTJaSyioGWjtxldPzU6gDoE=;
	h=To:Subject:From:Date:From;
	b=C/Q660lUCM04gRBGFxu5x+poQDSVNj0lq2f+23LylXLJYcZ9ovgNVcrGQoUbAexpK
	 SDxRo/26fm0Z0CdeqE7ZF1AM1MCaoXIZymRx186dS6EQSetq27w9L52yB/Zh/tVrMF
	 V4YVZc6MQCRW83FWKEHkAScG2IEa5RKuB7iosMwblyqm3WUsPrFQLlvGKKJAs+ee7r
	 gkP7iMtdDFc4spVH8y2sW/WMhfssIJrAeycQDRFrB0PTnQPmohFcGmLk4pR2apt6rU
	 +lyyV2xN9yolSkrRHDrZ9sgHpZJ9FbLfzAGq7QKPR1HIy+LmGQlFfdhrHNLtkhvUZE
	 kZ0SAizbw8Hzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9360DC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850979359.20426.17397064745578341202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07fb0423c2c9f04c0781242eede55aaef302d5ecfe0e6542cc44cf63d28147cd
Date: Thu, 29 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748509793

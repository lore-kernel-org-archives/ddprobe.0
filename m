Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF96101EC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716393203; cv=none; b=OcBVK09uDYr3Y+IhpFnkutIURXIWtXcU9UDqEyI282N7L8HpreHPEqwTpAxqqXgqmhgOgsNljExkDNLh6yo/Gin7ftpDt7UshsPn68OEmH/GdO0LmY8IdiId0CcEWkBk19mMZRuHScx6IlLzER+mNBfa/v7TIuc8er2gebK6/qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716393203; c=relaxed/simple;
	bh=caqQF8Vg8Qeagvf/fM9rX/G+PnNvR1C/nKcP3M/q74g=;
	h=To:Subject:From:Message-Id:Date; b=aLhyPwJ28YRpCsL5AO62h/i9QpQ6pOuGgaDHMBUJL4IbCf0Ny978vbrh3kc0DxUXcM7T8IEt1oMIwnCHIKSzsvAbcH4T9mPgKhv+IjKBayVI3EXs8en3OTpfWEhpyCMB2JVmQGDARiG4Wi5A2ZgG/M3cvRey3QMIvhJdxg/5q7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkwuyR9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkwuyR9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8409C32789
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716393202;
	bh=caqQF8Vg8Qeagvf/fM9rX/G+PnNvR1C/nKcP3M/q74g=;
	h=To:Subject:From:Date:From;
	b=YkwuyR9wH81/BQlky0RaYZ4sJmu9JbrjnNYFH/ZN8ZqptbPTeWHfv5bnKCvdxPd8X
	 svSHHtsZ5LTLNXOIDVKm52V94w9AOay6WQxVF8vqFc8o3YbzEXHxewadXJp36biT8S
	 nTu42WLCFonjACre94KenbPQOw/jOfLCBfXCPJl0SzBNAsMF82E6e5cX/rd53jj1Ys
	 gOm+p280jxuSsZyVmFXAQth2p01Kogmt3d+NVKcNLFaHWdlTAx2KD4ScwbL9MMOxk1
	 ZnnP/W2I9wxRBOz+ptqaD0l9OOnLMKnDfHnR5REkZ88kwyQTebP9E0Gsn2yYsNHQh3
	 ZGLVEfU02IR6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C181EC25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 15:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171639320278.2593.8053264735244919304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae017ed2b69b34cd4ab3286ae3b8db6a88acc463faf7d212ccaec10f029488f
Date: Wed, 22 May 2024 15:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716393202

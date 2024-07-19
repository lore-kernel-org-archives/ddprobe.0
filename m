Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADC32746B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721412354; cv=none; b=sfBxKv7qI0d81efQ+S4okLiDe1/YN8QMpTR0Vm99Z+6YMa1nKWZKoClihSph9UV6tKuxe7fBU/y3QKVRsz72m/yjzzxVc7AJjHf/99Fq/IAgNf8FuPBZDM2KAcYju4RxLE/RvF+yVjozeEPMC0gVxR6oZKCq2n6oMLD/9Hzw2Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721412354; c=relaxed/simple;
	bh=Xw0XRR6+RzGd4Ve1FRLMYekgHVfdGtzGN+oQydCOyes=;
	h=To:Subject:From:Message-Id:Date; b=BMtd1CbstyCuEHJPANQPhlYhWtxWwTWHKLqDIlCMnTl0goRikC0LCQtIEXGbv2DagZ2o66Q9nNaCkMoQ9ACsh1YKNh45rf9jQwPRhDtGq7nPAzsW7tovJplaB9ONfH01Ed+GN9NA1h4Mx+fOvtkpZviKgQsTNPzYIFqhf9hQhwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbuSzZFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbuSzZFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A439DC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721412353;
	bh=Xw0XRR6+RzGd4Ve1FRLMYekgHVfdGtzGN+oQydCOyes=;
	h=To:Subject:From:Date:From;
	b=XbuSzZFuk5+GMFb4a22f+rvY1bhhVsw6gzqFi59xbL/54LIV6k4q9FHUeQTp4M5zE
	 EE+rSr+gNbKHySComYHFXhbCSzcAsPYl8xXLRK4cI4bjF8woCx7mLzL0123EyZ2b3Z
	 KvZZdxxYP12Gk40zoA7qm2/nsyrtash42hN/Q7RZlWmRcdcyh4ia4qnEQS96rEjvH/
	 hmZucgHliZs5PdEYfeKN+hPCdCU1R9xb3RIPhpkJVY5u1hirNEsghSL11DVFMVPHjC
	 v7QzaTMVGzd8IP6LeQeN4zDNgM8f7yZQhwewW550q5dgTbogVTfQI6beGm3kZX9x70
	 2F20mmUYDGBrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94930C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141235360.17459.12197602728587470170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0588038348282b2838af224260297d655fd3800ae1609c2c57ef4d8c2dba379
Date: Fri, 19 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721412353

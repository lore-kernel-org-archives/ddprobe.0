Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9FD4C66
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714528343; cv=none; b=CrGWxsC66MRsh5MiSaW7Xj1STcqdgjFAVgdCfX8ivNbzXgjcZJQmz2wgKmr1UdtPWMQsTg5UvIwfGmmP6JJj8YTrSvV/eKd/9aUJnz4tw3gUbpVSockwxVlnxsYy8g2Bxc0PgOuaSmIwi9Bc7W1aWG/r9bj1WirafRRiyPPmuMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714528343; c=relaxed/simple;
	bh=CeA2zRKESNn9wLc8TAe5YGMH+4FI/nbZ6hv6/fgThw8=;
	h=To:Subject:From:Message-Id:Date; b=WQq9L1HF1jBSePhU7Vii6i2ljB96+0OS5qW1+YNsOACT678t6/O6RNOZOXxacoQNthHGTM9B+wnpR8MPA/qfDGGwyfjpiVK4gyD6DGU7U+OIyanhGEAsz5LFsyES83p/uYDr4C2oEvWLR9UNeakA65h1lWVjt2W/wuY5CNZLQBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1FTGFgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1FTGFgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE18FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714528342;
	bh=CeA2zRKESNn9wLc8TAe5YGMH+4FI/nbZ6hv6/fgThw8=;
	h=To:Subject:From:Date:From;
	b=l1FTGFgkORr+/lD96xwlIr7nQtJbMWySC5JuEyCuLpi8tBG+GtvS5NBxhls2pGyxX
	 pscZv+umFrRbYA4yzIvluHCH+nKvTDfT8O5MJCcMESKkHxGzUa0LS2ZOsQKQkL1xd0
	 Uq9Lsed5nFMJahm1g/aaSXAdomQ2AqQddQfWKaQxhh3p7Pw6trgSf52WE9gywBBlZt
	 W/5xU64+r36kAhWfA1OYdGog6BUXVDLDFiGTI7hBmXHkdZdPGT6HXIHLfh5MKv7Pa3
	 SE14ETNyz1ClS6PTWWZuwDxOeFI2+BRT8B1XPkrPEyQpAjL49xzFIKH8jMz3XOIqXo
	 HdoC9m1YYR3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA2FC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452834279.8600.7558078102965238187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217ccef67dd3655a389c61ed783911895490b559a60c6bbf4db738ff8a947b18
Date: Wed, 01 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714528342

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB1D4F20C
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720286783; cv=none; b=PhVwv39wnkaTAs3UpDBduPfXeaqeiaMfTZlpkM8ONs2D0h1MeOWGaITNAIwxasA8U1JA6tXJe7K6Di2rzokBnW4TbjyBcHeama3b2JlFgAjMHpVjwiz8kRbF8jj05PkOT90FJoXqrCDvMCChMBJhzCZ6bNIx0FSNlDPSKA1HAmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720286783; c=relaxed/simple;
	bh=pBiZnVnsJV8MbulOZRlRN+h7RF0BwZTaRW8x1im5RUU=;
	h=To:Subject:From:Message-Id:Date; b=j//cscsmQx17nZ8wMlhGGT338zRmK/dWBEKyc4PdOmPrQAgcDKsXjR6/Z0HV40L8twHzgEeThN6JxihpTYDAhRVwhGWchW6Tca1irkaT1S/435syoj3GRvIDxCgJh2Dx/MCfruVYU8FuJd2QDCPw2DDNBYk1QRDFY5hy2N6AYpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G77G8w2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G77G8w2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78BBC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720286782;
	bh=pBiZnVnsJV8MbulOZRlRN+h7RF0BwZTaRW8x1im5RUU=;
	h=To:Subject:From:Date:From;
	b=G77G8w2aKFRkakFybJZwgDO4Z8EXzWGOS1AWoJVVxJ36jCNl2ZK4wNpYnRmrQfjKf
	 LFY5qVrdbLInCb2BCl8ZjFk9ywhJTdLImSWMBjOcP0ZLnwf8luTAJerDNgkyCiRCdM
	 +mK/+E02SaQeDw5qwrIxLMAjEXXa0t49C8mIsHy86ChCB8nlz8SrXUHt9isSYB+ngG
	 bs+Unpvmxft+WqgyVKYAg54urfSzyy/GzVwimyYG3VrUZ+sIKQ0Yo78CXUbU2Ptjxc
	 1UyLbBJMpTBrqJ+V2SxWKkAXunSHgtatGKIvaz+lyYaERVtpYWqjtd0DBfa9C3BJfI
	 ORIVLXgsBj+Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C367EC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028678276.18974.8997105918079119599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee57400f10bc60b134bf0dd1df7b75cd25dfad38883027db6cfbd1dbb573a59
Date: Sat, 06 Jul 2024 17:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720286782

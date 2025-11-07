Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2310A1991D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762488594; cv=none; b=EkcS3OfA0cQsNgcJv5KzkW7bwVuq/jwCnIQxCPBlHSVxOQ5uX/9GkORX5+vMzykDAWg8fTztPGjom5bxOU6fPFtMYltLkheKM4PKCAVvNwSQKIJqaQ7d6Lxaci6Uh2jfiL2Xv+pB/aqUnmzVkKJVGf+zwj+ast8ELWMwQ77fq4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762488594; c=relaxed/simple;
	bh=hziU5ly9zz2xcRyjklKroVA2m8ec1BfZs/V+7P1AO7c=;
	h=To:Subject:From:Message-Id:Date; b=NOFp2GWz/5KrYoYwjbhV4OEmntDF6iYcST9GwrWgQckV2ayHlO+z6RE9QnL+vKkAsRVQnkOkXCUGbbA2gR+X1rWM9LP85PkbEYaM5kcQHcRdTLOmvFz/rqGXX+eW4XbrdePBWoCFUq5aktaWK12sJn42rOpgbqpyi1J8k8e8ygw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYmDjxAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYmDjxAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E66C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762488593;
	bh=hziU5ly9zz2xcRyjklKroVA2m8ec1BfZs/V+7P1AO7c=;
	h=To:Subject:From:Date:From;
	b=OYmDjxAsi0uCLYQKG6Q2kTnn2sugj8P3IMgHTLNSjti22OEbQMWQk6m2NQdp2Vwb6
	 nPBPnuz20faCZja9G+eeE9qLpAxthtsClHiCG+XqeZUP/W8+nuCFduMtAoYGNj7zLs
	 /6x1UxB0HLDOQZN5uT+bdjL5XUTmPlWoKepXbzark0z1ArkO8wPA32CteT19xlBRTs
	 W7mRUF8LEo4Bz9HKs727+xTZRH1nf4WgcjF/aNrF8R2LSqf5JFJwvfqbkmC4BVpA69
	 GbfTyjK1AaVd5ZvL07wSpobYs0N5GdqpiKeb/wE0DNKfKmE0AJwS7qQl85i0AOmnwU
	 qqRJs94utOMGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1541CCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248859369.6886.11995422352118871798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf2872e2aa40c2d0b904add51e3223177cf9c58578638d74f1ae6a07593084e
Date: Fri, 07 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762488593

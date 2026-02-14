Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2271C30275F
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771057494; cv=none; b=fl0z3owubN30Kb1fG5jMjO7szWfrXF49hwy/D7xFjpSx+MKr80AGsN/33mKjy/T5JayB0MHryA9jL8wtOk8KGn0e6ofEetxy0MVjZL+8HP0W0y/3B1vEr+qFCh4XJ37KUgYrwo2VN13+shR4P/N6XZf9QD6Z61LzBFX8Gkw8Yto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771057494; c=relaxed/simple;
	bh=PlM2jxizKULH4ZSy0f7Q5DtmRerR0E8KbpftlbBgo1g=;
	h=To:Subject:From:Message-Id:Date; b=jgqlC2YdVLGlBQzuA3ypFBcwD8qUKFhWf3McwVEE8Fhoxtjxm3KdMEqjxLOLz0tmpVJGPY0kP4FHtzMGVHjLYGhWyvjDeVbb/xz3LTQFQ+AieoWrLGyHAJihVXXXxs+0CsJza/CXM/zvWY2xnbA5oLSrVmhA07e1wfYE5NlsGg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSelyKx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSelyKx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2830C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771057493;
	bh=PlM2jxizKULH4ZSy0f7Q5DtmRerR0E8KbpftlbBgo1g=;
	h=To:Subject:From:Date:From;
	b=aSelyKx6HTs+KwmUcjbgPwidWcDsbH1YhyCE6O2QbD3RkSOh47iczlpLBztwg7u5H
	 w9ufEg9lwoX6E2/6pQFXTOV9QYJtBFjnazLshp/Qr7selNUk6bpzkY5jhwiZwzyB/Y
	 N/xglaXwdQGIxj9Fzhq0fhAXhsI5YCPzOUXWxL1cFilS1pWoBu44DHN/Vx3y2qmlT8
	 Vr9RQI434SQb/CxB11lYH3aJj5UBqwZSdfeg9HLzburUMMGaZGYB97k0FPZeMDyH++
	 Q9n0r232LlL3/1J63iY+Fx1c6/qdfgJXLixuF21c1Y3fatNeoKsq5OnaLWk52nm5+K
	 GCz9hifWuDJ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B542EDF142
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177105749362.13915.13117242030728700986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ac791671b9a2bb71d5072a31e52ba014303efc0a2821f87fc52d0604698c36
Date: Sat, 14 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771057493

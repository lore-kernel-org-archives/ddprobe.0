Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80A2DFA3B
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757535594; cv=none; b=lkExw0UEfzTCL/OMN2PR6nN2yOo8dt8/OqdUsMjxuuxRxzsDuPwIoBWohcynIKs+tMmjnpdnQo77LU86H8zzUW5qVsIhtXlq7Dl00cxN+6ep2FPCtSWV5TKD0AEDajwdFQUnondruy3A8SqHTzFxt0F1Wo0rlzed7rXjwRGRqhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757535594; c=relaxed/simple;
	bh=5hlWh/5efgPOClkOIYCNPBhWvf1lKqZdIH/GX6B53TY=;
	h=To:Subject:From:Message-Id:Date; b=IRcAzZBw6wrpoT2FvNoUYJEx9kT0WApEneyOv6bJelaqITZueDhJ253JTFtb3OrzyGHM8+8g//H1zfh/bnvaie/IY4b6BSy8NFJT9e46qA6xGKu9B+J+Zn9gJDX09RA1u2QZeLQVgyw2maINy8rQDvSX7ZTbdE2DHobVzzXWyeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RxYkTNlb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RxYkTNlb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A725BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757535593;
	bh=5hlWh/5efgPOClkOIYCNPBhWvf1lKqZdIH/GX6B53TY=;
	h=To:Subject:From:Date:From;
	b=RxYkTNlbQnEYbu9qteyQoT6zLRveJbJuAXGmDjXzSjsCtw50EJSQnJgZM/q1GHixQ
	 e1EiTOMxEQaa96b6rc7los2zck585bDhvGXG2su0LId/imp6TURysLZvf+IELuIYzG
	 KLuMGFX/XUQWLC+I3tImbsnfRRy94yob1venCMNmhNts/169/qxJcSjQYDS69ZCam0
	 JDeit6VCWNbuW6QusgXYa0stiuDzwqChQcb4Sdi6tHgnrPbTXcK6R55oCTeaHknwa6
	 ByWgoa4i0ipeoKKv2FMhQFqIiinhfAD4u13Kp5+mLAlV7wyoCh9kxAjkrn/TN/5KOz
	 IuhJunUnqBzsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951ACCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753559357.32097.5282448031809986806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c360eda216e02060454b8a6f3d7a04f8902e7b8abf578b1779c5a35f55b23f89
Date: Wed, 10 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757535593

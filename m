Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E971F3B8A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750882794; cv=none; b=oxV/+F3xXj1SFO3szDch82aA+O0K93IEdAZZEyTqTaQdDlfzZRQDQL36gbB4k3eWuTJDhHFJnzRQ9G+EulAZN1q3ywCq7hVLoTXxQly2OHAFOIQslXJG7CXnVpH/BurZHkGKDZ1LTGHgrOtHiuNHBi+O4O11kLrO4AFxOvNwRAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750882794; c=relaxed/simple;
	bh=cDx3HA7QV03TmmpSRdybsL3trngsRC6PDhEWPtKe28c=;
	h=To:Subject:From:Message-Id:Date; b=rnezE0eakIQfVs/6vS42Ai2dDondRxivITd9fwwE56XqeO26K3nZIiTX3MeTntzKjxebs/4+9zEoy29v67ACbq/l4ivuRn5diihx+G59MZ55EXVvOgB2fhKUwy1RmA3uCSdjRBXq3UB5MctOuz1vbRCmTqChs9sMYrFpdFNt2sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKZOGFDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKZOGFDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF2C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750882793;
	bh=cDx3HA7QV03TmmpSRdybsL3trngsRC6PDhEWPtKe28c=;
	h=To:Subject:From:Date:From;
	b=WKZOGFDtQGBPQI8QV9mDtZmullJfJK+eA08r0WSgMMhOR4ZyXiD2nC6MgPplBQ501
	 1G5M/guMvddLQmJDkYZCK1U/AlRCcefMVwb4z3wZpvMdA5v5lu0mdmFdrvcHKs47kZ
	 X1NdpTIvQMhm2cEb14N75hxMpIffRP+rAngfKAqXQ0OMrLShJtmWB2dpr1wPqaVkyw
	 qS7uWF1TC8s6Ff1iHAM+upRXzo+GmSBdxJIa0UV7zgslgq4vUnKkeeHM23t3om8nwP
	 FAO+jwXETNwqALr3tO1q4zBY0eqD9L9R8VUZNZJAXGw15s6g8RVjPJ+tGA2I0Kvzuk
	 3SvnmPvMl/pYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90885C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175088279358.12624.4229018274648560720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4952c7d43500358331f9fba8907144091c856833c2551f8ae7e0fb3be711633d
Date: Wed, 25 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750882793

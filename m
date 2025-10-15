Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AE3136658
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760488194; cv=none; b=UJBFqBbIrvJmzaKr6r3Z6fxGamKL0Sp5WvXGITQFnJoWL6BCvtMGxCh/b4uTX58HDmnWV+AWsrIoqGtWsSuikPC9MD5A04Sae7pn+g8X3LgaHXoOGUW6sxZBq/kN6ZmGwgN0dQEWRm4eyN1Z+dnsVRHDqzAHq6HfGnKMqWzgItg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760488194; c=relaxed/simple;
	bh=ltGXhJ9M9PgRcQiwFQgkTT0P6jhpPqUQ/Kr8fr0Q5Hg=;
	h=To:Subject:From:Message-Id:Date; b=ua4Is0BwG7kiJm3JVH6TCnQWt649kgok6b+mbYjAOnWr6rZkiwaNkCJ5EOMnc1AvDF6VSbEbadsVcFM6UX4qqyJFRMT9NggL1Qk51UzF6u/7Cg1vUhxrsWoDxB8CLKDhr6gEc45M39UVbX7fvLaSiOLF9ovVc9Y77JrBd2kkzsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlG9G43O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlG9G43O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A234CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760488193;
	bh=ltGXhJ9M9PgRcQiwFQgkTT0P6jhpPqUQ/Kr8fr0Q5Hg=;
	h=To:Subject:From:Date:From;
	b=nlG9G43OMjP4nqQuTlXzcQZaDDEtRB00KXaTnexlMdjLqEyVoWZbehU3LCH3wctq1
	 uJZPAlnUainsoTwMJm6znIgJ2lSzUXNQVIYb4yuGrE0w+pTfSrg6rB9XcB2Sln2HvC
	 ufbb71edjrJK7a9Vpnf3jjbRaqkPBe+ab3Zcfl/K2IefyeYZuUjlxCCODA5B7fTOeM
	 wGbr57+f0mGbq6Jrn2efo/FQxfbZvN1xXCcIxuwiV4RONQF4nkoalYq472OoaWyV83
	 5Drr7WStoC+a6JLBjD95XnE/RA02K1Hs6ngaM/lHtBH6nxX47VtF2L2uL+mCqnhwZy
	 voeNq1604GUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90323CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176048819358.6195.12822203260546760955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad12ed7ced8e8e84267b9564f2c4b945fc47fa27fca1b3c07f0c88f6a14bae4e
Date: Wed, 15 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760488193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F5C31AF1C
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758217194; cv=none; b=J5hGMauYazxqWpwtOTpKR2kN2XtP1b5PxhCI+ZhD5Fyxt5O2SczK+e+sJuikl9ipZa1xoDZiJqseps/DTD1VIHBv4oAV7ETrIiyHrtZf65zfUjEdUzByMXLH9JbV7Jl8u03gcDMAWmCJOh2wUvSGZ8iQyhCkr9XAG/tgxnTR3rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758217194; c=relaxed/simple;
	bh=Q8wPvIAdD8rSieQ6LcM4Yl0lVIXkFOX6FA90fKPCgSQ=;
	h=To:Subject:From:Message-Id:Date; b=iTHUc3uU2S6rhJwduwIwcTSusGvNiyhlq0n1WRfFx1Wfbq+qg0S6N3RIcnRSBsyYdLlGgP9jisrKra7Xfs5XV9nkHR8fObefgO+WmvZWz3Mh/TVu9gaST09zMaXsXNqBMwDWYxPzoc9ZhfA3WI1dy9UatYAFyK7SULrHXLMwxTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7SPDa02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7SPDa02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A58C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758217193;
	bh=Q8wPvIAdD8rSieQ6LcM4Yl0lVIXkFOX6FA90fKPCgSQ=;
	h=To:Subject:From:Date:From;
	b=H7SPDa02flKzVIorrKnzVAZcVZC2UiS/c1gueorWykZq5m50mlOckLnvX2vCpY+XL
	 CoiNFJfZQufP6mBIz8aC1toDXXU00HuMk4UqpB49Zvu7/z9sN1p5hEffCUtGixEz1H
	 1bLZQBv7Njs955IjER2klWjXvoZg3ai8kMtZzBPxHKxzAUJbobVyVpRjNX1tw+7ef5
	 4AqRl4t0PQeIagver8GnAXtC5v1P1iiGippsx22aBULQaBo/vy8KPxkd4/2cjSung8
	 4MHnebTBqbJpGBqsWMQZ3MUlwkwdEID/2pZbJI8xf1OnTWntwRtarFq4SjCto+LLpS
	 r5YUqDdWlKCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91276CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821719358.3873.5877990231429363285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f40edf78ced5a19493a0763fe810058231090fadd973626d99fc74720eff917
Date: Thu, 18 Sep 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758217193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0232566D3
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758590994; cv=none; b=J50gO4lbnM+ABsnMmrNJ/z5KbJqyHMduR3AgsfWCH3IYD8JtcS1hSSqhPgm3L9WpxsGuB9co7on08phYGvPrpDRJcJTfRqZ2lVfXcbeU58FRAA0jv348TAJKN7Syt48Pb8W1dkE30Cf/L0UsdpOAfAi4FZZJcR4NxV45EXEVD30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758590994; c=relaxed/simple;
	bh=ao+1arAHUcxh4K3NJRAUpqFGhcZmmhg2cNV+jOnYQfg=;
	h=To:Subject:From:Message-Id:Date; b=WfAqBe6Z6DjpbcHtstw5HDd3ZwYvhHJZl1kAe5BX0izU2jF5JSD7JkFe8qro5x77yDQHhatR15+7PS5OzJ14XdtOMa1ktPtWyKybGOP26RbE8gGNpbPjv6br4Kh68DMz3YjoshPJCSnLKXA8/0TBajOAKv8Kw4P9ZSWImY6Tyks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcSx0Y7H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcSx0Y7H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66FDC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758590993;
	bh=ao+1arAHUcxh4K3NJRAUpqFGhcZmmhg2cNV+jOnYQfg=;
	h=To:Subject:From:Date:From;
	b=gcSx0Y7HvgBEeTuUwuk3ed640RIFgDkMgL+5gocBRf9fNB3AK1CIcbArUB70+CQBx
	 XxLwK5NwyVV+0ceFqSlIEBFjTgwRV91l6+2gFq/lW7JvMl9v0o1q7OWzIMzPgPfWT+
	 GrGbA2eHhVDxdXiABFKesF3HzTADvoLWwH9D6SMROAoVVS+25YqNCXzUzzXw3+58kY
	 OJT1/JoPu9JVC/o2RH+8KtvBbWCzu2mjtSiEiUSbY2QKgUeXEhKmBHHJby+DnmRIda
	 vktz5NaKBObFbgPmkn6eiLtVQbd1b/gC7+Zx10o9bu0+bHPzKLFO3IMxU81d+QBWOU
	 FKWYsTgJW0tmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6BCAC5AA
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859099359.12387.17484227251475763885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1eac31851a79f50d394de79be77eb6377c08b5c7761f56d53f1439d2d2801e
Date: Tue, 23 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758590993

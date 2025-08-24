Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5071D63CD
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756050594; cv=none; b=Ks/oqOufwR9lCXDOky9L2NPGAGh/IYroU5YjY0f4DzniJtk2lm0jMBb51YxOJtgzXOoZx8NCFRHMub8rDLPzlACWKu/aX+QU3XKgGJQJIa8ay3R+uZfWXWU0/97dIV+fDdPSX4ciAHOjKf6Vc8EeBy8mZlNtUDTNyBcIXCQKJmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756050594; c=relaxed/simple;
	bh=sjgS0ZzJr0blEffGOroCSvfr5OkPSQnnYQJNtB2xK08=;
	h=To:Subject:From:Message-Id:Date; b=Sw49ZAwYRc7zFPcUn/km1L112EEYJ9Jc0Uc+ucZ5r7CzJmBTj1e+pjM7I262xwg0MIenPOhR/sVHMpDKwSzExrBb21m+DIx7SZ8X8wPtuxZr0g5XyAmqXGSmkuqAZLoAXhpnE8rAKnqYZe3wV0s2cRf+22OWQ3w3GnRWsLBMSpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCFfc2d7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCFfc2d7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756050593;
	bh=sjgS0ZzJr0blEffGOroCSvfr5OkPSQnnYQJNtB2xK08=;
	h=To:Subject:From:Date:From;
	b=NCFfc2d7mPW629web966ylFUCgiPkQiVGl4zThnTXl3FoxALE1n0edj9UspI2ZP61
	 wd39FGuiKZXVUut8DgplRupDhQmKc6pRZAtTdwUlWnjmh0QPtfzpU948/SDh1SWtEt
	 MRQsP1YbjK+4NTSsQyX3gniRm+Gz5LDzSadWEO3VDhK1Gm8uZuBVXOnDSNvw6lOlR6
	 JVBlV6jENCa2318JbKNFyfFEh7R2gJ4d1a/PFzHWYHRuG6QwBYoFOAhf3B4Rw14FDB
	 BITJAvQVcg+7xseH+X0X7ulO/RgeHy9VjQGIlftyrpxPr5yexCwXhM5b6dkqmzRasQ
	 4KIy2EsE4PKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902B4CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605059358.30082.5031029023148116741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996670a3cd8440e0eec8511c2d123bd621cc73bd25ea494ed19f7b1211bcbb83
Date: Sun, 24 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756050593

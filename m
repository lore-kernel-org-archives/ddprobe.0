Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E8250A6D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718473703; cv=none; b=pKvvBqiv3v9CSaeEvj8rdMxhi9+KWC5tgVUhWTWGWbXrwyRmGXW+kGQBXyxn7cqb24oCdvw+FdnmRI+ijmY5ylL8jrUVPGdA3JCKYse5AReXt8ZHZ3I34bWcdcbnI7qjtp7qmlhAK7RwDrH0mrpDVeI90ZBAVXnWdSic+FQPf18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718473703; c=relaxed/simple;
	bh=q/deHF+LCcLwdry2U85zBGp3kzY6fmT12s0wjLlbpEk=;
	h=To:Subject:From:Message-Id:Date; b=JWdkejHyR+ey9ElnhyKoAbtCHNtLD7RhLB+jFqX2e5j+UfSPlYULJi1XrTIbLx/3KUphz9mHMooQmCTsg6zMtv+rfxZ/C9rXa6aLD8bWjd83ruGY+cHeECr9hU4UJMHVGgdJ6P3k/4jFhJHTnt6KnKKE1c3Ax33/xZ/vz6JtPAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXVUWZad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXVUWZad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E55C0C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718473702;
	bh=q/deHF+LCcLwdry2U85zBGp3kzY6fmT12s0wjLlbpEk=;
	h=To:Subject:From:Date:From;
	b=fXVUWZadWJMDaLtBfocrHfBrSWLCda2JV8zz9kBMeUHe3Zta5sNfBnyrJqriTaiOe
	 GnLwJ8pcPaQN72mLftGx2QM73AXpeKqYOIKtquwfr+HERQFc9N5NDm+3Fk4vW0ggQ/
	 EUC0oRTw9zuz6wgnXlhNomJwQwSthf+mrCRggZcHa6owG0w085gfmy5kq9Apepp5uU
	 1gSdRF60FK4nPvwnnmR7AEsUh02rCS4Zl5Ud957hHs3mRDpJuuCgKbcsKzgBvRztld
	 YbpXETIdbrexec+Bzx6dpCJs1s3OW+S7hoye5y4s0Nr5iZUJwS1yvgVfS3O/RPI25w
	 tXyssWLoNMFPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD29DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 17:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171847370280.31461.8871647857847994042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2054a640d188ea873ad48f02069eea80f956e70a8b6a4a5a6d8ac5ac4b957a4f
Date: Sat, 15 Jun 2024 17:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718473702

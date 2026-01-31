Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393902DA768
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769852634; cv=none; b=bOoySNADf1tJEo9rwvbJfupqBNA5k9a/cS0AyT52LPcL/PRlR9Ei4WLCYA24VLY53Q+YZzm9cv0WKKIHfEcsVpol0DGAh3lnys1Ig685+eJXxV/KGy+MLeEtq6Tw3dvlLhw3MeSZnsYmdgR8KR9fvP5SQXr3iG0lWGgV5wq+OqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769852634; c=relaxed/simple;
	bh=zsRdrYqJagvwTL0iOz0TEiWCy5pQ6foKHzs2NMrculg=;
	h=To:Subject:From:Message-Id:Date; b=imFpbFtNUK1nr7Fks1OXnlHt8VsAI84yyY9r/rojP8eACsI29V7fnXeGwlJsRHTD0pOkCCJ81PWM3Gw6DaMt9gGKeM6UqdV3zpC3G7IdRVNEqBnFdVuxerXKdQkJ5jzrKnqGaHCIt8w93f1wVWYl3DQ7r04qU9HCibmKlkZeBG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsjdYqUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsjdYqUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A765FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769852633;
	bh=zsRdrYqJagvwTL0iOz0TEiWCy5pQ6foKHzs2NMrculg=;
	h=To:Subject:From:Date:From;
	b=EsjdYqURb4NXXzxjtHezfNFkGbks8pFqntgVqKZSfZBXS1lFb48FElA02fhIpDRZq
	 MzZO8a7toz8DUEkuu44XhxciPe2XVhJD+EFn5w5BlVJmNTVf9SNMLaPsaYial7tnYy
	 UrkRvxuBwUbgX0vLzWVKldmXPJfO05EDG+/AuRM7ZBTwjBc7W8vE2sJ7X95/V1mcB3
	 Ex8ExERKMw0F0yEpZMq4WZr4yQlYPX4zb3V4p/TOOIWPZ7swMBF3OlEi/erHkx9hg4
	 intNkKN0lCKTGF6dAAfhd1IeTKtIrzZKpsGU+1Np5JTUWp3MWMrmuO/e1yR+UY2hlU
	 RjdCPI/ObUazw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DF4D79764
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176985263358.30050.6888275708765061283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768a6e9fe77c527a52bea70cf918b163c367ad5962f617866c03059d048edad1
Date: Sat, 31 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769852633

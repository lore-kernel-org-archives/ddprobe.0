Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4BE14E2EA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 14:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712845163; cv=none; b=IRmIQlOAHtEbKaihoNb+gBm6h2fxm/879LSkrDXoJtcFfbFpFC93LeG5qLjGO8oI0uOaPv0S/TY0TAN/4lqGioNZ1pYdyxAq9NhkpYYKp2vVzTcuZXuDYa4Waq/09BYEDqcrC8HxRDXJCToZX1eUA2mNcp2gJ08eX3EWlkVZUyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712845163; c=relaxed/simple;
	bh=LZU01Zl+8PqobUni8VxFuxBfduMPEeNQh2xn2dTWr8M=;
	h=To:Subject:From:Message-Id:Date; b=Yo1pAGIg3C7VnTz/krzMuQZwb93+zxm8q1K9q4FZljIXXcF1xC6Xt93cwBKMgrfUG4vls0CCBjrYtxZpN/c8B6DcuQGP21ybOE6BzkZRQJlPLh2Qt0T3Snb+BmZFX00+tct+eex0LgrsZP4cFGR5JTqPBAfgHMKD97q6keEr2JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SchVbiZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SchVbiZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFF27C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 14:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712845162;
	bh=LZU01Zl+8PqobUni8VxFuxBfduMPEeNQh2xn2dTWr8M=;
	h=To:Subject:From:Date:From;
	b=SchVbiZlv8mf+Lgm81b7y/9+hSezkaB/NU+CEGxf5LbhBP4DUMOz3aeqRsdSPdU8B
	 WlcsfihisYxqzDd4UiLtnuKcb+iM95egr6eVKw0qfJLTmt4PCPg3GEgCqYJhN0uvd2
	 TOVK1kYGRdvbjpSIs3SNwJh9qQo4DDKvPWZU3jGLxx4lbh/yAAmLtEs4Kv3hy+7Igv
	 yJbvhEeNmK+RmBUycNAfy3uggQu5W0hVurtC6Tbb0malrm5uVagu43o4TvvKTdM/s1
	 z13xQMjOVUU0mTD4OKbMwGhcoFtC1ibw7z1EJI/5jmI8ZHROd6YHOK/uRLC0LL83ab
	 kjxLtcmUi7YlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7947C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 14:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171284516280.6768.11883454677467900021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60a0090d166bf10758a5758b0939b3a80f7fc5ce94396e86888791fdcd3ddd2
Date: Thu, 11 Apr 2024 14:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712845162

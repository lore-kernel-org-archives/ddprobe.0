Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFF154774
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786922434; cv=none; b=fSp3x9bF0fQ/g6CU+0PS3JjkMewqaFtPw2+1xWvYttPR33cNjPVS7+qmOZMtqrvThAi3fU4tz1b8uo7lBYdtOo9rnnWDoEZx6OVylt/EpWTJLCqnjBigVebmMyjEwLIMeoBfhiTzAjZI0H4wp14lCMV9BMEygPkTzfESwN5xWb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786922434; c=relaxed/simple;
	bh=NuM1ZDd4DS78QSoi+A6v9hgoIXPZjLZOd+Cql7DnTNs=;
	h=To:Subject:From:Message-Id:Date; b=sC4PUcW0yFPPjDM5pxeCPpY6Ya6voGy87TVo2NECFRSGZuQ6Eg4eyixG9WLdOQemGUiFTp0VINsP9uVhFylxFkFleaAVQ1OTBnyNTf/rPEk9oPNc/BEez1RLNU/mCOjYz6wPZPfRc4XZaWvDrhSUjT7Y9rzW9FHzPIyIGSLzJhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RScZZXMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RScZZXMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4913C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786922433;
	bh=NuM1ZDd4DS78QSoi+A6v9hgoIXPZjLZOd+Cql7DnTNs=;
	h=To:Subject:From:Date:From;
	b=RScZZXMCVd+FwD8R/2RIQjLwpPAZTwJtOxkCl9DJEm2FMMFb1CPcJkJENC5BodLri
	 RSJyXk3Sc7aVHInkVFqiS4997MqCBOP7BLuDJeL7j8pHd4Tp+0GgWjIeNxjz9Xei36
	 +JpJgK/rCV48npLLxOloEpDQnxwNs0R+MOXp3at9wKMvgGTeI/5XO3diLszwDHvrA+
	 1VxdFDvFFA0xzWAi7P89xfH/V6WvuuA7vwoxYXK24gsRGonOylZRa9Up3BZjNTDQGO
	 Nk9HJxeDLfZIHF31JWIOCz5x5uhHCrPTOrv85dSGOyqE96T/T6ai1JQjkLk4Af+bDi
	 Lcyu0Q7Uua+bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC628C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692243369.13418.6047802549430725358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f12812ea3452c059ee5e061e0d1c39e88ae88f88c3ed2dff7914dcdf79a3e5
Date: Sun, 16 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786922433

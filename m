Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103A7352942
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770287034; cv=none; b=Pt766sNvPsjcZCtX0SLdWVLFXjiMKv587PGeP59AfO5ltZcBUzt4McwNfJrKjQ5xWdxXvYHPw1Mu0+Mdc2bzO4nZzU3cw2flv9Xf2nHO2Os83LljySXJwykJbAnyvIlwgTS3IUxAnhozqw+0E5snTXBGwJlXp/94uGPlPPplP4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770287034; c=relaxed/simple;
	bh=1jSrdVg3MpI4SE77SNj9zlvQ5HGkqXb8mH2WUmJ8ri8=;
	h=To:Subject:From:Message-Id:Date; b=BbEUusZW88KY26yGGbwjrssrprXqZHu4YcklqcR1rm2XA6f15V3z5fkcXScP55JMe5sPx8FsfI++TXDw9OzVGb1sKK+5jMaBQz0Q2gQQxiJraXKudChAbU/mjRjT8N4aGr6sOHyh18UvC5QZqJGoeKBJ18cuOLWo6yFnzzzAsPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRinXFHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRinXFHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A659EC19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770287033;
	bh=1jSrdVg3MpI4SE77SNj9zlvQ5HGkqXb8mH2WUmJ8ri8=;
	h=To:Subject:From:Date:From;
	b=fRinXFHL7+XBcgKW4CoCGhVmgR33LlEUAUs9KI0BBPX7vYyjxk69heP2oYtPksyCd
	 Kf53gdi49Z+xfUQ8XC7nKPP5b2UOpOzz/szLTcyhkiNF0GVtxYf0v6s5whdal5NvPH
	 30aPoVnNyFc3zHRpRPzSs10+PhkYaCx/NH3Tq1vhmRrmEnWuzUHheHBpaUH25jR7lQ
	 OgcM4XOyYoT76wOgHYMUAN87UEjtHDfYv7lozzaeicOMCqZ2fMPYzH3gL+fBh+n58u
	 n5IjpZmqUQW5pIVl2cfLrCvMeKnB4e/qxdBgPUzQMXcDnr3zi4Gj20z+vQiJSjEOze
	 BcuDNU2KDExxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A6EC1E94
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028703359.16854.12326852782743048932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b93e293519148d529dbf71d7e03c8b62a91451469058c2e152abb1041ce419e
Date: Thu, 05 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770287033

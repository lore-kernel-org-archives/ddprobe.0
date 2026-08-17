Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D441448388
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786990234; cv=none; b=OhNozgFnbx+4dn3gnL1vq3wMtJcBngMu9jwdBlZl3BQPA+wovt0X/EgToV//6pVN0M9aPPTEfpvAG2BB5hZTLvoqRRovzW52PP8uyyIrntou3GUWvlUhcZPGY54cVcFQZ+6Ll2hKzMIRrcBOzsVNl47roHYkOuLVm/fxPTg3a4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786990234; c=relaxed/simple;
	bh=UdfUGdGOsrd1fQ679Yao2jokdTClFH7JpCYqubbSGm0=;
	h=To:Subject:From:Message-Id:Date; b=EZIn/daCTKjYP1RsDZdRDGNEYXRuUPx9bWD7iOPaeYFYL8Yi6uGAoXTPdzI8PmGCthUo6UhfJ2rmceVOti+kvE4Zlte7pnYlAZH93WKTcjzNKBojc/J8NMrAnNTwbNrd6um7LXVTSNrEbzs2Aa4Nm78wZR9xhjIYgYV6jya8Me8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnF+a9BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnF+a9BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0C3C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786990234;
	bh=UdfUGdGOsrd1fQ679Yao2jokdTClFH7JpCYqubbSGm0=;
	h=To:Subject:From:Date:From;
	b=RnF+a9BGmJ79MNyJRl0JsrwlBRb/w0DCyFTY40XfaS8Bos+Craqia40/FPUpwXvnu
	 LYrlYWjxjpehe6kE0Q3VPBRiyGtii8TDJouPzVHSwmS20++8D+w/htjaZTR1IDvLSE
	 eVK6Bff7khKsRzBhDh2xfN76+81K/N834eVgICxJzfdSvtbAyKF3YpVJU1XoRoWHBM
	 dcvZumkfV2jnKkLQz9YR9K4W4vCY6RgUNvpypJlcxndOCmN8YQIjCqJlTijH2a9jR0
	 axnzJMvEyYAdA6cDtmRZizR31Iw2KCuamWWb0Rah05SUov7ahKfSwV4tn+E0uWuqVr
	 tq0IOaVTzoOGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3081C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178699023375.30530.1763389787232518970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9327dfe3ac1d51cc3f8405e7a9ee650361f33cbe6f325d12adf1f883ef0d15fd
Date: Mon, 17 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786990233

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A23E33D6FC
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783012114; cv=none; b=qjG+ahbMj7EQqMjUM415CBGlV/54Gemd10hNHt5CWTgtBKXssUKz80Me64R9PCxhv9sd4Feill2r5Y9DM86hcwGOOwo/UScbAgRsg8jf6bhA4z6PnDhzwMaPjJaXgfTwCIE8FyIkZ0TXkvuJEU3exHYhWvgYhMEFGj4el1PPbe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783012114; c=relaxed/simple;
	bh=L7jl043/6Xt+/dAHfjZzH8M5nlOgkjas8V7++GsdUX8=;
	h=To:Subject:From:Message-Id:Date; b=rP4rXENc2AyZAN5OyAJuHW0+xwLwF1R6Jn/GQJHMsetleWQkmUvXJFrZRvS8RtD1zVNYSDr+cW1GqsmR6sv9RpkQ3GQiK9HNz0uLdSlgyY8yLVhsBkQ/wkSzAOM4iAh334dWR95RjK110VN6kBwMr7dewBlxfil5F7ND7GrmBWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmG+V7s4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmG+V7s4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC148C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783012113;
	bh=L7jl043/6Xt+/dAHfjZzH8M5nlOgkjas8V7++GsdUX8=;
	h=To:Subject:From:Date:From;
	b=PmG+V7s4CFYnDAVAxpUL7lXm95lUZmAldIyTH/Du26FThq70kJRdBdyUJjG/CfgGm
	 IJ8Z2ANuhzFN4+X5Bl8xUQ9gDj1QAN5hkfBFJ19x19xcKUUCruutynqbsiC50jAi9Y
	 1cgar95CZQJMmkYzhjIxXl/2H6U5AI2BM4DYciccOzjKtWolAXsN+p5YKLG9APTCsk
	 6IcB/Cxxn7ma1ksSn32CXX0o/vim5AB8UxVJJOgagKqv5r/i6ZjketAIv+RO55yBP0
	 N7En3J/xlPkcSqJdrV3kTJLvcCa8FWl6XkYC0e6txuarQU38QTqFaE55M/1lrt16w+
	 Xerv7GLLekZCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88ACC43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178301211368.16308.16167670608711570435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22e8eb56bdc2140c99868791eac5f4cd089808013967866981c462965aeab1ff
Date: Thu, 02 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783012113

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B8326B2CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758475194; cv=none; b=pMje4QAxiQvEdFasGTmwWOgzOY6KWOKRqEzIW8cf/d+0dt80j2hyogsJY3Ksqb1Q9N4gMG4IYqmuUxOYq8wkWLW6nJE4DP5qZ4Svoi8R8UfhTJUU778iQMc5sPYFF+ylEVG+ZQxF9PzJHB2vpamvQ1k8B2AAWaVZsGBZKZZoH2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758475194; c=relaxed/simple;
	bh=xeNwaZtvWM14FyauRVXoNBm58q85sgivue2qt8otsFQ=;
	h=To:Subject:From:Message-Id:Date; b=bHCepSgzQWS2T16KKHITdG6dyEdm1GC+Ezhi58CB047wJMG83BQdyFHLVxCu/0fRd3QoDiBkBrP5WnWsXs3G4vsF/UPe+M7XsA1V6aSf1QXRowT3EGInAIxxT6WeA82sMcJ74HirRUe1+Gb6jhovFoaTUFYtbBoxTXpai23gy8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fPJIiNa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fPJIiNa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC3C113D0
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758475193;
	bh=xeNwaZtvWM14FyauRVXoNBm58q85sgivue2qt8otsFQ=;
	h=To:Subject:From:Date:From;
	b=fPJIiNa5AJJsVMpQfyHnkxkVKcUfjMUS+bN2ANTuIf3xIJrxXP2EsVnVzCV6aadzk
	 VdywvQQw/ftw6P7vn/B5a6ENxHCXHzxzr1SEH8cjobDeKC52/4kVxYJtwIxJdbKvY2
	 VGfsd/AHaBnDDGl98+jJLoWvXK46fmiqbcHJsy9OaVOfHtHbjm1Uw/tyTqHvziVWZe
	 ttATra6MffJtqNFiO5Ms+s2zYdUeFuAkzj9Iz1MAZs8cenBNNVWoiFbzPS3YdpUW4I
	 66qX8uCniy/qGQj29WDAN4wZOuQDMKIZByEIYP43SX4KWGw+IpMhHc+z/NzgCM7vv6
	 qdrUcgoHo8HaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A26CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847519357.23352.1997679484885893033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f91f552d32cf12bfcbd7cb2fe93aec52e2dfb01dd5387c4bec34b93ce4352ed
Date: Sun, 21 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758475193

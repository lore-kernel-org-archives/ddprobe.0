Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DF384037
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728834354; cv=none; b=PxCugn5HG5BEF+14ZIqJsbRwPj1Lt8PU6OiLUt55+pb6o1AC7yRlM9rvkwioNp1rDzLrslhh8/kCeZ91jxuQ7MA066BWVwoWtR4Z3XO25qb9Co4KLqujyuEzX9puJ6Q3jt9agV03xmEti1OxLDe35EHJT6nQlCQnlXH4r/Vwqec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728834354; c=relaxed/simple;
	bh=PIyvhxEIS8u7iefnaBF2gg2Bv4m2YAbiulXgrOOac7o=;
	h=To:Subject:From:Message-Id:Date; b=HVedb2KMTSC4Urglxb+W0q1sGw12/VP6r/uXwGrMBO+ik0BlzEJkrQqvJIJoMdo/mbwJo17ZyrtsYSU75Rr6EhLfu8KArws/OIfyvpL0hFe863G3UK/NQoIaMIJill8g0EZzupDz0PY/4xa7oaBlNawknGWfljpx/Xe9hcQYleA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElU8BZ6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElU8BZ6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD365C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728834353;
	bh=PIyvhxEIS8u7iefnaBF2gg2Bv4m2YAbiulXgrOOac7o=;
	h=To:Subject:From:Date:From;
	b=ElU8BZ6LtNcr8ShwlB/6operHJN9V8OcSKQh9CFd09+9khMvgqe5C0/TbUQkkCf6O
	 eVU7NlBPHcVsj8yeEa6CETgYXRrFiP2VtycItZl8zynaW1gdng5ehCkVKpDhRVOD3s
	 THiOmZLFSCvMPwwRKHS+zmLAnFq9OD0o1sKucF+/mZ64is4XYrbe8yEEhLoIlfFbiz
	 ZfWl5X6BkaSBKWcyv5SjD+40Tl5ZP0fQFxWw7VxKodFMO6sreNaOQfB3rZS8ZtuOHF
	 C6PuAIF8b1jILi/sDW+xjt5qi/kdgfUoDKubFlkAXudXhNbki3iUE/3a5Ym38Txa5P
	 ShOrT3DldG8iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A443ACF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883435363.13127.2862341511520706613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a054f76248a8fc02067812424e1f4b34dabe640ad65061a691519924e105492
Date: Sun, 13 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728834353

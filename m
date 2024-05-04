Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD6C4594C
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714837943; cv=none; b=FnyI78NTSJbdYT37dKsLvU05NKxyKH+2XRq7sJYRaOSG5J6wefY8b96YjXuheTo0q99nTryRLd+G25rXP9vt57uQUFlIqeSH7zgX78+/8buAaMGagkbY+KLrddmplc/kBMMQHFJVlT1VMsP0E8CJ4sDVaORCJCBsHBxKYJy9IOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714837943; c=relaxed/simple;
	bh=KvMdUETL6XEU62mTATr5qlW4OchGkkkOLHzd8IN4ai4=;
	h=To:Subject:From:Message-Id:Date; b=PhDc+DauyQsqzvDDF7IkMawcEvVKjQ7xgPusZELUJZYcRtpeDgLdnHT3fO2Exc8k9WNCgcxv8i3OVrBgG3Dc7H+wKp40yC5BQwC4nwu9z5SMor6x+SHQoLuHRznSdRda+yUQMrhuT9zIofXXCBUIk2ypEV9yGnhFgmJyBig4+Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGD1AEjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGD1AEjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DA7C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714837942;
	bh=KvMdUETL6XEU62mTATr5qlW4OchGkkkOLHzd8IN4ai4=;
	h=To:Subject:From:Date:From;
	b=BGD1AEjsyUjQqVqi9JDQrY3X+rwv/H8cNGm9Pp/wkvezONvZHxt8toLu2vqm6op6i
	 jQcBupQ/ZnwAehOZa9ZbJwrpKY36bL/B5a1IzOOgeeznYLyYBhKqXkBO3AcFpr+e/L
	 A1Us9HGRsPiOtq03pRG3vipD8lTACYWtDPRT/STJjeC13wK78bxwkGAT6lIHydpYi7
	 bt8XkRkdho4PTTRg+NeA2FX/HnP8LJGnXsZkcPnT1NIdnhO+HScZUjNywXK0sNp6kK
	 tkXe8rJK4Fg1MZtY4tQyjWHQLTGEZZnk3lgqheyGn4Ju5nBk98t+u+WYUl9nrBpxOm
	 Hb63U9FirMHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF33DC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171483794277.20002.16585128340405330751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199cb75146392d5cee462f7717aa5f8c179e25565a5dbc9b6fb2d87bae57195d
Date: Sat, 04 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714837942

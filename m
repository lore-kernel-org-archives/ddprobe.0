Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1782E2C15A5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783193914; cv=none; b=G4B/E7ZiAq00nTh8WYSVL0OsxnYlUdmm6dbtYInihDo/AcManzTRD8lsrXZW7w+oFTEpUM/aFvLBG0WBzjWd0eEW7tFbWJSGOlEmcLuaqVD4WB7nsMZslSefXm0LNdhFTO+GJsH+6SwX27DSAgE7jK0qXqpREoEysQP1OaABX64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783193914; c=relaxed/simple;
	bh=Nfmz7ew/awVdhYlAqksRC19ncJcWxJ7ZNZGHww0zfTA=;
	h=To:Subject:From:Message-Id:Date; b=RJnI1qVO+fffPmiHaMz/4s7dQZsukVG5YWZngMkyZYcbNp6dJGWj1FJjZfs/JxouyJLsafvLaX5APVHvq7Gq5txtCMDYj+yOqnVNiKf8W2xAKwZWFG+XrdTxpwJ1m3P2jYHIaLl245yzVzZuwk2803aqt9L7wErT84ypAlkymig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blMu9VQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blMu9VQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD854C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783193913;
	bh=Nfmz7ew/awVdhYlAqksRC19ncJcWxJ7ZNZGHww0zfTA=;
	h=To:Subject:From:Date:From;
	b=blMu9VQ1PjE/dJ3UTq73Rud6xeJZGirl6wmXPHVSXoCmGhbz02QOjx0vPaYxOLYqr
	 MhRmtm5WEzu+ODoBLjH4w4diUvgGBBkXG1cu/6fTkKOWJtheJ3gJ7VStx7w2DJBRm8
	 J1Ydq5QPbs2yG7RlykX1bgTkeSnnf69esiDevL2q22N1+fps7vdKzSPpr5H/5bJ8t6
	 vy7x/h76XHn+OxJTsqxqOGgIIxPhoUkgLU+x0MkWgXlgJlY9Hel1de9jAEuizU2+++
	 mQYHVTUagsWBE9yjtEv3dYWW9KNWZm+A6bVMxH/JK7UTlrJY/IFmZ/GnGlU5/tFAfm
	 WuP8iAzI+cToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD693C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178319391370.12683.13060300959704885917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d6e3a378e55ea6d98632996ffa2110174eef850a95444bdce88dd1842429b7
Date: Sat, 04 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783193913

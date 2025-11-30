Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4800B1E51EB
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764511374; cv=none; b=lMhRK5PGY8Q1OdOSvWkiHzhjHntA0rt4afoptsizaZmLR+rpZ4ELulBdQfUADLwrTeovWggVlx4CqnIVV3rFVEclOhkBOW0WYNz5zhCz1XsLX1jclXM+kCnxFkJGaT7T0RS23PlfFBrOB4CaZsi4PytgrANmZCbL4FAwU0+oppo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764511374; c=relaxed/simple;
	bh=8mI8Fcpw+Y52ilEttAcjPHSX1za2O7pFpDmdDlVHOCI=;
	h=To:Subject:From:Message-Id:Date; b=MWssbWaQVdMQ0TNOf6sIkqyolzbqF1yBo/WXZ46YHENVoOgEwv5vb0qUnrc1LaXwvuIUnJMo1LiiuIwWWp5Bb+3VM+q5NpwVI5eHUjQLSu+RqwXez+q1ijx2v05WHUsED3wrEeVSwWS1hvLXzVo0nzWK7bPCsN+lGHM1HlGGtBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuAm9hea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuAm9hea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD87C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764511373;
	bh=8mI8Fcpw+Y52ilEttAcjPHSX1za2O7pFpDmdDlVHOCI=;
	h=To:Subject:From:Date:From;
	b=VuAm9heaEYtBjSjJXRL8hRr3KCOQv4oj88cU6s1BXcIJB9FZA2Ucv0AvHXVh5TRdh
	 HhocN9Mp5cJR/aY1F74TSn8sNqzbityC6ejM8Fb1UPJrePBUW0wy1NgRi5e1IA4y0F
	 tNMcGfaTIb/5nsCA6GsjN7IAdSoEHwhLh9RcyNWYvHq7muHxYBMbHxZTjCRQEFyICk
	 39z8GEqYPalgcITFxvXP/JC7z6rCmg1c245/CJNml9Hq4i4lmPo53DcvF5SeYbMcd3
	 Lkg36mFj1Ps7kKA6G0zmt4AVhkAH3ONuxMncvJoL8A7RIuhzQkEzAPLmbn8tZ4s5Ks
	 NqbaXWmgjlSeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9921CCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451137359.8236.502681853132902827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce49670f52a7822e5c9822f2140b1d8f01dd3fb56cc9e4ca3cedc5e13d0cd94
Date: Sun, 30 Nov 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764511373

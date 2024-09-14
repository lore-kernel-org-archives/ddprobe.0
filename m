Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3002518E1F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726352154; cv=none; b=UGeN+usvwzmE1bf2eVVLUPgDr/LX8yTTwn0RGI7rf0shdN1c3nInbtAjb3q2r3fWhmc0z17m7Nh78Q/7dVDJQK6Jlwlt5q5RZsNE438QZyg9Sp+7pncbsJmGahEXToRhZd0tMblU3fx0NWRMAA0825j5dRllyOlm4VTvZf6/Yv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726352154; c=relaxed/simple;
	bh=5v7+GRjy3EX5X+bINUXjHqGvax5qTTfNzLPI7QcdZYo=;
	h=To:Subject:From:Message-Id:Date; b=AKojScIiOxsrV36aRT0tZW77DpUDdYomNPzhvwFNVBy25yqBs3EtqTbsYGOGev/h8WP0UmSvAaHfSXI3a3QmCR92Cp0gAuNXo8PmY0nOyueelsDD0wcPkAm3+x5ZMcl8nYeG0AqBdmHwMuuX3y4PL+lE+TcK783b4KsFEUz29ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEGdAHMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEGdAHMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69CAC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726352153;
	bh=5v7+GRjy3EX5X+bINUXjHqGvax5qTTfNzLPI7QcdZYo=;
	h=To:Subject:From:Date:From;
	b=SEGdAHMU3cE2PJEGn88sioGIm3VyXMvNk2rVXqIgiU5rNMyeY4PjEaPfaLDVyuMCv
	 WXGP6HSmFO16600VfKkTpvMoWIA8MdmLXEpkLTM+QM/DR9VJmiSBjbB1rccbwJ1oPH
	 +zLvbag8WXF4a0THZCfoWuQY3BAsB3PoZq7qCypuYAbJ2CR5knZK4P9Z4ZaFkBkpuf
	 sh8AhDnLAsIIC5cfrGJ7/LUQnZPU6WHOW+bi+8Em4SLVWkeOauGGT4A61aNEbnbUML
	 F6bpGPdGZdhQtVUQDmVt2Iahg4hZ+7FUZKeNjJQkFrz3IcjU8RrCjOS/WYizz3jMDM
	 Bx8c1bZkvJ5Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57F1C0219E
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635215366.11161.17585265824488668131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea86eb0ed0ecceeaf389caf77351a60ef26452144b75580a6a2538eb2490a8b
Date: Sat, 14 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726352153

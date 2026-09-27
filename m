Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CB3547050
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790467234; cv=none; b=GW3mGo/jp4bpgqpB9yGup5tG+dfc2PSC3gUaqv5x26BAL3tlAHcyQ1U1O6hYqWaBeoVx3lccvvj9J1Krb3GDz6hgsQek040NQrSQUmSNcHsG5hjTU5w6GELX6VgWs/qXaQAiIkii6HOP8Zp+ShLdMCjLG/MPqCeJsvAHTnZ7JBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790467234; c=relaxed/simple;
	bh=uRY3zELC5We/LSfX22Drw6aTX9ynIpFdT6UoZf0yzjk=;
	h=To:Subject:From:Message-Id:Date; b=EW15EBx0CSGFPkEhtVKK8zwf20EZwqJMJj73VDKzB82loe1xfZMdE7rwgGgDztg+gAM9f0r0YdseAC7sh3z6FfMvNLaO9nV3Ecyb7bBK0zmobFRseFB1NeR26Vqefm+I7JT6AkqxNX5SiXfv8kXto6NVLxleWIRVO59IHNnnJe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5OCrRk8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5OCrRk8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8191C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790467233;
	bh=uRY3zELC5We/LSfX22Drw6aTX9ynIpFdT6UoZf0yzjk=;
	h=To:Subject:From:Date:From;
	b=X5OCrRk80z4Kl6DYr901578zveZe29Ny766OoZ+EZ6NOnFnj4PmPaHGj+kje7REp3
	 +sdnvELDPabaSVWA6yiLIDlC6MOTuzLwuvTgkCHEIYAPbU8qXhUGuFwgFODXoKwWUG
	 BFxnDwJXFtj75LNXW/KIjTMvOP67CAh6qfso8Xe0CRR00lbBf00baTaCPmIQbIPuWr
	 b8kIyLdSJFvvEZEUBLw1AJDBUA69n/dYj27IlZko24/a009ylVlcwzPrdQVVuZeLGQ
	 SLn7IJAPrYdX1B6gRuIWd3sA4NcURwlHRbozmQFaD27gkeOJJO/RMUCZQb9+jfbgDH
	 j8PEdi1WimjPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B297AC98328
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046723370.8245.11643900530462013285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b559b9691dfebff3ca1418741be668872074bb60c1d3e33d2f0c4daaf45babf8
Date: Sun, 27 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790467233

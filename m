Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C9439FCB1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782121594; cv=none; b=klgVW5GJLMft/TgGibbocS/w/iWA0yN3yeX49j6j7vOJ44Z3uBb4W5YTgPJe7O1nM7M/Vi1RZo2sZNqRtKnLSP+4lvbfk3gfLAUv27ZFixRyB2LwcFXpTo8QBeTFCBoCm5kn3+B7utza5OTTLdHCkH1d/9hweS6YaqxjRDj/j7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782121594; c=relaxed/simple;
	bh=c65KjpYUOG6/V2q+EL9/w3zfEOkdXRvFx3DyNrSnCQY=;
	h=To:Subject:From:Message-Id:Date; b=P9miHr/RImxPn7xtJl5HMdzhRmTCwhgt3T/Sh/brYEM9uD2IX8YzBNi3b22LljxhOGpaxWzRYQEKQfCudhqwS6YHs21Hm6gqIS0/Y4vef3RkOm5XL189xI6/D2GJWP/ZOBqyRnOWjoRHwl2Ar5NWYETuodk1ee8FHB7ZY+DG7VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5w4Lps1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5w4Lps1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E30C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782121593;
	bh=c65KjpYUOG6/V2q+EL9/w3zfEOkdXRvFx3DyNrSnCQY=;
	h=To:Subject:From:Date:From;
	b=s5w4Lps1IJlAB7RR0lYL4hMm+MoD8TauwelNQzbizL7KDW2pS3NG7FKRn/8C6YxEG
	 D3xz7vLNmEjU+CLsQaitzHZunBrPxKko/vDhoXPJVgy74g+Oa5LJ1+OnKXtgK2y7Xp
	 AWWzDrLaw6qIYD8G8PevAzrjHqU+fDchCJu8H1GoJbwnWdNPnKg4+xvluBOmoekV5V
	 2V2LbPsk7vQpQezQyjoOlxYPME0TVvGQJQR7EnYWK9QqtUe9ah6AdU45PnusZTdQZ0
	 WZS5YhF27tduPBpES1lqoK7ZoO7twKX8SBgwWL2sJ/u41RtmUaCiYxL/45GAocHVPg
	 DS5l2fcGkI9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EC0CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212159372.18805.14121842833647987983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6268e138dbeb89a51848bbe12290a92df50861fb433c043460161864d708d668
Date: Mon, 22 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782121593

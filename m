Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F35548A2D8
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785864634; cv=none; b=Cp44CsWsPehjQFiiuOQKTyhmKuCPCh6G0rhRUBcPGH016GO0SgYQ7FSsULIVXdpCNY08tPK292kxdpd1Qd67p+wVfFbw7xf8hUaijilMNqN1EdCYTXVZZ7Svjuw65ToanWfrSR8urZkyCrwm7F5gkL5LaixStciLRZoqMiK4+SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785864634; c=relaxed/simple;
	bh=I6qMm2r0DAXI0eHUKUdZNdPygNY/neYrI4mKg97bSho=;
	h=To:Subject:From:Message-Id:Date; b=f9owxocWzfX8Y+gFWVlKHZ9PEVnNiE+1g6t/aFGqB/djtwWICOFkna4IZyZ8qdvSIRg2JXNv980/JKUUnGyneqDWra0ZMWW6nOH42aIZkEL4qfyrYoajYKlYrSJAKifQEZRYKoui1QohsXBV1Q0/sYqNxHvwdmyL3OCLqc8aPw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUJtgkeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUJtgkeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADE2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785864633;
	bh=I6qMm2r0DAXI0eHUKUdZNdPygNY/neYrI4mKg97bSho=;
	h=To:Subject:From:Date:From;
	b=qUJtgkeH7I9vkUUm9hFhMCnk9eH/GRBL5D6KFYbXX/gBmugPISMuMhSvxqJx866Q5
	 AJNOcu+Nyll/jhTsyr0atrq5Ku5qbAOJM8H9YZ7gaFfog+JXyq86/uOOwuMu6zkTeN
	 v+ZIWmr+F1QtzJVqlkwc2a1XR36uooqywqPeYHmQqqTnKkNYksv/9ikPGQT49dgEoh
	 FmIpYjK2t4tajXToOupP+bSAssYFDvJr/Edu7OhH9uidvYeDTak0j/oauU88aUARfX
	 ndHerDXFJuX/K/XAzcLrACUEPBg89rLrBUpr7fH98demnerSJJ4CswlXkCBQTG/Ska
	 uV1QG4doncjTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21FEC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586463370.21433.499591015752433730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e2972144a600fc57d14070a91e2625f46e24b29ad7a4d44bdab6626ea34488
Date: Tue, 04 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785864633

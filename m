Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559BEEBE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748824194; cv=none; b=mWwEvBzDdT2CEbYcFhjuy1HOWbSwnC57YxIl9c03VRq0gtBxmtNkn+W/rFGTn9Mx3imqQc3gNUPsWVpwv4xXb1/W27AtmidjmN7gaHREoVcy5NC+LFUMH6XNVYysxYjjXYUszVb/gAK+VaA8kdjt+fcghLpivPJ6mwrvOq+3A3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748824194; c=relaxed/simple;
	bh=HvZ7EXlichUP6/hrwmQDil0q5Z2njABBv6OphIO8fbs=;
	h=To:Subject:From:Message-Id:Date; b=XIDVA/S0tCeTG6nnNIDvLtKnmAvjoBrzBplQ1SWXjdrjoWATJ6rgIQ1VNMpo8ynQdYgJkEiYV05FTvv+fIH0jj6BOcSFbBxIlZAX0kyzsVDuBTotd9LJpvRobWlY5KlX28jV/cjsbJJXDhZ3KEXpIRD0Y6b87nq/+vlQHP0KqNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyIxZoxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyIxZoxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56E7C4CEF2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748824193;
	bh=HvZ7EXlichUP6/hrwmQDil0q5Z2njABBv6OphIO8fbs=;
	h=To:Subject:From:Date:From;
	b=tyIxZoxC/tVdu6ziZnhjjncizySYITlNpwABdBqBrXRPRKYul7e/hlkDkwZCwWPjT
	 f04deDy3MpL0JIC1iAk9WkWwVIVWlYHDxmTobc1nH27lrlcjIpyjgZOj5k7QiN+LWM
	 0JSSBw6+Bp5R6nHCr5yi0jCTekKjZ2Rn5hNei29P3BzW4aMcUjJg3v+CuxZ7ODa7Rb
	 iTKdquGXvWseMxo3Q2BZDhgEjjcAs+GRKoB9Zv+KGP7lFAqnmMyxXCUxuy0e3yce3M
	 +fyobuvyIBX/miXmSrzkWCpJy0b46flbnLOO9L0P9gNOp/AMUhHse23MOziKuKki9/
	 r9yPbYSsUuk7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E465C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882419363.21237.8824901076935076249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68745e868d239dda9f88b936a4eea722d800fbb73eca8ee1893353f15329435
Date: Mon, 02 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748824193

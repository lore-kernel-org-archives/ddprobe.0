Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9834C9F
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758949794; cv=none; b=ZTK9sJ1mVBBxAwU1Bqz9/pkju36733GywlRIJPWCGu3BffrN4TYal8TgkzEW8bzh52/hhhsqXrCuXxv66XfXhG0But7GpEEo/CoQlwlWlSRLitHgmIOVhz0RIaB50eX53V1/yWaySsCkqDgwhir9KM0kCITJrdpVNllx4euWUrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758949794; c=relaxed/simple;
	bh=TOnnBm33ZGKVoyCKsE27nmLjgOPQpZy3IvvtfmAPaI4=;
	h=To:Subject:From:Message-Id:Date; b=Hr44cw4CHJdrp/rHZkwe0QIsmWllgFmrFmJ0kgAv/4/UIveXbKtvw6dtNmi54/ArxYSngw3QFQkDh7/VuLm+4VJhfKoj3fUntrrD7i5uWEuA5gKwA2DQaBm7sQp+fpJ0v9iyR4zQhcaraa9gLi9gDYGl84T+F2dGPqKie9Egd70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/gmNVXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/gmNVXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7471C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758949793;
	bh=TOnnBm33ZGKVoyCKsE27nmLjgOPQpZy3IvvtfmAPaI4=;
	h=To:Subject:From:Date:From;
	b=R/gmNVXdhEswshEu9CUL/adBqidv6OoLRgNNn156PJyza6r9MKme4gO1C1Zcdt+5e
	 rXkL5O/Lvk539+JpDZeSc9+HIAfc68nh8UyiHaz2bqeo0XV4dM1HfPxKi2MCywDuwd
	 OcIv0jnJFeRbBQXmMF7pRMn/+Zjm1Prtp34BNUmVw1hMdO9+OG4qPGFJVG7wG7dorN
	 GVJQjKRQNcO3hXdHKesnHaTHD5PWb2QXJ1CNijcA0z3Jlf1yFy0mDYb/atbVlk9e+o
	 UcwHUrJE+d3IHufNj+kvNBz38QQtFlgP7k7M+priLAZgEXBVGDrGd1CEZAbOsQiGkk
	 pqT/T7xVVB0Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C6ECAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894979358.24543.1290906099664887333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a39b501ae864bdd890d8587b8f2f5a0621b80fe0cdc147e2e09c5050d845fa95
Date: Sat, 27 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758949793

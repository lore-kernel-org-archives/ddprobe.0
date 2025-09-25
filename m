Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE8BC8CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758779394; cv=none; b=DssIX70i0zwDxAIOeWOdm9C0uS1UNsN+4NJYCBA+TTOzOP2bHPlgjKsVNIJFQHuh/JtA5FNGn2OfOGOx/R0vp126SpUJNGyqc0csGga0/iGBK8nqHylxcmXg6/2ZzB9q61I7SaZvuiZLSA+N9gzt84t8hNStb9Ws4VhOWXyz9QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758779394; c=relaxed/simple;
	bh=spm3VyoJBqpFzVXpD1iA99X9vDPEoSMNYjRzYXG5ZZg=;
	h=To:Subject:From:Message-Id:Date; b=eet+VuWNrSGSyKCkxNpD4QpRZZ5Re+pYyRngLsR99e0C7gjVNApqr2MCG+3mbW+JSgxSi3ezilAUpGYtG7MeuYQQ0R4cCdjEg5ZrI6saq42Z2WIUMv7aEj/DyuLPWNgDd1RnRRds40GljTrWTgfWLG9St1tXYCwAOEb0OIqVSYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0SFvC/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0SFvC/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A86C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758779393;
	bh=spm3VyoJBqpFzVXpD1iA99X9vDPEoSMNYjRzYXG5ZZg=;
	h=To:Subject:From:Date:From;
	b=C0SFvC/mI/gyfYi2VcztN4dJ5YG8PAsGkGYJAyUENLktN3sHy3XyUZsgAtb9GOuj5
	 xqvGi/hTkez2y4tq0+0k6gP9q94uDelSHgEu+iLuoWHSXdVKkxcwSNZ1Z3oPYl5Zen
	 83onZl2rauQQzoiboRhul9lLZD1CQ7nrU73JDp/4nnBxYZnegu8+vDLaTipaRAX1QI
	 FHoX3Wfd9EZ5OgK6/7B9T6ZCK7L5kpaYWYKCo4tBtP6qPDGc5NqDyEEFAJbG5J3Dj1
	 VMeIEJljS3z7zvnycj3Z/CFanIecCz7+ek0LKoj21DUkW+8VhyCHjWBvtoZQdmQqKO
	 4DOLVA8daS0Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927C5CAC5AA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175877939358.18132.4509602721579734646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27549076794611d6d4730a551aec029da2a8f23ed2268a7e90c3d4fb3909b94
Date: Thu, 25 Sep 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758779393

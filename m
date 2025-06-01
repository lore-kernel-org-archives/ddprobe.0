Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0B427144F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748821193; cv=none; b=Qh7il8mxTBjGB1bgtqJb4NC49GLnGT+9WsIobZNYlB6tvfGTWp8ezL1va4P94CVac8VTzTH+1aLvVZX7omcqQgwclmcHYNWqjj/7PKdW/Ct5TpEj0I/EJbhqqwXOjG1Xi06yc1b+N5e/T8AHpxKw2R3heYcnZarhWHZycw1F2mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748821193; c=relaxed/simple;
	bh=S0NAsGHzQMeOR2JwBnN3Fl88ORR46im9L9bysiPXGaA=;
	h=To:Subject:From:Message-Id:Date; b=XOpzCjhIzWe7Ks2c8JtJQhN/qvuuwUPW3ORDOwQCT82wjXkdzuJrzVL8hVcteUoPkrKyFoyTXEvzykcHWE+AWTge+C51qXau0mIkrvGnL7jISojZydoQUPoBGzIXKjV1eSJW+VrKq2D1LWtilbZl8xLFWqvvO7iuCftHb8NU/TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dEKSPWiA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dEKSPWiA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF14C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748821193;
	bh=S0NAsGHzQMeOR2JwBnN3Fl88ORR46im9L9bysiPXGaA=;
	h=To:Subject:From:Date:From;
	b=dEKSPWiAo38C8zQ2JXFNU01sq2wyxorRITHinFicJXwD0VvailYB6RLBFvo5I4Pt2
	 oyPB0FgfyF4GyA6y86UjcheWrAPSikRJVShG3gzFoaD1QSeb4r/npp8LrlG1ej3HFF
	 pbVJIj5zSnAJJEaDSZ3YKkMt82Ker3fHWE4uMemKWN74h+LYprqPGIoQa3n3eq+whd
	 dZPiTkidwLDHnOryi+eZQHDkGaIAPOsLsUAjtW98bA2Wxg4jT3sVo6iK80J0TeFFiH
	 w8xPCcDP8UssRrEfR347b918yBX+Ri9Aim1DTT7+ZS7V1WDLW+Dxh69nvHWe3NeFfp
	 gniDvLWMFbvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF58C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174882119363.9938.16474111283497659148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb964fa5435ccbeeaad025c2adc589f025c748f5f2a72fa0525ecefc245ed30a
Date: Sun, 01 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748821193

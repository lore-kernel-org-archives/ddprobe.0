Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE92419FA92
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724762154; cv=none; b=nJSFjhTWHWPlUGt54e+H5hHMjHquIysg7iB0OESwNpgThCDJS+nRaSMGRV/FuGVA0agID1rw+/7AMEDbRbz5UaUOUX8caDwjzzTZLxComn8wqT2OfqJEAzp0iS+NQpex630M0Evvy/CcpOSgk/kFPu5NGFzlcc4JSTALgumSv9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724762154; c=relaxed/simple;
	bh=LQIGVutol6vkeS8EZ7jbSQ8EJp+iAv7CY8yLb8Xo5sg=;
	h=To:Subject:From:Message-Id:Date; b=XafeAjWXsUmG2bn30hFM9UqW/O0g1v94rTbzMJ/WPDWGVbhkmdBOiaTyTdSO3lTrfp+/FQxbUDJUCizzsJBvzoeDKdIva4ZX3EIXHD65hV+L5gIyF3w69CTNUWH7vUTZfsy5mteMQXIPeoPxRF3k8ny80+076rIffjYJ0eirgRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fgb+Qdg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fgb+Qdg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3978C6105C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724762153;
	bh=LQIGVutol6vkeS8EZ7jbSQ8EJp+iAv7CY8yLb8Xo5sg=;
	h=To:Subject:From:Date:From;
	b=Fgb+Qdg9kzzV8VrsK4lGH3OfboM+CNwwKSiDA9cJWjJl2KKo0F+ZR5RJe7Xxwpjwv
	 idLDWdP0/Y0Mpe+ZbjCElu40wC66Ki4gzIAQV0dHEQDaxd+HgYo5DVy+5iOGkUpq5R
	 QRehAwrmgPJMK4c4bsWVfLnL84jn2SGgRoFTRYdd5XiHZAjW5FYCQWWAi/uZBTIJkB
	 91cY50eDOgsUoTEA1n58Nr9GOKZcTE3xe2PaDWcrF6HKbcl6blFEkdRVciMSTYump/
	 FVTyUWl49xPq7pqwXvdZ0m+EG1cfrBI75q/HW+lSqmN7wWnfI/uJ4vEWmWsoTFdN59
	 qpBgfW/5TDkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D675C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476215363.22627.7715563230307201844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88827505e6cd0ef4f77cb13d0273a4cf9833e0fe8fc813c0b1bc85af7b5c6fff
Date: Tue, 27 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724762153

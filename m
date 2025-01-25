Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C98B1F9428
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737779154; cv=none; b=JUInopjCu1nXhAZ8vW4vqG4xUvF36oISHiaY6V2Rzx3P4ajC1h8txSkafbKo969jZX1R11qTfZXMXs8Y2y9CP/HRDkOpdawDzSDbrEO1QweramwutuBHT/wZQQs1TlxEZLcMQwpy3pshooF4m3G8eXQaC3XGDDSSYYo3GpaLwiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737779154; c=relaxed/simple;
	bh=Gxhvd5/cu7X7jerQnOXdQlN/N19aKpOzrQycN5D4oDQ=;
	h=To:Subject:From:Message-Id:Date; b=UrDAi30oO6QJvKfXKkBJ2bkqhjqOnoZBycfy+E+G5IxihdtqCde0Uw4R/6NpvCpMi7iez9rTF0of+VfBGUdjdnkxOrexppWpSD2QVe3gm3lnYM4ZfycPW0RXP2UV2Y2BSrdrTkDBkFb+ITO603eVnpQAkNwSDlBsQWhqx8Us3+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/vQr2Q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/vQr2Q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AEAC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737779153;
	bh=Gxhvd5/cu7X7jerQnOXdQlN/N19aKpOzrQycN5D4oDQ=;
	h=To:Subject:From:Date:From;
	b=E/vQr2Q8yumO7l1Ff3zQHcqfNhMajGZ01x5IiloHgoZ+O37A1qKXkteLdl38n7FX2
	 Bp+3jTI+0ZUeVS8gw+yudAUa/csDbNQmHcFyKK37k9eAvpJAzemNZZkPzTNoA6npxI
	 MKs3tTAe+fNMIk804kG8c1UWrQveblK2Xc9hdmXO4y8wyyD+pje4gfu+Nqe9UlP7yd
	 X5aLiO278d4tU80lS0fQZ8fFIw7DGoDJYyuzl91hWQLkP/Lyc4bZOZUcXvws1RgdII
	 VpTMb3Yj66Zv3BUN+7NRG74IYDVnIOYvlvwIGkYhhgzfxKySz+cP1P5kobCDLI02ko
	 v+adB24le2FEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42EC02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777915357.31146.2633251038350467921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae70cff7dda0ce7d5c33d7d239c6a9391cd5c27eff4fa6e3f95c17cdbdd06c96
Date: Sat, 25 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737779153

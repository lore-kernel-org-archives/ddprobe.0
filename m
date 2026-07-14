Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1498E381EB4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783996714; cv=none; b=WqkEyCpDrWAyjmyCNAZwGkhke77H1WbxYBELUnkrB+p1n62axeV1JSSmRCoU0/BOauxbzLH7HC+W1HCSFJerZnBHGdxty5f9lLY6v9JrvZT4rRxJVqmUIyKWvc2Pdnjg1gPDHAFnO9D0ZLqw7mBN6CymSSRrwOir8+v5TavJUcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783996714; c=relaxed/simple;
	bh=9rx7nFXMRiWlX22DizymBeVuMQncfyuTZX8Niu0pU+Q=;
	h=To:Subject:From:Message-Id:Date; b=ikNmtOHRSRinSHvYIqF9+hefIYmh3k1lsj17QgxxM3MlJuomZgpvfy6kHgr7+QDrLkyFgOhWi2r6nqNB627GJjlL0nuLjm+4SnMP22C7ec/OdmBOH2xVwMSu6aYGI4LpgsJE53aUogzWTzRfqRowW2bLLIGnaIvpnn+llwK0l4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4APe9yM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4APe9yM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB428C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783996713;
	bh=9rx7nFXMRiWlX22DizymBeVuMQncfyuTZX8Niu0pU+Q=;
	h=To:Subject:From:Date:From;
	b=L4APe9yMnST1ej5yfEiBGq9IP+aIWxkDMlFnXHnr//TAouJF3bU8A0cy1LPxjez9J
	 hQptsmxdTLC33faAnTAxLr27fvHR4Z98f5GEelo8laMbAlFyxfKE69WuAhRoTXMplB
	 G9K/XRCnlQyfKbw7Se0I7JH4Ix67frw5v424EyHd+DUGGjmAy+LSERQVVNKwmRRcXu
	 qKCa7xNYNCjzH76BH7eUUZZfpHNpppr3WExhqTBq09YruK9HU8ZD+3Cidel4UK5PrU
	 jLF8GceNc9XV5N15wzzbliYTm16gH2ESeX0OHCUDO9VqfksGDU9VWp/HgBwqnKzdji
	 eEu0rbI8IpiFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91DBC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399671368.9200.16245097335470742203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6bda0980ae190c6e1df18bd74db043b022d50b490a77ff7fcde7d4d6db5e75d
Date: Tue, 14 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783996713

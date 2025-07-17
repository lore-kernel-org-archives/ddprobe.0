Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6762F7D06
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752764394; cv=none; b=qm1uOMJVBUu4Uspl8EXjPAZ73I9UNVt2RXLHqGSOlUShy70KVSBk5YVuld2UZeKLppmhhmLgBMz7oE4PlZDOyLW9OBw2fG3HKNtD28pTSjFIhMzFIKYnPHNVwmIoreELcML6j6XKaTu9uyE8M52S+m4UTGBZCg21Im1b3zCiOHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752764394; c=relaxed/simple;
	bh=ehwBdnlNZLtfU13GO+o/sACuF6isXa/Blda5ShSYFxw=;
	h=To:Subject:From:Message-Id:Date; b=lAxj+/W2gPyBiN//hxTu3KELxVkNEnjpTgjxiqt0uIxiU5mCTSgYpgqIVPzQVel4c6gR/+ZQQTQg7bhmcKPjTSYMPUpyxIXpN6Zgl8dlliiAelqQu10YdYmsbJbvnAEp213+gHh7eDc4Bt+hqFMCWOtvS2so6H9i92lETvgqVKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQrV3znW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQrV3znW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F927C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752764393;
	bh=ehwBdnlNZLtfU13GO+o/sACuF6isXa/Blda5ShSYFxw=;
	h=To:Subject:From:Date:From;
	b=DQrV3znWMY/NiLHeUpuAjjRYg3ADLLJH9VaaRDaY53707HrNHSdp7qS2MiEJmotoX
	 mX7EAJvRlzVmRUzW+Pn3rASirAGtlpG6t3kcrWtHD+Lv76WFz4SG1MJtjgGHjMWdtc
	 kxvWOThq0s0wGDz10AaOXTqOW8UkWKtM21NRvua9dVUPQykdFh5mLS35buqlJcZZXY
	 quQOGD3x9hA9IMzi6nT+dhJEcPrdr6LIOlUJ7hTTI9RmP6VBj+9ugRa0/aVUvrX0An
	 giR5AdT7GfDsRoF2JrLFcTe4C/+LQ38tkIczMEvb7uhTfAQX88mY2y1dhv/ucRqlci
	 JN49quuMkaNsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6ECC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276439357.16387.8704542845904800259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3030920d7a729ae82d2d749a6f6173c42a773373cab722e777d4c3f48642d7c4
Date: Thu, 17 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752764393

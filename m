Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F343A7F4B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780542874; cv=none; b=W+th0SEaXS3ZuPSR/MQLgoHAIxaWv42ARmU72+qIGfdxh2JRHujkmEEu3cN1bFdWd6Woh5zSCGI9jDaGny65jspkkfSTbTF3iKckn+ng0zz4DpiY3P5Yj7Y4Z2RqfTkN//HZ/wST0EAnuFDjxwQDwJiqfpLWXCZOZo8bo4UzpDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780542874; c=relaxed/simple;
	bh=6/6oEtRDaJH2syIbrs4hHQckAnbmqEE4Bm9Kpu+P3tA=;
	h=To:Subject:From:Message-Id:Date; b=D+pwy5fZKCTHmG2uDvTJIpzloa30KIEjazVeH6X02lWT3yJTtLAYl1RSnDrouVqnLLB9EHf34VCZfRtu07N+s7mcJVTmG/9JdJ1Wu1MiY+DU2ExO5zLXQBffhHWMwJddnXC6UkAChE/ht0WHIfldWbiIqO96FJ3awW1o+bSDXb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scDCzjdf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scDCzjdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5680C2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780542873;
	bh=6/6oEtRDaJH2syIbrs4hHQckAnbmqEE4Bm9Kpu+P3tA=;
	h=To:Subject:From:Date:From;
	b=scDCzjdfwYlwaliXsynZdKp+YBaFICyUwViQ1FX21dM3v6ZCKWakksBDYon+Q7Qpb
	 Qi/UtDkO5HpGcF/DBNkXX5F1f3rQmP1oZHphWjDCFbxsz6lE/TMMhUEGjx4ecte7ey
	 m0JrsIWjprBzfPRgPq3TqIBycDvPTSof5aFOy2NtHozHXAOtK1jJjP8cM4raa2XCq5
	 C3BIxA0tEPRmo+KCesWcm/dgYMIxf+uA190Ia9UYEk6hSnS0bA7Pi5JsM7J1veSl+E
	 gXDkmfBDmv9HerBIPq1ZmljzX8qRGOWUvqyg2mNPeIv/YzWJN+G6Qn0DTNP9bFK0Ou
	 DifUTx7gC8brQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA753CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178054287368.17567.12681885742494796086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e684c0dd46762eb0f9eb4d1f6781219d636e3a394b9f9ced7a7ad1f00c10a579
Date: Thu, 04 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780542873

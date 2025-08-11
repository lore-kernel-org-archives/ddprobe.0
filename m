Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25123311C02
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754940594; cv=none; b=gJ9yACQUzwHXyD/LBqguM4x0sA0NRrLofOchAKeoDR2eE8a6uFZA6soCRNmXAqpgEIDm0VOKFovFLZoigBwatSBEW1nHHQN+g416WOv4Kr3wc6THSsbhmfqvGVwB71KbN6zrqPvxBtsQDnH4G5T7iNDw002IMoFp1nG9OpZOxv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754940594; c=relaxed/simple;
	bh=wy39sC6e2h09nrlusXpqScW/diAofd5FlLfyWvz21Jk=;
	h=To:Subject:From:Message-Id:Date; b=DBGcWI9ZPZ7P09TuNHeBLRKQrnwhD3lNWXRsnS/EPQAj+CZ4d/qxMqIBg3LlQKmfvT51CiFaDhH3/TP86GoXXmw2ZnVs5tkvtSb5recaNfb+Eh3B5QxTECmHELu4OCXey3yqrpsj2PiMGOczmsARJfj8F/jfRt2MPLvZ+ZkfvyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV+0Rc0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV+0Rc0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8F8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754940593;
	bh=wy39sC6e2h09nrlusXpqScW/diAofd5FlLfyWvz21Jk=;
	h=To:Subject:From:Date:From;
	b=MV+0Rc0poSafIUI9s+O+qU8718yZXtV3W7aS0XMuDAxc8Fd+e1UHm0CWDJ3f1I7Wr
	 kGV5wX3RabzwN4xapd38WRqPu/4I17zv85qtq2Z7gn1pB2/XrLlgqRCdRUiyVGYE9C
	 SjnPFQ3j+NdxEk+xpw1ZWBvuyiSFhXGTjwdQP96pvAYs0C/T/XCUxYCyiE69CbFd9o
	 UVxgHFIYAFW4sC8KSlwmlV1MTEASqOzlSxruFHzpWXZWD+Rejbd40rK6J1kDhhteEL
	 xa5Cie312DiPzt7c0TgL2qL758HhYxwVb8pas+8OqHFnXpxfigUjx+A9edkPzK71f5
	 VByqwbK0BIeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAAACA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494059357.8525.10688494634509285190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9900e1127250d4329f27ef52042e0bc51bb6e2f48a0923dc46b23dfc9c6508fc
Date: Mon, 11 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754940593

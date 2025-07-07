Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27370293C60
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751886594; cv=none; b=FEzCXjzjZc0cvZjvnDxVEOB6Ul8vsWo1F4gHoFpjVH/X6nWx9Z1gD/cSShKmgn+pZx2lm+h9L5EiztSchg0NxqcmP3vgmHA6dKZJLcfUdnrl+j6ejlr196pB5QDFDVubypGcpOcnslpDyVBb2V9TXqwMz2z04ZeEfc9yldey/iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751886594; c=relaxed/simple;
	bh=PcFqCA0ZkzsJwUPhpfqf9OL5Z1pMoiU3mYmNh+oavyw=;
	h=To:Subject:From:Message-Id:Date; b=eT3xq2h5e00mkPIJtjHzTtnNLUgsqC5s4qdOgBcIh3/KQZzwOlVDQJZ7NtgszuP+cijBc82uPxQbtfEvIvp+MqjV31VmoUCO3UF+wasAHKA3+KNXU78l+9VCCoyCG6yN/C7lYc6pfg0rXj7bttJ4DeT45Z0flmjdisMOyL7amvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLEyTFDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLEyTFDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C822C4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751886593;
	bh=PcFqCA0ZkzsJwUPhpfqf9OL5Z1pMoiU3mYmNh+oavyw=;
	h=To:Subject:From:Date:From;
	b=rLEyTFDKzGqnHUUqZ0PUSNtuw3rPBSM8R9w0UXERrGmz+wGny+yRtUBiereOdr0kd
	 2sC9Uy8Bc+ApuxKqT8V81JdbYoIM0Z8gAsIl5bNnXJRtCk3Eewf+YiBYecN6kuf/lh
	 a0fZyomwtQrDjv2ucmQ4ONUspr/xQ4h+2g4S+HMVlHZR0Kf323QjnbqSE82p7bUCoG
	 VHQVEQ8lTU4KqcwO9mxYyRPzSnJ6XIGzHGwdTga2ScBSCoIi6E6jxrqO2df4Qb8zub
	 cN7EVnv5wzILIB9wTkbaMVGkLillJZKkufZPOfcg7ludb44upzQ2ZoFckVsRa2xIFP
	 TdjqGCpxp7Xsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF9C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188659357.24032.6906881728595861986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bce49c1dc1c99755eb0c7d6b7de8a8f819b020520a2afefdbef23b30f768078
Date: Mon, 07 Jul 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751886593

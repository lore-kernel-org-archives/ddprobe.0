Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF6F320393
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786564234; cv=none; b=L203+yIrjT7F5o3kG8ObBu6jg9oegfztzOhuWlO9I3Gdq2ChTONcjCmVKFZXCSKoKDR7+I1asipDH/pDA6gmuOZy+9VoyvTyWOBPzpMA6yGDqW5WKb5iMWX7s/8y9aI/fDCjYH/NUJugB7F/SAGf4yd5Zc+aDFsa0SprzlIUVlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786564234; c=relaxed/simple;
	bh=md/rWj1DILhstAeySDS77tBbWeVbePo2Dc4PY7Y2UrU=;
	h=To:Subject:From:Message-Id:Date; b=LDdYMjSF8fsZQl1hvm7E6B8t/0RSRJrN0mhAHcKxMKN7KcwjSkiRcdtQb3XIPctYxpLAFMLp25r7/6D7JhC7ELNgSWiKZPMkkMAVFKxpIKv53cuoGoYsqJYjhPGztUmSSnKJjQZIqUM0heNfp/P2EttcSHNEbjhaqFfG/N+h0rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrHaODtG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrHaODtG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC7DC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786564233;
	bh=md/rWj1DILhstAeySDS77tBbWeVbePo2Dc4PY7Y2UrU=;
	h=To:Subject:From:Date:From;
	b=TrHaODtGTKMumGoUZdI4PN2NNu0Wc9Q8561wR8a3bXqr28jvgmbHoKmZ8C50HPGG1
	 +IndnxMDgZjVJBRvmhpqO2vMh6uqe1AzNrDbnkMOVbtnBYq9OBQiV2yv32KcqyaaEq
	 to3yEDZPm03XYRS+KvkoFYpkWj1Sj5R1XBUnxF/ByQCPysZYpn4iK5kyhTWuMR49ia
	 oApeTKhDJ94rhPgfIYrB6bjqupCJwEbPlXm+RoGK9lVspGlC/wxMAUOiMNXZ2ioSma
	 628fRHkOtOaHSVN3DEX20nNyiIwVGgZ/F3r6eyLqpWmx/0or6Aa6RVOGZMB24spl8e
	 Y/UC6rsn49NAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9368C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656423368.14027.1270913762006429938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22059bbf6f5ba66dc0e9a8f2e49a0702960d69e316c06434aa597d11d8e6958f
Date: Wed, 12 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786564233

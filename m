Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4578517756
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725428754; cv=none; b=ajEoy3nqutY8H1Ri+R24TxEFTMuCfDPRSw2Xnvqr9cJllA8EVxpzOfXzoxlCvBbHUfcQxnSj5OQusEB0+QRAuBeq4YVYUDe4Y1tkKWTddMkKQRPIB7xPbjf2ZhLlqne3z7OncL0oAY9B27VG4SzzDvZf+dSNONW3OV+P6vUcceY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725428754; c=relaxed/simple;
	bh=UioHpML/J9tMeTa/vzLXMqRQmrorQiygmQKelONd8dw=;
	h=To:Subject:From:Message-Id:Date; b=k9BTKpob2exjCO3TZGUInLmebt2cL8edUIH4DoeRGvj4INGa2sC4q5qtKGHvqZFkDIKfnQuaI7BlHe7kQMBWszOr+QAmC+uz9kJ2gci7FrH5FhVf792AIw8tAPChH8Ba49JEclZfXbQ8xurzwhwawDP1SSjj9iuVX28DQBijZdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azc64Are; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azc64Are"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5ED2C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725428753;
	bh=UioHpML/J9tMeTa/vzLXMqRQmrorQiygmQKelONd8dw=;
	h=To:Subject:From:Date:From;
	b=azc64Are+3KSJgdqRudnigyNPnJ2uXvGSIVquoKnFCjBYPvsjXHLMdQT+5VUuxt2t
	 lXIvd2me0D2Vs4NT4cCee2HVLbbvTCNYHVC2++BrcVoj32kCd4zsz8tX9KM45gjDko
	 1Ul/celL30WNfXfigVxQNVEnDfBFATZVMaIUcZRMTWFlNVNJAiB7wYlZ3ceboBvcl0
	 PnhlZJoadWdyUlsBSQOWZDtBvx4S5l3ZqtvA8vwIIr/y0MIXX6Ce12ibwrmjf9fnA8
	 GPf0dPP7pw56AViyZqPy6ccly45YiqGZ1tX/4iEguJi+HE1P41mNoAGLXslyin+xo5
	 VkVJ5gCrIiTKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19B4CD37AE
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172542875361.2878.5293674923824348573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f1194cc4f389b50c9b683078f85425fd53c6b9e97758db122aeb494ad0d4b2
Date: Wed, 04 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725428753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B86B1AF4D3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724938554; cv=none; b=OXbazQ7P/ZZNx+pREBurYZ1qx/wJ4Dgdd/H1IAHJrttdNzys6tzNed1IQCtQCEpy7NaaNaAe6OQGWGH2O6HvM1ZLlnUVHKvachffqMgfpA7FJVVwqXoUZtnFZSiovorWxm0qyNmzieGw62CSMbbG+pc1ODML899xYk1/bwDpPQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724938554; c=relaxed/simple;
	bh=7R/mG+YytQVSKPtTYIAB0Y9mL3xa1TZsO2O/wVB+2dI=;
	h=To:Subject:From:Message-Id:Date; b=U69YMsf7lMQTc31MlxBfF7kdMIiPtf6jiRDzJYgx4klOkffx97+89fgmr/PdkJ6Ct4k1H6DXuiGsnRblhJp2G69u8xRBBZSfjfycMMeAbl+0qdgK5pWeBjGI5FeJVIVbyoXnlWtRPKpfT5ZR/qdgda3ZOH5fA1IjaWVpbE9qsGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4Zf+ydY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4Zf+ydY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4424C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724938553;
	bh=7R/mG+YytQVSKPtTYIAB0Y9mL3xa1TZsO2O/wVB+2dI=;
	h=To:Subject:From:Date:From;
	b=t4Zf+ydYVhXDI2G3jm2QiJxE3uGOSbIiLfPzNMFkKC5D8MtJVaiLvwdQ/QUQUb4qq
	 RbvWtMxb/iU0rpi8lXrYwQ5boxInMTOwvNio49S1c3Ih3HTgVvWs1ClRRDUKi0nCFw
	 n+7DwYb+dmthPbOrt9LnOFyRRQNtvPXVKigfRWBnPX3B53i5oIcsZi59I+1tW7IA6s
	 PGe6D4CTfsFdOLYMSJP9/yk92Pq1yKP/OxUew04MVHc0Yq+mexNSDZCykP3BtppBXq
	 VmOhbQNaf9QBoN3xeTyXvKW0TKAHHyq4k+5Cy6MdwVzhvn6jqDI7hQ8iSgMKZaI3Y1
	 mXLx9ZqFLDxrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C1BC83F22
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172493855358.9692.4581857852359288918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12ac62a20939ed9facc15a19dd22d84e8cd8a84f448576b782db41579551272a
Date: Thu, 29 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724938553

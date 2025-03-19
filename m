Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266AB1C6B4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742344794; cv=none; b=HoqQM9CnsJXoteARyDRV0WmdrrclljRv+WTB+vIlkTNgjPKF9TwAPcEObsSNNLYt+uQKnPsuUfKRw7OgO8BJTjqA6DmtvtYx7Gdou2ELmdK9qTlcYFRreGtlHbkAdq61Zco7fJm/U8XVpfohb49xKzWzihPaCWsfa41Q5zP4b/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742344794; c=relaxed/simple;
	bh=ptInKyfiK7BxK1mHJfvD3U3EcEmGcoF3UW8nxni1PVA=;
	h=To:Subject:From:Message-Id:Date; b=lCQsSnMU/mCFwmlqe8Q8paV7f+fTpuIz8Hnv343e4GBnee2zV7o9ipFLmzF7BtYQACuv2cuCmvzZs1cBkecqEB68fjYRA9xIW3+nVejO8fMej9qz5pHE3ZRw7rAeB9zSJB789aA58bIk/JQgqXEj+dZME6puBkE8MyLcizZaEKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrVmSA3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrVmSA3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4242C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742344793;
	bh=ptInKyfiK7BxK1mHJfvD3U3EcEmGcoF3UW8nxni1PVA=;
	h=To:Subject:From:Date:From;
	b=qrVmSA3jSJzhEBh1ifiiaiwhNnMx81Dc6T8+C6nRdZ8LZaJuZbpbuo+rKoredSjY8
	 KOcVJFana7Pu/H9aZUq8IrjPzEWucRrh4WBrpoWXq2u50b2gpklv6yG2yqz5nil+kI
	 hwGuHpC3M2UD8Io9kkFcgA5shI2kGXbDpdWHHV7kbbB7avP0vrxWWbXtvAExq5k4WN
	 KJ3xmF0zJsYWj9ER64wHbeiCmw8JSwClrQphXAj2nhqOvxTr1gCq/RD1qgOaE81VpR
	 5ZVIuLpCP5PKr9YgFAE1KrtkZTiZoagxYrEVO3fNLok8m0hQoyX0z5c0zUjZx3UIAf
	 nnR9iOd2I1UOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95783C282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234479359.18876.1628934901934401622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddb0bb04b8bdc34ad90a7c75be2e41b468e2f41faf16a97438e51834e9958f4
Date: Wed, 19 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742344793

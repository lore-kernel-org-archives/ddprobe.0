Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B93299A82
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747944594; cv=none; b=iyCpgrQlnC1GxjaLQTq6kXa1fTmXu2vB1j89KhA7FXga7H1VyIrF05P099FsuFdJ3LEHDJmojj3Xb9J8F7gk5dahJAcXgcRTfeB9TO9ZqzDK4LTNv1Jo76ye8x8k67Ccxw3m2TcxYBkYvp3ZIbQEUf7HcB0O992oXK7JUk03iCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747944594; c=relaxed/simple;
	bh=LfRXjH3ggMoPuI0bVOMNbLOIyrUrsK1+qy/t8QmvOz4=;
	h=To:Subject:From:Message-Id:Date; b=N8pJapN5hOrd2inIWOHQ8WIapgweZbiT40XSvKJfbWRReO9a1LOvqYNhyuPBzpj9QUwA33dGMXfNbgZyY0oVFXD0FN9kltaCOfod8dag4uLL+fLpGlwMVVva4e4QyTlY11LHfF1x7QRPdk1Dkw+1g0nDR34Hg1yjQuQ79snhvRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTeuDV95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTeuDV95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7127C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747944593;
	bh=LfRXjH3ggMoPuI0bVOMNbLOIyrUrsK1+qy/t8QmvOz4=;
	h=To:Subject:From:Date:From;
	b=lTeuDV95h/cFKRjtunRhGOcEmg8Y6hRnlOUauLeI9lnNXUMvihsiP27v3AQlSFXge
	 FvsopRSCk3EQ1wlQWplDJrU+4z8sb1MVQdItpIK+buHx0mb1AOqkH446GawKEZIKKW
	 04LFvk+8QyIVkqlULKs9PU2AVy7W9ueURHP+1TUU9ek/AZkSc8w/nTX+qG0Qwkim6c
	 8zqyVZzSVMC7lWX+8ALjvowh5OJio/xxHW/FcRt9WcqcR8XRJtnLMqvkEl/v4nt3Cl
	 iSF7SsGn9VSr1P0GmiWfmMf0otRIi3zGqPYSJaJs+hENKvFuFkXmbLE/pAzDOrs5St
	 oxETK65+VKBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94734C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794459357.5533.8642882874877206810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1924776f6e011f16e95acdf6e74407e121bebe510827795f8deec9b8d1fbd0c1
Date: Thu, 22 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747944593

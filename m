Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417991A23A6
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785890434; cv=none; b=gbw1qkyuwrv6irLle8kGCHhe2uF9IJXIT60DxYh7A46BICYrN1D7NkGPggfis1TKzgujW4snMCjpIpkrcEU0cAuE8NlMDa+YHgXKZzKAe1HmfAKNFHyp7Umfx1LqKgCUwhk/GIC9GaaDX5myGhOevL4+b49Z3s49WfTL6Txa2XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785890434; c=relaxed/simple;
	bh=fEsNdDEHYgPPITjYRgTEk0zsJ0BA8vwU0vZXRnBZUAY=;
	h=To:Subject:From:Message-Id:Date; b=D1p93tyIAg4n38jECOI/Tqbjksu/MPT2IWLqKDZegOvVc25QvzWeFk83gd23uJEj/S1+TdMExT81pFCCrSRIpj6n44A05dneHf4YAi7rE6N4BrVGxvafiiZ2h3VumsB9wBRfkjKIZZ7nWPm7meF+d6lO26wovqEc7HTKuvqclKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkkyFFFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkkyFFFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F4DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785890433;
	bh=fEsNdDEHYgPPITjYRgTEk0zsJ0BA8vwU0vZXRnBZUAY=;
	h=To:Subject:From:Date:From;
	b=lkkyFFFylQtzIten90mg7Xwo2J3nLLjjWTPL35Eyt9sUH4j+xmdhyPG5rIOSLeNcc
	 0exRllhADxlau7P8ckU8nmyFsBQ04qHUZS3Fi7jTzHg2k9VKgSQXttul9kVqz8vkB3
	 f9HAK3UoILhVDESLM0axgxXbA72pg9Eg9KwWfnGAhA093jjrG6v+zNd+RgLv0Dvf8S
	 LjHK8bLnORXbTyaSTsV8BtxCXc6xB+s4ciduXChnwDXpMEd77mfpFtcxeOu66BXEVk
	 n6ZV3/JSLhLJnTlf+dfV3e8Q95zML6j46tX7lbKr/r1pzRUEdxgaBVBRqsLZ5xNRN9
	 FDIvQH2uAoL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14CC55184
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178589043368.15826.706532832567754974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e82311beb783629b0fe1fb2c80414af5ccdb57a1b26deb8243d7f8592b59b56a
Date: Wed, 05 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785890433

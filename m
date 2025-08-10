Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3223423312D
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754809794; cv=none; b=rtHgJ0IphvSxS8hEaNZkSqBcM8T3gusBb//oaA1UpVHLGZcEAA51O5CCyin42fMLJIc5n7ybn3hefoVjro/r7e5rkKmwC3ofzVlwz1OJEYsP1vG4MleHWmIB6DNPo81ddns5t/VEp5RiAJcoLjSganK7bIqOV0+SM6Ww/bTzYIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754809794; c=relaxed/simple;
	bh=26AZfDp5b0obIjXygUMnnjZxr95y+9q79UGJ5TQdNps=;
	h=To:Subject:From:Message-Id:Date; b=MseBtfgWqCY5QrtCY8sBvi5svme4VqTezC10VoEID4QA/1O/VsJ4bNrI3IiCAZu2v+ZKn9KUiQfD7YdIssAPZXYoPo03Rmp6RMi/MAwe98ZKq19Vqx07CSTH5f4caWJfvkMnVUgFhoI4YNdbwjeNMccnu0MWDHrNyGuKj9QPEm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcRUwW0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcRUwW0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A045EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754809793;
	bh=26AZfDp5b0obIjXygUMnnjZxr95y+9q79UGJ5TQdNps=;
	h=To:Subject:From:Date:From;
	b=EcRUwW0BtUV4DG6zrS0tarABrEN3OFjiMFlhY2eYuIfnHuCBi6nLUH+EQduVCoe3r
	 6/fPNkQklwVN4TH27u/ubxPQxvNM7w+QM6yBCakwRvysiVKKire+homrRlci7T+OwD
	 V0inOOHFb9fSPDghE7ZKaReSDeXXeWJ23NPi77+7xP0vIbW3LyrZTqUhhiLT/lTsfz
	 diaGtcxZkexYl8exeKgnX4oAUrk8klbwwC8L1lyhqtcliIGq8YpARjRsPbQu+qVUfQ
	 66pT7dU9hcVwc4rfJFTz31gkhu7iK7SNbBa2Fl39akGO3Q9hgUmMsLT7Oe08Lkeo79
	 lNrUp3Q+3ddPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B2DC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480979358.7619.6254768065389211102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3372115707a70cd272d60025f0ad7b1fee5708f741c472def38084b0d4f35cea
Date: Sun, 10 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754809793

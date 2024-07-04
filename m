Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53FD91DA313
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720057523; cv=none; b=RILryxUpMupKulsyvjwtx5U5CPN4J94LhObBdVH/FEYDAuSi3KqdmHyedAUK81pGwhbUP1U4rmXpYzNqUu9BhAIAIqbkdVstB8y6VUI2sf1EKFqFQ7XF5ksH7NfgvHGu0b4tNlaIhlb89+jSJ/cnYRV9JECs7mgmeSe6m4B3IdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720057523; c=relaxed/simple;
	bh=qD+u/YbWDB3MTUDpVTlo4HA7QR7rmbzepkgo4pFOXy8=;
	h=To:Subject:From:Message-Id:Date; b=CCe9m/VsUcXH2OPGBmXkibFePE69nlsD2VeNSfeb9Hte9Q40s2vdEG/QfVWEAMGh6mxax5pLT7Gt5dhbrikcX+NA7XMzEw7ylxyqw98ZZi6DUi8PiL6sie6YpAK1uF/kMt/qN2j61Kx/qDi84yWas00ntklXvv1CItFPKaITXN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C31wfjxP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C31wfjxP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D809DC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720057522;
	bh=qD+u/YbWDB3MTUDpVTlo4HA7QR7rmbzepkgo4pFOXy8=;
	h=To:Subject:From:Date:From;
	b=C31wfjxPiREpGYuFedjOoWQEXJtlfJeC7brme+TIp1SUS04B3gC2H43ydENT3Aw1F
	 TVrJxyx9nDwEUBj4MOEQn2VT+8XeMZQDjKKbkIRAihy3EwaaWdT7KqVG4C5YuBUGqS
	 dTysZl8L6OJ6yYNhkLhQAnIbO31kOLsCxileXBvo9QTf1tVMmaGgUB39GwMdFOwABk
	 MlkZPHsAA/ElVWM7+LW2mEUzwo4VjGx2Lx+mBaFbUoOUweSAbx7w2PaNBuiY2OJi1X
	 mTR1v9BMsC7jh0FtXk5rYedzcSw1BsZpNGQWKeyfHB/lHwfjk0bECcQyUCxJdJnQDw
	 3HlLLE2PBMpAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C033EC2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005752276.21883.10749985267499469904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2276d96a19ddd7472cd07540a91764870699c5adb91722d43c49bfadd5bb4e47
Date: Thu, 04 Jul 2024 01:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720057522

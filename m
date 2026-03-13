Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA7928AB0B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773435894; cv=none; b=fA4Bi0K7e6ObOINLL4K9EPdTVX/6sIwsjAj5BRLMTfO0ij6YUK9SRvbLub5SJ+dr1KKFsQcQN55q56idxyU7zAk7H+AInlWK3yNz4JkoDQnKi2gfX/8ylpZGqiTCmsvEcf0bRRDA7ymTIImTeVpo3IprStQi/hYoHGZ61QTQTd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773435894; c=relaxed/simple;
	bh=TQTlqTRkpfMzrXyFTOhw/1reU+GMas43xfLeRoDDhmA=;
	h=To:Subject:From:Message-Id:Date; b=ZUE6eTFjrzUToBftVVcpyGiB0hZffgW/rzAAT+mBaD2Eh+y6jvuF76jKHCFsKBYSXZ87BWwSUGZ/laahbAIKyM+CTBf5OwQijqCHP4KuvezDUZadclcBS96SwtHG4vD6JyQ0ijVLsn4PAG3T/I/ks0PzmEl0LQj8HxkkhWZmW6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPD11no6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPD11no6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2661C19423
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773435893;
	bh=TQTlqTRkpfMzrXyFTOhw/1reU+GMas43xfLeRoDDhmA=;
	h=To:Subject:From:Date:From;
	b=NPD11no6sMHX3ZxWUSdfLMC7g03Yh6JppTYpj87Zyl0Y1Mqr/zJDMOk2EzxP6YTJi
	 AedRDYmG2tQv2qGb9msmxO28Ayp8C1dVLCkDTmhHtXZORnco5PXzjODNuo6Ajn8An3
	 3K1H/H4ZQf3BY4Ws+utygm+1rD8ETdnexKGUklqzprJpfhICwYCZp+stm0lujStIsG
	 fsVBSwXAbtTztIn6AD04vZc4asbCDLsqZP6e4voCq12GOFk5dXVNmrpJ71ijzHQjJC
	 P5a0+g84mN26FaizEJCCconLTBwxFHob+JPxdZq03jKVJzBn4R1Hr7vo2p/z2nVVeS
	 TH8swHoufA34A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9069D107BCE2
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343589358.30365.8945287419118111228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22213647472c34a1cf308fae739e87cdf35170f2a9d4f4b81a8aacb3c3d330c2
Date: Fri, 13 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773435893

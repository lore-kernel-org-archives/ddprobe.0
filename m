Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BE9220F2F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757265594; cv=none; b=KZmW6U6KUkhNhzvSEQrKyr3CLi2lLP/FKUzD2ANsc7H/tw1d1yLxNeppqj2TS1KQzta/i/QDnETSIoDBKHS7iVExa+7UDAlbVy4AW3RDq+rODiAvSEyzFZ4FWVCuNH+Es8EcatSDB4Qf9C0Ui+8nHlHvGL5ebThkIbN+A+05ERY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757265594; c=relaxed/simple;
	bh=ll/D6NWzG/9/rkX05lqxbvcDeFaSd892ia21bz/WaMw=;
	h=To:Subject:From:Message-Id:Date; b=itPGQsCV+8nehILZFeuRIxFK7COfskxdhLZZMJJW0Vpju0A5gfBq1/SOkl244GLN3iM0U6CheX0GUhuTR9hgYy1Z41RxXkPgSqVEVH1OLpbEWMbqzBj5+yK0stoldVv6M8qSDFa5sUib689FlBjKB2wdQ3RfCasKcf/uuSfIaig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COwVm57m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COwVm57m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11CBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757265593;
	bh=ll/D6NWzG/9/rkX05lqxbvcDeFaSd892ia21bz/WaMw=;
	h=To:Subject:From:Date:From;
	b=COwVm57mmqSV9yrppNFPcjS+26eVBDxoMcmSySJcwUUoKG3a0NcHP28SyNt3gKjWQ
	 ooL9p2aUEH9D34H7z68hPIcJBUN7YE9Uh2e1kfIkiGL5G3ABDnU/9LuyF7yVSoqz1+
	 4veKY07q07oNKTUdpvlZgMShmzxwJDcYcP2Ytr7n3/IckBTpHB6LRdctmRfqcsveSD
	 Pqq8T9oko5ktAUrU4Ljy37nVKU4Io+fhu07ICxrO+Ehp4Me35Hi74s+MNMLNtDwL7i
	 5p9cfbhs2FBJhXjURuDk7VKcK0YLusW79YVjLwP07rdbV1KGumFCTLktUggxjAYIPc
	 WNvSqOXbKQN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F642CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726559357.24368.17825404325842441059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9356d3e98bc61fbd1f574b92b412ca8606b2eaae7ac5f197384f71566337a505
Date: Sun, 07 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757265593

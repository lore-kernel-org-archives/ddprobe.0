Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6D42F4A0A
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759401593; cv=none; b=KxkLs5HD37UdHqz/T4W51W4lpk1czdGWrWRL+j8pCey2IZmhN3G8PO1SjXcCIHVRumY2iRXK1jwN8b5p35RBYe4Og7RuHPNUXh1IUb3aLLYkAedh+G1WT/0XvaNxs5Af9hFQyDeYMPLRN53v668nKM/BA0gQOGAPNzGNBgv4Itc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759401593; c=relaxed/simple;
	bh=2N4/TtUR7bFnLqSGZ4KyuR91kCWsiQGQVo7AdrjHJDw=;
	h=To:Subject:From:Message-Id:Date; b=V9P9mwHOrZXa6yHDO4Yl3cedWeT5cCq+/KW1R3LyTiQrdaCOBJMZKPxnWn5gfFmxjkITAnDJOv0Pnj15t3xjcXVyUiDS7Uc6z/RFnX14/l8+9gGR3ILUbMUnwvidOITvNIqWFTspGUMbFZroHRLV9hyjG3OgOirnE07p9jz9TKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKH0r5GL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKH0r5GL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5323C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759401593;
	bh=2N4/TtUR7bFnLqSGZ4KyuR91kCWsiQGQVo7AdrjHJDw=;
	h=To:Subject:From:Date:From;
	b=GKH0r5GLVS085/dJyWe5e9JsnYhAf6lb7CTOwvbnxoQ9rkKabPVZENaP96kiy5YdF
	 oBxBoHUPOqeV0WXKlGYMwvR7NxBh+m2sLH1SkRsIL1UqZRu7RaVBF3emnC11rAeSX+
	 1QP6fIUTMIKQxmDW72CdWD/1epZegaEgY+f2l/vXoUKUhsavqjcJMeDr9CYT92uJGD
	 d9tYUwZWyNvfB9RpoWrlNubApJkmeJNTlnYHEX39o3eQoCLmPNQhFtmgmRSuw2muCg
	 h9RS1TIdQZ3OFiUinNkwH7Wi9pT0Gr4s6qIWgDhTOXO10VmrXoaLBR1e/kPh3MFEPL
	 elkRBa1KjJUwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5ACAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940159358.15428.8331364824947194975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce838805d15cd699f50e2d15b1452481d9acd1c4e34c03390106a37eef277541
Date: Thu, 02 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759401593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C99F245012
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782704314; cv=none; b=mCC9CqdhmaSlFe42l7F6aHdXC+RXPSoSzLRM6CQ6NiWW0JDOUN9ExRFXhVkuXjJjJRaLNlPl+QPeY2d2PkV2Bdovkxz0T+Hj+ok4qy6gz0K3DbRq+loDcQ5V+nO+L4hhuhmXTb3ItugIZHy3oZoY9gcfn9gn/fpM7tV41w62T68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782704314; c=relaxed/simple;
	bh=n4ddR2QaoDWr9VwJpSgIQRiJHIavgsSXJE2qbGxezeE=;
	h=To:Subject:From:Message-Id:Date; b=KiBMUNvQ/g5lelT5WcT5GZCg3coTT17d1b5uv9Uk3zfIYXU0EDrr265Fc8jVr/P15hqAUgId6A4JbayYPtPRCMcSDmYe5FTohdlaQJIWW8Y//oSuTp3EJZC0JxtzTePuqgsYqKG+ZODGMeBrtDXBxpJ2f/T2mZlQbq3HDy0FHbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abivKg2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abivKg2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B76C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782704313;
	bh=n4ddR2QaoDWr9VwJpSgIQRiJHIavgsSXJE2qbGxezeE=;
	h=To:Subject:From:Date:From;
	b=abivKg2K9FBe1gi78VEnypQaATK9AKSDSowvMJQpN8+aFhCawEs3zYZqZW3FqjxZN
	 IxO/UZoyUvaq6ia8p74PXU1WA70BBDQRD7ByPIg9sogGzkjWAwKSppUhR7Bw17ZDSr
	 rW17Bkl2BZRe+bqy/h+Xcrdp1pjfIQhCxyT8tqjSz/o5ix665DGNzuj6VweXS66D0e
	 Di95gkJtPIX1RWgzj0Us9gjMimw5zqIxB2FzazprzwMa7Kco43zYDExb4N1DUZrS+w
	 J6EOf59RfSkFGTqljYnyVT/vyttoHbPh6DHtrebDSbNP9ALO452k2Eg4ngjVMFKijf
	 QNKc0tOq08ycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB266C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270431368.16200.13283331020446515252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad27e28918d0adbf2ad8c0abb0c107f5350eb501bb41d79696773c2900ed7fd
Date: Mon, 29 Jun 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782704313

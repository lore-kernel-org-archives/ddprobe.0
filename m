Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425F422DA06
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753292394; cv=none; b=F3d+Jh7xNGt/bwbRKFI/dxumXhJdbug8FeT3WFax84fPeYSVwHMJVB2O0HsvnAmjKWgCqEJxh8gYBiDfBQf0EJyaCaSvwH5Y60a3X4oCkhRz38UbPKdd1xUeoYeDU5EMNhStINnfU67qHjMu9HyJ2wgDaALAFc3rtymt3hl6HrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753292394; c=relaxed/simple;
	bh=mEQYiYscQn0ZQpwi0g1Fcz65/eEOuLIx98mQ+HiC1jk=;
	h=To:Subject:From:Message-Id:Date; b=RMc8hEo4Zjrqgvy9Hhg1IvA8yUTm2pztHGc7jMofboXOIDxQaakKNGNckZOCUSvYBq520TeUgTywDumUAZEX4MS2KdXDoiDQWcjJ+DsUgb65BqxFId40NmOK68PtQRcK3Dgo1pc9/ytvFkyI3YNVgx6oLvTQeXzO3lK8pPMhfyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tp2R7+AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tp2R7+AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7618C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753292393;
	bh=mEQYiYscQn0ZQpwi0g1Fcz65/eEOuLIx98mQ+HiC1jk=;
	h=To:Subject:From:Date:From;
	b=tp2R7+ALR0ziuqbG68Tgyf/a6ETXTX/GTin/qjxBgeVBBpoQYsLRysOYTAuXzY3f3
	 Pia4Yol+ZDf8DYZ//68li122P63nzu/0NKX4FuNYXlIakKBDQWj6jYQTkLyIp7pljg
	 ybDgFTtb0w4Owferu1MXcrobmH00fXuK3p/hDEPsQLu9FHwOWbYmgTgyyrKv1dKzfX
	 UIkunjmf/AVkgGHeK5NjGtAjR0KxztFI0xDsy7GgRrkzeUl2KtBLwMZnhWD/YMMpGt
	 smCRdQ9rb7qhGmAmgq4C8t6jCBfh72zedHqgqcAf45JP/b8Sr2Yjy5iFMnomN2lLFB
	 rspHfrglQQCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE9C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329239358.24733.9295533688803534917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8ae1e916662f0ae5dc993359ded66063ad87882659fb0ffd652987d1157370
Date: Wed, 23 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753292393

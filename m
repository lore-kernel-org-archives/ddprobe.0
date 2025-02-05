Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638E921772B
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738796154; cv=none; b=KH94DdqPr2uFuXCPzFJcrCeibmnlyV9VECX11NoVRw98cM67Lwj3ArvPKMDxjePkx7NBko6oXLfSf2pKfQyLpjBpjON4bYzFM+7k3qvYBdmhTF/n00CnpTd4KXZ1hIOG6NuZav7891vpBIZ/QuZG8GaGwBSCisel0kHuf+QTE3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738796154; c=relaxed/simple;
	bh=IDI9Ksnx1aQAPTFaLRdo0OjesDp/bjy5d/IABayRYL8=;
	h=To:Subject:From:Message-Id:Date; b=UyuxP+dK2YayOsalpp7mP5quGovrTBh7kjsIRnYWLx3PCKb99r+KBZVc/Bi+vB4DipdJjSCsuanGFp1XSS9sbSgrSgsu7SP1rKgvpoJ9iN0D/I78YsUM4p85+HqmvVVwHHgojpbOhiXQTYjObiwL+mKzAebTZficBNdalhh2Dgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOZezO/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOZezO/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75F9C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738796153;
	bh=IDI9Ksnx1aQAPTFaLRdo0OjesDp/bjy5d/IABayRYL8=;
	h=To:Subject:From:Date:From;
	b=sOZezO/lX87llE3Sps+byNbqvVoBE5kzfhlYLLtwp93EShfh4/1nJfdGrCIM+IQMO
	 VSIUn4EXx0lAGjojNctp+0a/h40tA4222Og0eFhS0/Tg1rwA0hH0IKFsLa3L77DqUF
	 8F9Wl8WKKJj0BwsmDpQuI5mtE/LVa4qUareHbpafN4l34PKQ4q+DnLphWSG04G9tjV
	 Wnggf0H8EBvc6do598+srwFiehYciqlKeofsGeP3i/9g2nQQs4VED28xOh/EX/EHQx
	 7y11LwA58MiQ8EbiI4WiNVw1CJhGnOHjM77TEyuMFGKPtDrBMEWzylfjtMSu4Z2NJ3
	 +7/koc8vcpKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B101EC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879615368.6008.16940363150819283988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2f0a9ee0eb9326376ef1de5ee1d6f7a591a5905506a4dc733b3ea78d1518e5
Date: Wed, 05 Feb 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738796153

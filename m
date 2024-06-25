Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610A617C9F7
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719341003; cv=none; b=XJ9UVEGuhcCsCFO4TKu8lgxsPVfv3TnMd8196chBroYQk2ylbKHqb2BQUlK6uneoijqt6v+ME6lIhowZrHzgH8Z58P7gKpa4+b6fmif++OFDnm09yYAkSlqSqrMY+qoqowuoe5rPwahzda1OJD7Aar6MrcUKDQN/5V9JM8kVGn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719341003; c=relaxed/simple;
	bh=By9eZOtMjLA5fwcGo1v6Lpem/3+P6NmMR2IZoOhyJlc=;
	h=To:Subject:From:Message-Id:Date; b=TaKH3rB9Vzhac80hubQkAzaXQ4pQtSYpv9Z93xmSnJ4fyyjiIhCnPLW3jDNydKX7xq99TtexGlRHg8VMf2JrwVpbKlax14YhGX8Trq6q7WTVijkVYKSdp8okFHwSshujiOk5gY8nMKtLxDK3BjjUC3zp+YM+hyW+ZK2PBWBxEBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0pJVknq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0pJVknq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E639AC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719341002;
	bh=By9eZOtMjLA5fwcGo1v6Lpem/3+P6NmMR2IZoOhyJlc=;
	h=To:Subject:From:Date:From;
	b=C0pJVknqkqaSWqh/AllCly7kTfieb+BLkRTaXWCy5ptIb+sek/kzkpx7ac418GABM
	 kjDjJGS9kOMbXmXGTDXAcnQq3ox1Q2ZvNp3tFTRiraENsPTBOhVNUAtMzGvPOcxabX
	 baLv4id22ZEfzpUu5J8rGAjLdXveGOwmlh1pCzG7JjsDte81Rl3NJKQOkND3cVD9Fn
	 GErQIFkdSeZtQo/7VhHaEFMm/fDHcv4fvlcOsZUZN0uszUIS1SHDI2/f57OFacFMnD
	 ByHLqcnKiuT1ALe3jcOyBuNfEzL/6wEpO4TBCwmLpqDRK9WOQaTulBMxZWYxBDfXsT
	 yv3p4WqudvvVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4031C30659
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 18:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934100285.28236.12579193360976085405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9537a2e8b4a7021b7ad38549867cb3f07a2fe66c0f93061a829cba086c86b00d
Date: Tue, 25 Jun 2024 18:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719341002

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C837350A35
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776508654; cv=none; b=NdUPKmw5UjmJpThcddGXFri46jCRxdG/96SkpHnk4NCzyp6J5ZEZU92tIJ563R8h1keQHoBNuRrgMWbmrQojJQ92dcRe/sySB1yjN3ubB29hPpKe5dmOTgan0tB4HrrTjisyNXvpIGMXL5TOg9Dbl+RX1v50u6FewLRr+PgqMHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776508654; c=relaxed/simple;
	bh=+n+KjBehcVpodbkPbRGIqE8pEq6rtj0SF9T/3I/fYpQ=;
	h=To:Subject:From:Message-Id:Date; b=qYcqLki5n55zitrf2EGZJhPXQ5MYNQ6DGRJlTel9/k96kw90R3HcLZ2XaojfLlr3kUmKpsjN5ZaZzdY9UBc+nrjpcMjIqFgr6BirxbAA2m1428Tdjx8JozoWhVSikgVC88WwmWyrH1sFSDvJqR3K4FUjSVBzCfO1wY08elOWRoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C76AVlSs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C76AVlSs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0109C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776508653;
	bh=+n+KjBehcVpodbkPbRGIqE8pEq6rtj0SF9T/3I/fYpQ=;
	h=To:Subject:From:Date:From;
	b=C76AVlSs/lsAi5znEjHbdAJ6vQt05fLkcNb5i5nptQcrFKqcrmhaRtU8kOn7SI7JT
	 LJvHsaXd2OOh3DruYz8zJ7xY5wvQQwLSaWDSZE5huFxk6ATlopCaeAgkVkFZIERwKj
	 R/Rt0nIY14fxy2rL0l3lzpyegU3zwESTsxfRM7XTP/jLiMtu0nJqhZ1HdvHckikab8
	 NM2JJR48k0JYHcvzgQuGI3sZLvl1dX9PHY5/7JW40ccwWm9EpcJ7hOzD5odsCExrA4
	 G8ZGxnEHktqo/ofXsvB7udIznc0MMqe0S0PZYUSbsJAQXW7vSXzytrElwIo/JK21ZA
	 dSWbbRt/vCTnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEA2F99C7C
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650865368.26263.18353210954392406903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6e249da70d2c51c94e4edba53a77ddea3a7b03306a4f7d650c0ad80677e913
Date: Sat, 18 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776508653

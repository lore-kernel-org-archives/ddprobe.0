Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497B3231A55
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766389434; cv=none; b=i/V4YpLJG8XTf7J2g0JnnoWd764sUP6F04PHng6JDN7GMfWe7AmBZdTKb0zvYX//l421cQGmRQLAiMXWkcMaFm55RMpKOaBOnFsKcuxkb/BkIk7fS63AncUdWvb5L75lLQSusXkYijrz7U2KTGOAZMCgcv7ZHK85jzjHXvkbV5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766389434; c=relaxed/simple;
	bh=uTRR/1MLL9p8JRpcTmiZPJLiWCTn45IDyyWzFRhQEMI=;
	h=To:Subject:From:Message-Id:Date; b=TTddETpkdK6xwVlTtUUnJXBLB/TUktjNOGL/Cz8QeoMUsv+6oKCaCcCJwLYwcfSaAWYpjq2zj9lJETpudr683Fqz3FkIE32h+wv4lXH4IRCVBlfEUP4alge8dtryjZ8IN5lmb8qi56XlZtMj+JQZIGxYdKfJzym5+1Xw5a01/as=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qs2lo+vh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qs2lo+vh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F50C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766389433;
	bh=uTRR/1MLL9p8JRpcTmiZPJLiWCTn45IDyyWzFRhQEMI=;
	h=To:Subject:From:Date:From;
	b=Qs2lo+vhT9xVWXsW6ahx3xJ06UHmG6E0oNhKwuv6uEhbkzxsyl50ccoABP6oC74dM
	 /JQpjVSmwLvQW6IqukB9/6oNgjOyF0zyANiDwYCvE0HfCpIsW3Ocrfs1t5XG+HEl/K
	 jSwHGHuj7aDrX8B75VaVOeOxA9Q6xnJhOhmhOdUFyn3vEKaJtMKZOIIutMhg3/FDR0
	 pqpoGcQ6QCQdWy/sc5eOkY75UN4Z/JkYd3YCcE+W+C1QMTtwSBij/TKm2m/QkPRHuA
	 i1NEL9vqtZmpx615cCZ1tD00DmEwJIHWGKsxsO8SQI5G3RCzIm1wZa2uvtB/b0IF0g
	 OKbVwVBe0tvJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918FAE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638943358.27153.15385964754524426152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417c70b84ab35d93b3e59c1b3261b27cd4dd3d017bb343189e9ec511f2e4d570
Date: Mon, 22 Dec 2025 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766389433

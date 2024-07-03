Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6D7433A8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719982523; cv=none; b=Qzdp+AepZUpI3mNNLz4F2YJofI9m75n1uqjYcpXxiaVeH6XCMCeSzEJCw3jIywFI8SzEAlDRaW9P8KpWOqZLodORgP0cadyjA4daPKSFLZDKglGYE+Hl001nTS4cuzFCoTatBP5XdRVTvx9p0nyg3fJeAAZiI78Z2hXzrwgsMN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719982523; c=relaxed/simple;
	bh=VgQcCW129kyUL+VMPFPgVWYaolcPoI+eRFhhjcIMkNI=;
	h=To:Subject:From:Message-Id:Date; b=LH+qZNJWKoPQem7hmleYaNuK13xnd1xciBZBPdi6+0eVNaqNXFmNgG4zodRs4kp+My6JAGpu3hzsWJDujobV7vFn9mAhdw+wpja0WX3/sGqsnwIMoTdiUqeAW+WF7eR8hHqaF/6rBUOgwo5KF13ILT9dZDsQ6tjgkJIYmHamQ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mbgybIDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mbgybIDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC03EC4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719982522;
	bh=VgQcCW129kyUL+VMPFPgVWYaolcPoI+eRFhhjcIMkNI=;
	h=To:Subject:From:Date:From;
	b=mbgybIDTy4lfAKYW/KQgLgq1VzoBZ2NRYtIrqFqFlFNgLa4v2x7QS4V4ONZMFuNji
	 XyReFfCOdS1xbr6Cbd7n+3FN9y38utKJ5tnR6FMvhuf+MFjhegWTwUh7zekBC1sPKC
	 zQf965Aj6qO6T3Y8HqAqfsnzdBMJswkw5YpYmaKsxYj47aCM2uEa7TDepG3GpIgZ/R
	 uvqxfakN8vcZJL9ktnamC3sH8JE9U6+SaD2zXYj7v8IryhaalRwOegFyIp8CrFJFOA
	 pUoJKv3VmXvC+pZWpvxB1/YbxA1NdiRqEOXpS55V3wHsSUx48xfm1CYSJH4BXEhZqZ
	 h2/l054buFOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE68C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998252278.19309.17666556295106266565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 025fd002bc6583a9dcaad5ae883cde8bb67d6d04c884396bacd866b75bf8f9aa
Date: Wed, 03 Jul 2024 04:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719982522

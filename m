Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382663A4F54
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770130434; cv=none; b=fOh9exHaYzLESQdWO1efEy1EHgK4oejcOgmCU9cd6IYbDRA/eA7vMcTkThaeC+fc6ajOWvOEYFWN9VYrtZV9chEP6G4iw+7LZYz2UIls+pQ6rgAdaZNF77QIi0BtAipOJdZRHlTIeDf7TJysmj3D2kH2AnAZX+n3JdH7DPbL99k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770130434; c=relaxed/simple;
	bh=I+udjKyWpcvbFnOTxlLuq3ftLINZrb/aqGRL328nGNk=;
	h=To:Subject:From:Message-Id:Date; b=Dy5V66ZgEbU3FHTjoAGmWjvcd0HVvkN9iRJen3yfCFwSLM/hjnzAUyGx1h1Y9gybeusypafQ/U0yTi6iP22KAdLrQJuCUuuDCyV3lY2vbP5HZEFAgyxFJmKn0RsR9GZ+4XOT5r6mGrDdZp5XzltAo1Ojle4xrE8qwf6Mylj7/Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itP3OPrJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itP3OPrJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EB7C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770130433;
	bh=I+udjKyWpcvbFnOTxlLuq3ftLINZrb/aqGRL328nGNk=;
	h=To:Subject:From:Date:From;
	b=itP3OPrJ7RPOJ0vn2VaWiTJk4nLoeEP1SK6w3tgVCu9YuTfD4ZygX5uFtsFhiGrBq
	 DUmtgC7Hsve7c+8IiK3fa4f66Ouf5dH2eCJZQU2xZcePPrQRbzZ976LNhUKrioTxEC
	 m8GmroJffpGd0Yw1Kdw7ZU0d9Te6SYYnMsqzaZNboFS4zHlXn5HUXDaYMBBYL1s1HI
	 qFZB4kd+Adnpog9ydbLWCjNkqp3+vkxkr8b4KUq+1eDnJ+sEJMaNpIhjx0y1bDyWgK
	 tFppkqOuv1uSw4gKeC7DMpgJG63ML5LE/Z1cVlQ6ZZA8kXk7N4PpYx+yyqk2C+fFs5
	 ymNdd1gXOn+MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A41E8783D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013043364.18790.4271800009488263129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a20f1cd9f0e6493e6e14be1024fdd0e89fbb4ee3d344106db72c652d85d183b
Date: Tue, 03 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770130433

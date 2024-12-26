Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8F01E507
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735181754; cv=none; b=pXm1p+ffv4qizGtCyi8Ayw2lphD8voUPTK3a74cGSLazq2MWDGjh8Z8MMzr0LnJVQ5wxymZ8G7f5/ER99PIo0P7nyUmbJaf0GCqURaefUI35/Z8c8KTtFOq1QT2521oKkDiGmuT/yc2/LxkONa/qdswmUlYCzQ6e8wCC6Bos5bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735181754; c=relaxed/simple;
	bh=QXNrULiV3grAGBr1nu5BqvX0nKaWZ8pL6D9su/4StWo=;
	h=To:Subject:From:Message-Id:Date; b=iIybgfhPeEFdeU0kIPhN2xUj0AwoDMR7XIZtinWhe9utFPJL9/CrbpVjyWhNF1Kltg6aLQsAJkQmrXWY5xJHef+qXE8S1QoI4eSMwjWSLN2ehAl8j4L7oA/kNEFh+LxZ9GzolVsvSzNwSOCSp12yPowvJn2wr4dVrbs99vgpXLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQslwLjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQslwLjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC380C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735181753;
	bh=QXNrULiV3grAGBr1nu5BqvX0nKaWZ8pL6D9su/4StWo=;
	h=To:Subject:From:Date:From;
	b=nQslwLjOxnr8fDTWduiLRxm1/w4MThEr49YXJgi6P575WHJbSXw1y7dXSde8pl3Ox
	 55//kduih17YEtIMtmWCJhq2i4JkZUmK4mMnLsemQaSQK6Hj975PzCbeUfCjJ+5Hse
	 OzRoCq3wOZHm3l6Ai8pDjTFKEgglA8tlhsTkDQF/2gwH3pXMIH+ZSgnXvRIF3nk19g
	 i5fZfixWC7tJ75MzlCJzIdOAdDu26pYqChz/aS0gsWaVQjAGNoMPrtY3PScr9zBVas
	 Qw2birTzgZ1eYS7FQxFRPFSFfl9J0VurwRbXMmQ73Hck1lcc4t6MA2YdTGKHNymdJX
	 Lt8T74K35KgCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A497E7718B
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173518175359.24067.3197187089577953934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b9ea203f9b05b5c2a31ff1a47e40bf66f0c99e5de82bcd15913f16c68c1c34
Date: Thu, 26 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735181753

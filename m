Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF63136E37
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759707594; cv=none; b=n36QguQm9YS4gXkmc8CdYsfGv1LCXUAHgdmL/e301SM5ZZvH9FtPy4JrlwQzZ7SfBBsglgMdPZjl+KFDUGcbToFBj7Lt9z35ZCAVqdESo+d45izZldfVb4+GeQ5O7I5Th/0MVb99aphWHJI4gZgBxjOlBBgglBQYu596zhP73LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759707594; c=relaxed/simple;
	bh=MC/Qd1C8Sk8UgSopAX7Rh3VvXuvhJb6RmoIAZaxv07A=;
	h=To:Subject:From:Message-Id:Date; b=k7ewjEHsd/vdGDaSg19JgQOWihkf1bSewYCVsxLRsxjPF/mdNQrjXC+L35VPb30i63P4dtB9AvXYjWpX8YMbVOmqIlWXg7+lo81htf8DUdCWK3bj78+4DZJnA4eVqZ6R5L1RRwLPlivb3rXaF+bhXoTJHdjE1EAmmq0Rx9zlZs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tx+Q6IRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tx+Q6IRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A734EC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759707593;
	bh=MC/Qd1C8Sk8UgSopAX7Rh3VvXuvhJb6RmoIAZaxv07A=;
	h=To:Subject:From:Date:From;
	b=tx+Q6IRQ7qmL3EeG9vTT2zRv3nGdsdlCgblwLR7eseT6Pp43iHYoNY60DnXjtWa7l
	 0CJSEpIMTc5eqE2fJtvQyYlrU2XenGT5mgMxuZacTN2OAIi8fqpwUbGT2C4PSkWCKz
	 cSo4bg1YmyYv+72GUWhDnrlYaSaHxxe2LbukFD4HPYsKxbq7Y1HZVEu4mbMXN7ZS/h
	 Vi4Sfv1Zn1dzuDth818yqFoN7MuuWydFgxzmJMnuJWO3gdDgmeQlc8HFd+UOBIbAEL
	 +bxXRJASDGN0v+uS5mxq+R7k0zEhaxp5AR9JZQx6ByC/zfOrhwq3EAgkBXsFuUDZhr
	 +JLySrtQbWDKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1FCCA470
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970759357.23823.11826889337944774473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a81ab80db246835fb5f1a2181d651d5601c556a158c3000872ab2e9de90e78
Date: Sun, 05 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759707593

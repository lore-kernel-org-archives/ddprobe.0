Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFA815442C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751556594; cv=none; b=ZJpydmOMJ7Lf4DaoKRoVpHGaxNPDturDM5xepjYjLwGB7NHceAuSP0iXqESgYvBgER4gLphMI5ahuQVfpvfKU49CkjILII12iM9RA3WIvl2sNv5Fu2pNchTKYvfu8frNUnz9hSqWhROPvqoDEPNZfFy0zVLliwFErKecXAtgrZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751556594; c=relaxed/simple;
	bh=pkHvYail7z5avv0MEysjthoePazPjmbBu8u9m1m0UHc=;
	h=To:Subject:From:Message-Id:Date; b=GXKxD5y6rd4xXZHstwZTks1SYo7VC6GHseNIlr7fUeJwxUf9o67ixnbWmxVaYWUtd51PEEoR9C4ti1Qi50BJBUd6Q6OIG2XxP0sSbTAjCtQtE0rSkHmY02KNLP7Eyg0HVrIDgtyzxGD/yluJgpVE88kVwSDB8j5nI0deDKnY/5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDmrgOIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDmrgOIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F51FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751556593;
	bh=pkHvYail7z5avv0MEysjthoePazPjmbBu8u9m1m0UHc=;
	h=To:Subject:From:Date:From;
	b=YDmrgOIYe7+rFsi4NifOvX+w7ZzIdwW0KqsuJr6OP677bCzwTbsnJUVru5AmuIM+M
	 Uq6YkS+MmSJcQP017vmbtCTFw/lYfLxol47Ibk7pQOuY9e3HNA+az+LqAdUDXwAIoZ
	 tuotBPQYKtDZcZSr6N3+SJrwLNpflLU9wbwPOujsfflLU9ldaolqUhqnp4Yrg1wLvG
	 1H5QbIYSQabiRkwvdpKwEkiNZvUfqC8za+tFY3oH2aun7CNmSyqQNBhJUuSgPDnGty
	 f8cpY7q8/mP1m0bv8sfWb1QQYAbtVhn6vIkwCsN/y1v3UYvHw9D+iCggNK6P5FCRuy
	 OewluHekCZUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9AAC83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155659358.30649.12009932248645743482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e98179f94869b45513fc26acc0980bbea95d7215f90089323edb651c9f3485
Date: Thu, 03 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751556593

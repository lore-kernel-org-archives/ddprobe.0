Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C17B667
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727625354; cv=none; b=fEHbGvo5lu2qY4BUbvheyuJdkge64u9dGQsMBgDXzjWdWKs0XLr7usM4d+75VOOG/hS7g9zmDFvqXNFyqP4OWUkk8opWOmHU9jvMiAdDlpivznRcTgdU/GSOVcGdXCBagU5fOBqOhkRIFBs/4JmpfpWaOxr/QePOP5ztZtTA+BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727625354; c=relaxed/simple;
	bh=9ZNxdzVqxJ9zIBeQLIs7gNPjiZQ9OZgib2BdqaPUJy0=;
	h=To:Subject:From:Message-Id:Date; b=J6h8f1yMudhrQ9zx/truK0xN6txUe9XKM2p6is6XkP1NjiH3yyD62CHVwmePk9LAB4azaeDbBOMF3j35GZr/zrxxmRo/MztySuZ6nHA8TrWYtQpoQCrJMCrb+M2zw3gxorAyvA8RhCrdOMmvs2h+jOpn7/PvLIvBVycLJqTPzms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6JLmyJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6JLmyJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8347C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727625353;
	bh=9ZNxdzVqxJ9zIBeQLIs7gNPjiZQ9OZgib2BdqaPUJy0=;
	h=To:Subject:From:Date:From;
	b=U6JLmyJV/h4eM5jThnfQtfOFlPFzv+Gf9cpB82tP3Ex6b4QhgkgKIuezb8gczK7PJ
	 Nkh9vpCD4bxiOPn5+n7Ra1LAT9ltJwoKlyRaGBsZWve1JWllcHcsSozOYV/3hvfkov
	 +DQSIX+o/+PvWmXNfINhYGzQL9i1FTYIfsbqyY9lM3sfFOFBcNyHErJfpwl0LFc34m
	 uQI6zH3h4llR9NkIaFiT9X1KaQ4iUGzWtMJ6jb6E5kOoHrJCDFgq2fHyCmEJ0CyGQp
	 s1PRW+rhCLWKyE4V+ECiTxHkUNrxx3SHTGsnH2xZCpZ34ZXvZ5dZepCqNz/RJsEs/B
	 oSXwKuxlyq1MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E2CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172762535359.4638.9262253842158900801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb5e0b29df224a0835b28c96d4ac3f94cca696689ea7f5c199bec4514481c99
Date: Sun, 29 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727625353

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B5E272E41
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756410594; cv=none; b=OP/ut6QuROiA6eOmbq+h4FmqK5IyNsHrIuolTICWxaLSXSasTba141gCYAijryNS4BhQ6u7ElsdNwjEtZoFlSixogNY3elNSjp6qR8HKAwqEcmZ3rWvCTVl3f69g0L6gqmvTR65YifwovPZIJRlOuNPGLeddgRoNyFBgckp/yP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756410594; c=relaxed/simple;
	bh=Uap91imSbOqrqPC3J74wmvQLoKXtP2qvcD647dO7ki4=;
	h=To:Subject:From:Message-Id:Date; b=useL5+SYKv0uz6NdgoOVFrpw+NIq9tHzoDAyKuumCgXX2GDc/nRx+naS4XxZKsAuXW19etcz0wyG1IB/uY/vChulzuj/nPPpKB+qszdWApcJ8AHAn+G9+TXs0sxYS0EoO6nEb4w1hXjJx4o5cMmZPIE3Zk0XqsDT8bgBFMyepQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhM4HfPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhM4HfPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83CCC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756410593;
	bh=Uap91imSbOqrqPC3J74wmvQLoKXtP2qvcD647dO7ki4=;
	h=To:Subject:From:Date:From;
	b=RhM4HfPwHpM68qfd3Iwuly+jzCE+DKOKRXUmuMiWbqT0tvtfU3GIIVU59c+9K/s69
	 I0EdNHOjDi7zMXNbz25iH3dvaV7SybmBjUpqrCLcWXuJi/gyY1jF7syFnhVbVUoqFm
	 DdZGlSQ9rxmwzKaZI/2Lt37dENoVXhOG4uYBosVi4Hhl120LAslsgaxOyKk9+R8Zto
	 +zrkvSEbCc1MkgaQo1lJPvhXYDbMkUjFMgy/I9wNdqnI6of54HL78HwO5Ho+nzK87f
	 s3ByXKqoGhLZsRfb2+JnD0oTz7vP4pUN/ME79OqlW4x8MJOwN+GGiguSuaVOvwVKKq
	 w19vPC+VrBDyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E9AC8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641059357.20296.1956517199134187473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb57938b88a8af4ec0dc05860ba13c7de568b2c5d035a2c16386da736133abd
Date: Thu, 28 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756410593

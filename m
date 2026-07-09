Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671C021CC58
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783626514; cv=none; b=HASN/rsXBC6xavADo4NEXzCS0MxYqQ0ukoG6k54WYM+dh8tvHhyxuOOsFRfOVqo7bPS4SnWIBNRHbYuFSfGl3C1i9YJJlYOn9T2dEUHtxFQyvWHDRlUNl/Hfjv9T11iHvaEe/2DYfFHqUkghDAG/mRVBPRJI6fdHWU8gZBlfQCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783626514; c=relaxed/simple;
	bh=zbdd7gTmUlfCmwBkVVsdCbjsiwj4Vytje8cfGvtJ5x0=;
	h=To:Subject:From:Message-Id:Date; b=EJoYRomqmedurBKxKEv9uRHCDmPJ3/GRfTBv8r1IC42RKOM2InsbXxh/CmG5H0HM+F8zN7/VJO5m6d8bbsN0XCULBUAdeSKMTbJxR2UA3/UtPW7ZGzaObb6SCT9Guwr5IKy10lKOCgCX/L/lavSerF4l2PbXP77BMZIhe5RGNCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jcnXKC1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jcnXKC1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB2EC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783626513;
	bh=zbdd7gTmUlfCmwBkVVsdCbjsiwj4Vytje8cfGvtJ5x0=;
	h=To:Subject:From:Date:From;
	b=jcnXKC1gB0QkPG5fgzij7uCfPGrrOpb3K8sit6fC//UMvVzyIrrSKGKNjqXIQ2/wQ
	 szLRvypJcH4VlxOhnu8YLEI3n6lLfm3KYS+iEySqktTOJzSHpL9KQSpN4d6ZBxNqJ6
	 g+HLxDhZnl2XiAWJo3boTGJ0+g2aUGtN3ABTrEJVP5RDd5Jn1OevyvYeWgR36lsIVH
	 zpZX7jnX59B8kKT0oPi7KXjI3xfeBSrKtprrJYg5Un6HVf/9PoAyPdyEmVjI1IhhtS
	 GxfXkjEK0H1Beo4tvjOGXoifZInwovBo0qYfWX5R1s7uFdvBiLydoRzDiarJvYniUa
	 nxAko6VPLJwiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EF6C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362651368.15318.18122080566242571218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283c079ba981cbe89b455f9c07ac318d347838b8c55ada0cf584150289c7aa85
Date: Thu, 09 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783626513

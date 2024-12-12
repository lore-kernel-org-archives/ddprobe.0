Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A54126BEE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733978154; cv=none; b=IQC6vDLOROvwrzT0S3IRQDr4/62WGhH+6Kd7XPUjOotDNTGWbWfjo+5cgpDsNDPrUQEWiEw+SQG46bi/uX3dJIiks7V/gREkORSPS4lZbRFlEfIlReuQ7xd2P4A6qMomS+furbqh/GLuK5syEaLgzzoY+Q/KbhAL1I7Z4Z2Jnw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733978154; c=relaxed/simple;
	bh=Z7VfCS4bIQGvuZDkzsI+iWSxUsSjb/opA2ao4sZL52Y=;
	h=To:Subject:From:Message-Id:Date; b=XZcB2QKi1Z96nmbv25lL2jOL9IKo5inyWvq9VkPgFK66I5ni24+m5XVYyga5IsWufDkBJ0yLKBijwHjJoVoFlCIxR9IimOqHofjKLURoCKP6eb67noNm1hnQqghOSMJSO3qBKNaN0Y+eEfmP3dG7aVpTO0Owm/3Pj+etansqNQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQqInGCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQqInGCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2649C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733978153;
	bh=Z7VfCS4bIQGvuZDkzsI+iWSxUsSjb/opA2ao4sZL52Y=;
	h=To:Subject:From:Date:From;
	b=WQqInGCRFLz3ddCPOpH2silbi3BbLvuowT5H02srrXhW55g9wV3wybDW0zMVxoKw+
	 ROcLyR0UXGWBA3d6+5K8nmGM6Hp7D6AfbN3oZo8uK0D4hZhNtSt+IKHDuiYlcQEUMV
	 FJaHBSvqfqXKX57ya/4/VqlOy9khhDGCbNv9IjiigPFYEkK6V+46b2XfUevDFCOHUi
	 AGq5NfJjYnqp97XMrzr81YuXVVQjlwGfo9k2fnxTlWMj0KR3iL5mFMUhGgY5eHXAhO
	 1b6+PHPkIA0xrnBlsc5zGUqV1T6pthFlKz9V3hlOxaGkOf2cfkMuRST5RVwwNnRwlZ
	 h222h+6aWGPEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1FE7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173397815359.26553.15200089990899057780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0cf381fe6adebe34e2bd9cbc06c04eccf43b697312223e308418d1b4bec3ea
Date: Thu, 12 Dec 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733978153

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E222279798
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780538674; cv=none; b=E8F5S5Kgp2rxY2c3z/X359ZrnxhmEDECkOlitHbFFPAxW4UQK+bWL1+aI3DdLYlRf+Yb5ZbbF5EkRrQwOFGoc6aRKxQGV+f3MZZHW40z+JZXF3clI/Er90M7/D4uN1wDhkA4yrZRt0xOhkx7Qn6uVIUtpn4akAdzJksUEwPfohc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780538674; c=relaxed/simple;
	bh=kvOxjuXvlOC87BR2SRFgeJlSZSHe5apl+enkUXGLd38=;
	h=To:Subject:From:Message-Id:Date; b=BaX0XOsEcbpjd/vNllUrdMEDQamrN5ZQUqt6rnXaZMg+zsTv6r0875T23EuvYPEwUliw0lCvB4Zn/VRPQWl+/7txgvlHq2K29cljlQWN6+HD5UOmcethfgF0VJrt3cOIb8LWeIkoy0J5Ztci3o1L/zFIOKqpYTu1hWrnxFc6JCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGMFZxKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGMFZxKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DDDC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780538673;
	bh=kvOxjuXvlOC87BR2SRFgeJlSZSHe5apl+enkUXGLd38=;
	h=To:Subject:From:Date:From;
	b=bGMFZxKflrS8na/0qkCTqG5+0nPDwiEGm3HSuXc2R8Ks8mKShJingnoVemZQySPZ7
	 HPIivU7AWs+eSmdz25oWl6+6LiPP5ePjf0IH64Qpq9hbNSFHGUPhL9Tt8Ml8Tmujl8
	 tsX5LXjhMuFV+Oli5jmU9UIDnrfPz070ijdzQziy/khQbntjo+klGA43Ja+eo8Vz6R
	 DrG1bwgKSG30DdCBYdVjuzsW5B5VyM92wst2je5zsrgeyoKS1JX4IAgG2uQODYLCnq
	 KWule4CUUZQeVwkZa4o5DUsEoDbjpJg7Aee2eZnv8bQtGoyHSB8cP8yj7xdn7wyAbV
	 h53HZqHf0nngQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC21CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 02:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053867368.17215.1780075591379883584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858a8996b58f3d53723c089c39cb451f4bb4c77a50006ef80e313fd24449814d
Date: Thu, 04 Jun 2026 02:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780538673

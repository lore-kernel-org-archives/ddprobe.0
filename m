Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2772014F90
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732672554; cv=none; b=la1jT5NL2dFPr0JZeDMaS0J0c0HqQMbBNunkc7Jvj8gZIgXKRjliXQSk3bDa7kWllBqDSmvFD4vfWQDAwy6qby0F6/Ngjolq1GxBWQnDiH8zNsOsOehwlg/FcPsoqUkPWN+UUb1w8m5WMFgUCZ7rfNGMmtPK8aXVTUlsukKO4bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732672554; c=relaxed/simple;
	bh=5q+9zsvi86BmWzEmdE8677ghpym7I8yjFkwLRAzum/0=;
	h=To:Subject:From:Message-Id:Date; b=bWTg85cM/lPt33gTcC38JyFVfOjYQzh65EDLjr6wM5JW/nuj4n/AqhYg8uOUkI1Z7Lm2gkkRLxX8YYgOG8x0GOXBzPj2jOZozsyZDK7tulyj9JPq13KOSQ3e35MkbtyuEHMHSZ7zslW3qd2FTpsrS6nfX4CJwRNPGrX0BYCRaKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbCm3Oap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbCm3Oap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F49C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732672553;
	bh=5q+9zsvi86BmWzEmdE8677ghpym7I8yjFkwLRAzum/0=;
	h=To:Subject:From:Date:From;
	b=sbCm3OapKGZ+3K0U3DstkP0KScBwNeIufHGsTvaVHdM5mva0iKutrQaDE62mP9s00
	 tTT+BXerbl4d8Aus2b0poYZ6mHraW6C4fCSru6+139F31eLBG2xswlHhv2pHM4mAEm
	 4WzLM3t5u9OPDZeDdubzKCDbCWpQLWw9kdkaJGBDEo8HaaaotnH/a60Mdqb3dtXjoH
	 3YYpLFccL2yly2WG/PZk1uZAEATbl6yUFj4wPc3Z7NiKqV4EL04s9vMiCyszHsG0Ob
	 JLV7Z4FVr94dOuLdvIQAPi3FKX2LMsSFx/D6PzCmrzwsvu6AVyG8WoFUvHf25CXUYJ
	 oCD4wQWnYkvXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99080D66BAA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267255360.5295.7196382193828593144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8903738438c2df9f0a30232dfb9aec21a05b40169c09cac9932526d4447884d
Date: Wed, 27 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732672553

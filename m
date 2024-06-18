Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD004C602
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718725763; cv=none; b=NvyO10ixRrXKLbfKlu+tkzpyNd8CkJZlT7FfjUDFQvsxn+Y5LchLFEhOsNLfQwxXP4J2lccoAL7AhVRtUWwBTMCtyO19YbyXLrVSATCpzc1fHqaLEfA9nInWsAeW7+UIh18FJVfcQFiZbxLyak+67kYT/z5rB25/I/VotPXnzNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718725763; c=relaxed/simple;
	bh=Q04NCQ9SSXjba9ele7r++x8Jz8mfFAclSV+D2jsIqRQ=;
	h=To:Subject:From:Message-Id:Date; b=IheHxcycRElfnMRAZ6EUMzgoAQcRZII5Zl/y4OhFSSgbQSPyOKvo4COVwMs+heDQ4rVuYbXubv32U92SnbmahmlOjCXvVTwWC5VAoeUh6JFpNc4gILBrVl8Jyu3jt5g0yfCoTgHepzGkZzNy3HkPnQ8TpqpdAJcQA4nul5DECJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxQeRwos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxQeRwos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD446C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718725762;
	bh=Q04NCQ9SSXjba9ele7r++x8Jz8mfFAclSV+D2jsIqRQ=;
	h=To:Subject:From:Date:From;
	b=KxQeRwosmMxIHSRVAZVtsAMs3UJhnhvfw0crGmAj717zDl8R118YVV92NBVgaiK9z
	 6CArYsBoVtsBa7qhlFFK7zoHWYXXIfvLXxilCAizj9T7QXpgd6tIV7SDKl1Tctmwey
	 o3eyXuy9Hgen8DB7sa5jVX1vnanUfXZZR271asjS7Z3YGucGcxRqhNR4THaRVVQEBt
	 Y0Bh32crCxf5ZcVYFeU1LlmxdUUTSYu+J00vBZ9ywae5NK7m7x3nAqaqR+rlZw9MR4
	 Y/QI+jHgMpPVxIi+ct+CEUK4wywvATkn8Fy09g0a06GAWqxlFWF9f+l4H4o/jed/I2
	 mbraLJPYHjumg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C925BC2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872576281.1453.7218245031681076361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975bf4dd3c7fbc7136410e4f3aee565dce7e4c38e673299f14883dc5e3d33a7d
Date: Tue, 18 Jun 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718725762

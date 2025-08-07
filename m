Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3001C8633
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754604595; cv=none; b=qOGEW5Gm15MtNWPvOIVLOpB0nln6wg84DIPk3Hm69KADl4f6dsLAc6ohYQeUoIlPoG0lIaGTy+UV44kV6QEAZiwid1axn9i/dIJspyQTfoRzPmxBvYWg0/FP0Xul5YppqdZ/LOPiTnnhZGEz2rbFNGVcQzdLwjW7kaNLSADT87w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754604595; c=relaxed/simple;
	bh=0BjZa5JKpA48s/1pA+MO0LUi/b31yA1yVjVhaitulXY=;
	h=To:Subject:From:Message-Id:Date; b=rzKwxLRML+xPeLdUEsVRSBAxowXRHIZd9aoIgzDnuzF8CAGceJhjjUFxyjvVmS+yajOftzZcQPszxwEhUXOT+F0zL6NxOqNMSB2YjeYvHu1/AlZVtsDEZ46saaVo+IhRVkL+lCokIFLcxNPR1fXd/ld3xa63WfsGfpGmeuu/iZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4vxAkz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4vxAkz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754604593;
	bh=0BjZa5JKpA48s/1pA+MO0LUi/b31yA1yVjVhaitulXY=;
	h=To:Subject:From:Date:From;
	b=D4vxAkz/CSJj4inGswAiPRijOJoPvSf4ss8MCK6uIO0cIC/Ctaos7npdusYe3UWpU
	 biIfQejy+vPXsJvPujr8IEx8qb9lRoi8MRJnfhRfKpUurN9yc2R+0tXVjSnpEqA0TA
	 hop9RaaN9JQ/NwicvJC2Ki+rWn92pOU2g/pOaOw5HsjQEhsjvyfgj+tNv0HdygfyyB
	 NrdMnio9cdZNsKojebUJP08E1vIgrKt5+3GKceBxESxcqwvk1SKBT86vWsbxAq8IOn
	 XBjzk80qKCsG7Mi+b8r/n44NoBbGhkegZ52TU8Jqp+oe2uv6zqhDH76+gmn/leX84Z
	 ewdTfhyiNby2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6DC87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460459358.29624.18066434982585837184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27a119ce56232c0f53411aad0d9205f9e380cdc465f56d4df11ea7ab64b447d
Date: Thu, 07 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754604593

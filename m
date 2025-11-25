Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC8C1E25F9
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764036774; cv=none; b=pLWaSMAIunX3jvS30IKRX8/j+7GOcl+J9UC0IoDoRTPS3dpCOtfKbfdNwVcs1gfdcB36sbj66vinqrIt8v4a/NQ5VOZUU2a5jli8I3AOzNgY78Ocm31kWEXFVfDNJM0pzVgAclLpKSSIsC6jc4j1pK2GTdQ42CvW5DO5ycfv1ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764036774; c=relaxed/simple;
	bh=olK2ejJeBocS61BtrHagfm+6vcwGAkq02r7hw0tpnWc=;
	h=To:Subject:From:Message-Id:Date; b=mGDCkKk2yZRABaxh2O0UWlYEFO4pNJI79Ln71i5W/EJ9Zzxa9GiAltBHUgM7/EeUugDHi8te8zSPpHdv2vWhLLMHiQrrIP7s/zW4zD3hHlHn7noQtouJfIL3tnTs1acTJTA1wmVAuoPrzKAFC5vwMg42rExZgnpNuNVaRjxkROM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DH4zX2gV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DH4zX2gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A585AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764036773;
	bh=olK2ejJeBocS61BtrHagfm+6vcwGAkq02r7hw0tpnWc=;
	h=To:Subject:From:Date:From;
	b=DH4zX2gVxm42fjrjLrkMzCeIerHV+QhgJq0Y9nZc23OSSmdXcI/mHOXua0IQh3Opc
	 bXs2+odwrfks2rtM6rb6INYq6SLj2jS7CqsaZ5tAoL5R4hNB8mWLVARXEL6j9acwQj
	 aH4KQTUhhvHZnxSpdMwIMB2gw+QeTp23QpBDLmUiJt+A24drNYdnZpVK3GI+QL0aU1
	 L+pZa0uyenTiEdzqUXzXyhdn6L0nRTh+Ci74JKH062vh8Jrc4jmFTz5dp2BgJFzsop
	 /Dx0q1gephR0CojhPI7H7y3JYhcnKn1jEeP6aQvodV86KxIzVZkd33pEACL2JnMPc+
	 QjacqUxl7nnxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F97CFD372
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403677358.13062.9966356767894954171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bccd004e86e16d87954e89cb580b17afda43ad08d01bb4d053288089e48c637
Date: Tue, 25 Nov 2025 02:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764036773

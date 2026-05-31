Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3A43594A
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780186474; cv=none; b=lRqi0XBPHYnqRIvEnO0YSqctdtrUzang+7g890SxImuNdMs5F0UdtKuzhhTzWA4HlZonRZc3jQBtTImBtZcHCkAqI+in7S3nePv8t23QTrJkD3qZ63gY9I3LiOmHUSyDcT3hMe8uqUiwZKn5xj5Ar2Dzj164A6zskDQZsjb4vRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780186474; c=relaxed/simple;
	bh=ycCL5D3LWBoYlu0PJxaSEfdQXGcAeFkjvwG34fztlw8=;
	h=To:Subject:From:Message-Id:Date; b=JD1qe66NRybzGicb/NU/pWxqhPGmVDplhP6wHaanNDc+JedHQVhUszmq/0BrS/WCoudpbwBXeH4x34vh/r16S+BDq2LBF3Qv6EDfF0iEkRThj+oAmOkQQ256gfVTOYg3shDXK2OxYzRZ51YmOxtFBdLbJxQEO719qURbqjtHbE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPK4nIAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPK4nIAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC78FC19425
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780186473;
	bh=ycCL5D3LWBoYlu0PJxaSEfdQXGcAeFkjvwG34fztlw8=;
	h=To:Subject:From:Date:From;
	b=WPK4nIAjIR1ii/vllcDYKjVRHcYYMzTDN6gT2F2HBXIqT/wZGK8PndvzYUETlQukx
	 /HjihJH7CT/Mj7+41vuG4SCo2TZEeDqQzOPrBM+exvyGlwAhBePgkja602DgZP7cc3
	 zjWCLKRw70aU6YSuqmGcoeJEmPAhRffjq+XPSn+OFZfydQLitNv01igVcEwPfm82LH
	 +XtCYu6x/Q9OPY3lr7Te2ep2RlUEYF+AZFI5P8Cw0qax+neT48mfParBwoEydLeKYj
	 3WZDCH14G+hxV2x7suegNRClAmlMez7fdr+9F9cuo2hyswYGww1Xi3BQmYIhPfDU4u
	 Ru9UdU5Ov52cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74A0CD6E4C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018647367.29507.8894219525566061846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05644dfc582828283e8a0e01fc9d17cd4f9f444eae8992890b227626fcefde96
Date: Sun, 31 May 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780186473

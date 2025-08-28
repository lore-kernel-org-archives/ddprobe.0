Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A687464
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756385395; cv=none; b=EEQQaqW6L0d6L9q2kfwDKeSkYbIPxp4oI0Pu6dgToM+IgnCX9q6RWHtS5XuauyV+3QGvDN1GZTB8gjt3lQuXwb3KdkHpnXHWe6PX+qWYGZ6bIm6NVndFjVK0sDXGFvvJRt0gWAKo52Qui1H5rlGMXez3Nm4UbP58f2qCxJLMtt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756385395; c=relaxed/simple;
	bh=HXIsjhcTOhyd5qaI15eTASJ1PTjytNO1/z3vkKk9XcY=;
	h=To:Subject:From:Message-Id:Date; b=COWBCiyOhpR3irR2lar1aoXlioSqy2weLgmjxDbx3dDjt4rVXiunzI2Du45ADUN7PgXod12aGPg+HRud2QWZenRaZNcitmpgSAdYvx8NCI/iyu1d75mHpd+i1jcIboh6tQMS+VDCm75Y0K1qax79DF6FTeNbf5DN5YEhA6fZt8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgiwZ8F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgiwZ8F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A229CC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756385393;
	bh=HXIsjhcTOhyd5qaI15eTASJ1PTjytNO1/z3vkKk9XcY=;
	h=To:Subject:From:Date:From;
	b=RgiwZ8F5/+dSyhVE+RsdXnwZPkrn9EwChB7b2e5YePk4uqqZaK73SOAiMNcijyizv
	 pVSWws6UnDjJ1EO+Q1ptwC8HXHtv0BpFWBkUQW6kBnseoSqHt2B7ung9Ygzczlj/4c
	 73yCn44m/xg3Wc6b10Q1TmCchnnlwJib6JQ7VJjqRl42S/M0feO1Ay/ZaY6W7rC7Oa
	 22va0juQTLExtM0knji8cC2OL/AAftDTvpB6PwziD4t7YhjX2oCrKUz/pDvu2rzL/U
	 Ccq5HgUAXPyEiGYUeczGSXNXlX8Oqk8rE/gSxJIfS70I3aZZNDGPSAOYT4VVUA6EaV
	 vjbjz+OlJ88oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F155C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638539357.18525.2104444128982586997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b2bb5d8a585de74fecc5a21fa3a115b2226106552327c8461778eed99ed7a1
Date: Thu, 28 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756385393

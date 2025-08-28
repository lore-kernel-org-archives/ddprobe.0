Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A28321454
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756399194; cv=none; b=s5ouFELEHRBThxTTu76M3pDsHHCKsoIWVs6Upyb+IPun8Usaxf5n7opx49LK4KfG/zUlmKSVr+VDKBX/L0oUe74i2zA7R9W+J2eACXhRgh5dJQp/AwM8MjAOfAOYAv8UTy5TuigU9AnhqkwhY5ElRwGe2+5PXCairRas5T0Wn8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756399194; c=relaxed/simple;
	bh=ZRexLKntCgNgK14PUsVCYC21aGKRuGkbqj38W9i6OtM=;
	h=To:Subject:From:Message-Id:Date; b=ZjO4oigTs3zZgbA4R/TvISXfhzYiuPSFPvzciQ/5pV2B/ZFORKf48HLW/gT+s6k0GrwYj60zK79UYgFbDrlw0GFt817+RmoadgHqcqVUU+en4yrBoUQaJi7pza+qpqhsBA0BXpjFXOPjbvF8XDxNLre5gBzf6sWrCfUqzSg7/3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsMv86wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsMv86wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB01C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756399193;
	bh=ZRexLKntCgNgK14PUsVCYC21aGKRuGkbqj38W9i6OtM=;
	h=To:Subject:From:Date:From;
	b=MsMv86wnl7znSQ5AgvR7tbSVJFJ6kjVs5MExfgw+JD83NKwU8nkSi9EGx+E+YCtzy
	 nfI2729c11t84e8axN9631i+024v0+TUZ1VzANdMNfv8b0bMa1hz5j8073zQBnAtl2
	 FhhJKSgTc8N92n9M14pHHYf09MraIuQJFDseVDVnVOhO46De5luq0Z1vCxha/L9sS7
	 sY4sMGCa/SSzHmAPCedJmD6OFS9o27MxARdV7YNGfWS20yalTtwjpri1didwm8lVtp
	 rIXdEWUoZZzZONYtZ1IM1lUgnU27TqTaIeSHikdLC0ylh8qLwOXocT+LT/GrtZv/+B
	 dd7juX9KYux3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD2C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639919357.30503.1815571720615987806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0c32aecad50308c5807b2bc9d3e38995ec253b2e56db592178ab2c89d9bb98
Date: Thu, 28 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756399193

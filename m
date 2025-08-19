Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DA9229B2A
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755632394; cv=none; b=PVDcu4//J5euZbjks6vK2XpYVn1WoHWfzaJZwuxFtsiBP/I5Vtv4zyTy8R82j7An5R5s7iu9g/hv3+pVXIdm6OMXy4qD3HNZZKVKs2mce9+//Y4goNU0gZfJ//ty5Jvipd2YlXKEpj+HtMVJQP41+2msLqGjeiboi9NrqQx/gtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755632394; c=relaxed/simple;
	bh=uDcw/70kQGZ/1aAK0J+vwn09sKUuutEnOl+0f+hIPS8=;
	h=To:Subject:From:Message-Id:Date; b=Ic9NDwqJOoA3gtphB9iniRx+fsfsNwOhW21Fwvrrd6wAoAWij5BL4U+Pi/CivAEsTlSaWJvJ/lsaeBjt0XHXug7tjBkhbtGaIsL7BqrebsvQuoAXfoROubixmTHLQpi0rMy1B2cmpZYwSawjBiZjE/qL6/gQK3nlXR3qkJ0yUzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7BlREXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7BlREXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06EEC113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755632393;
	bh=uDcw/70kQGZ/1aAK0J+vwn09sKUuutEnOl+0f+hIPS8=;
	h=To:Subject:From:Date:From;
	b=Y7BlREXOb/9LMCW3/06HN/SkD1mRP47vm43lAQcI0We3sDcGxuQkQ1hSO2MFY+n+i
	 UBk1i3rSjmhSvoySJL1aoBERvW02ptw4UUhhyDxTFqJKOryi08X6I5UAJKoCUU6oNc
	 xb030lTn9x211NA5OQXj9U9w0rSqGcFU6ec197KE93+OBRBGcTzRSM3jCFNNqcGMEh
	 75qZrafk14qqBqFHUmdZ3184lynBncQVkVSSDtXz/hpDssdpEQ352Lbx3svZ/vRhzF
	 4HDl7JAuZsHaYw8HO5863BRKJMAIIlJZjg9PCczpMNUqI31XAqRNIauWdFpYqrwGy1
	 C5pbEuz30Sc5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB1CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563239357.14893.2514994089417294094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806386c56eb79bd5f27e0723855ba1da3f18bb1334b4a834a26142d3d0bbd6ff
Date: Tue, 19 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755632393

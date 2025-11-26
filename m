Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BC3EED8
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764160974; cv=none; b=SOdmjfx5p1ekVBRsPU/2r2aSdOn3O9CmKaqz6+ICBi/WpM12WgQpnkCkuudMLUk9p4sM/I1gWDUfIdoKvSyMqH13ySkYY8H3Y1eZ05S3Fvh3dBLZiQbg4V2QqUaKHclJ+ibQpEJP8zwtajMZ8ugXAod5seN/LWGFdQZ3PCX1Yo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764160974; c=relaxed/simple;
	bh=nmunxZqF8zN7xbY0KqBa6gkyObdhfIjync9ARF3Oahw=;
	h=To:Subject:From:Message-Id:Date; b=PTPBdjTvdGATOvYY01MOOxZrUiLkCx1iWYrKWOF4hWE+OQEBh0uAThKTQaQaULaV8tu953GZaH+ZSD2nve7mTAuj0cxeLjqRlttZTtWeS2o1s/Lpj3bItqBprSqrEBknIkq7SmRDGZ1xestlhqr3PQct3My2BFCfhDweZ1eBZPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiz+pHBk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiz+pHBk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49F3C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764160973;
	bh=nmunxZqF8zN7xbY0KqBa6gkyObdhfIjync9ARF3Oahw=;
	h=To:Subject:From:Date:From;
	b=iiz+pHBkdOnYjrbnXfEkfIxYU+It0nSWg+OogjmQ1mJ1gEMPXunUw5Z7KuzAxG3uH
	 dT0+aR/MIQLrnhDL5b/p7ZeuYBCgG1EHql8iS55U19tmIDPMv8cKG56uIN8FM67Pof
	 eOTdCV5PwMsrPgMkknzmKo5cU2WPadKMgztufZnquyg9rEQZgASb5ESMM1WRRI5eJi
	 xF5q2UknuJDbpK7xewkOzro9P33E/1Tktz5jTDy0/YxDou5R9J6BYETR86w1NLMkHg
	 dgc3Bqkz7O3AV8oe0CZ5xQIXnErlGvl4dIaEc7ZyDsM9OSFr7+5MWdohE5N8I+w62D
	 QxTOg8O2qyLJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9155ED1039D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176416097358.32081.9435503750593456407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9f36f2416506eea32cc4e88198e036cbf7a4cfa3054a577a8a37f0ab8d7884
Date: Wed, 26 Nov 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764160973

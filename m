Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350E64C79
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755465594; cv=none; b=FFUnuiumzeBo05H39glsakNpd9ZL/t/Ji+ahcHutb8a1FcT4IJ+QrVNMW/4YLVS4Tnlu4JzKoOIawY7lSkTzf+2VOPz1P4H6fL9ieBm3nfHxY4X5kz5qlDKXlj0jXz2v1xD1FogPxbiFAl8z4trsT2yVrE0V8pQvYplwA8JJgVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755465594; c=relaxed/simple;
	bh=PpExx/ERKH6thoBgV1wYbn6FVqYhsoQZojA9i/LZbJQ=;
	h=To:Subject:From:Message-Id:Date; b=N7JWyjtP6ZTQAD6Vzv127DTw4XrIyoCurJxAWYL7GRT+rO0q7v8rG2dT1Yfr/kyrUAPfeJVgOlCJUEyvJqX5SrNJ/g4OGKOYw139KSP6V79lEioR93AZ4UN1Nc+/ql2A4R+h+5dkla8tiwTXQr3ZaaeI2xXixhsL4v4Shh+SUuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1rZpy7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1rZpy7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755465593;
	bh=PpExx/ERKH6thoBgV1wYbn6FVqYhsoQZojA9i/LZbJQ=;
	h=To:Subject:From:Date:From;
	b=g1rZpy7sG1QOYQzfJHXbH7tK2lSVUaUT/I5BJHYuiJQX0FqTT6+2h7EZ0UHRnZPDC
	 hlyZ0+lFTE0SyMcMsjtZ4M9wdkJj4mAFKcUN9rSBXmSx04oYB6GSZwfFuhcjmWcZE3
	 eNcmEcmFwBFUfpA/1uth4T2K0sBWIm1cOEKL9Sw9JGj/p/ygRy8/oH/x4DOuPqaTfi
	 rEum39XiiE2Ph/AJNzaWB2OFFDMc9ZP78+ZqJ9X/byIUZDtJbfeq72XIAmFnMmXnuY
	 cQwNoCjC8Sc42mzmClJGIvtzpfnImfBqd/oGZVduLeNJm++2kKSexy5BjBZMREcTuJ
	 A6I088xOOabUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D4CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546559357.26929.14297402043154193593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e81ad8eb573cc83a28198cb47cd149982da59e3e06992526aaa00edf4d6f67f
Date: Sun, 17 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755465593

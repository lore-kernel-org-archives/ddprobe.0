Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3583F1A9B48
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750058995; cv=none; b=gdDZ+QKHEqLlfUTbBZuondCcNVItVjaTw+c5+i7WDNzkEQgg86leuD2mFemXzeZ8rGG6GMY4VEj6IHqTuAgaMv+OtArhHWUadDMZon3jr+/iQhgkJvcsvBHbSPFirxYZ4NGKYOHb76S9YbWXYuOEt6js5+IxKiKzIxTpvHtb0Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750058995; c=relaxed/simple;
	bh=DE22QwYv972xm/siIqeEOcYOZDdDp5TVlfhBskObQtA=;
	h=To:Subject:From:Message-Id:Date; b=UdwQb+SvdmkhMvi+mhBKNbxAeyDEF0msUmX3Q7EAEDoG/H/s+pw+LHOSEO3JHWMh1wc9K1WGd9hAMXptYvN8vWQgZe/lTLscJvmh2YP1Zp4SIXoDU4Wm7XjOsuSDLul5AEOKDbRsp1B2XCFHOwHsEq8uAbIktDTeILbVs0Oeftg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sV3hhrXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sV3hhrXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB15C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750058993;
	bh=DE22QwYv972xm/siIqeEOcYOZDdDp5TVlfhBskObQtA=;
	h=To:Subject:From:Date:From;
	b=sV3hhrXwPKwRp9UYjNgLv22U4928XpMOxTJ5hXUCXovvh7yVXtodForpc3hwY7q4J
	 oxdtSPg1XuGHxF+HoEhxqEEc8Ll7UcIe8VdyYoN81NM6J5YWGAAyA7N1z5kxv74EqM
	 kqV/5b+4QLvUSpMJ47127rC2iHf34ieJN1aZwd2ltHfgD6cbQDQ6kNegkuu3w7c8Z0
	 5UZ80WbFSzb8ZT/f0/+RI6TFx9TniMLozMtn2IvZzbTaTv3aEXuLhP9DcPijCQ/DtI
	 aB0tzwmoN1oV9WVy5MZ1ZT0Fpl8uS83wP4ryZjgsRJcVCKvhMUu1mU7iIiQWGudakS
	 BupnIqBlPm2WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B20DC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005899362.7362.12455912276607885676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908f427ab43d87b42af8e3c35de0b7cdcb3aaaf79c3b3c49a07597391acd2621
Date: Mon, 16 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750058993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF94E30ACE3
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770416033; cv=none; b=hgpZRY7fls8nippM8VIE2EfNQ2DYoiQ6oFiw+UV1uVUG5GGOQpALVXZeG7oMxb1vDU+Eg9mhgDaNSo+73S6kR+dqXTudTUAhJWsl/MqvMaeNoAMkaX9P2hki5M38jjx/wAeY8nDU++6mGJtsv1YGgsqPXC4cmpeKVkskEsWiPdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770416033; c=relaxed/simple;
	bh=SWpoLgMxtd7EVzcJyo2eIuMWMxBFVoxL1VBg/CvlEq8=;
	h=To:Subject:From:Message-Id:Date; b=IGwCZjAmpEx2/0txk/JjY0ATuwlo7bufXXbnq9K+DQ7K92yFDBPQdYH6lGb8H5H38iMNyib8HbSY952+/MjaeGQGztlJVHe6CGqHSlORq7QkOENPULZdDupc3EBNY3CA6uVMpHRyl2qJ+T3lWLvIwMG9MnISqYyGmCsxdR0tpOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltrA2wvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltrA2wvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24D4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770416033;
	bh=SWpoLgMxtd7EVzcJyo2eIuMWMxBFVoxL1VBg/CvlEq8=;
	h=To:Subject:From:Date:From;
	b=ltrA2wvMmKy5YyyRyCry/scjzX1JqNR+47h7hksnEBvjH0P7wIys38jehtrh9o63m
	 tj0qggwvJBfCcoa+4E469Y0tnP+HshKdydg8QDTfsioDpRARZZzmytwfaWNgWGWm4m
	 aSzShq4rTiQmVkIRCBOc/0v6sTvOwJhZ6PNsPRdl0UH8ZILtOlZxf0HkszI0yhTK+v
	 VEAmwEjjtYiR2ljj+4i2fnNiV3COd18CAHkAaS9NMVwdImm/vJAeSDyFZ7vfsTe8Jx
	 ANj3w+DaTnIweigUCyML968TSsCwT4+KzPgqrPd9YR63n/GdxPi0YcgC64BImN50kU
	 20otC9H/XOHQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1380EE6B69
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177041603364.4532.18217516968489762360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b787b7570b673076228676518cc09df56ad718617523d1370907dfe75ef93707
Date: Fri, 06 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770416033

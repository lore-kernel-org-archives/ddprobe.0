Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188C31DFE4
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731381354; cv=none; b=FdMoO3413Q+WHXS3qJ6hgwyzH9bZVSQidZoOlJosRnn5z7lfggWHvNydGLsaoz2Niouz6AlxxcR4MOqAgDHaBlmQLPzBS65KS9SdApvpn1kammhXR4Oi2TCXDk5Ll5v0rF+V4Fp1nlFMfICtZ3yc6sgvmtE8biE30Or4WR2vW8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731381354; c=relaxed/simple;
	bh=5zDcK0behQPjjWbP8KALhWSb+ftQPkg9+h5nwrA7cLQ=;
	h=To:Subject:From:Message-Id:Date; b=Crkt+G3pNVW1EnNyRuKdIm+mYZJtPt2MtXKq6CPAp7Od0fNfvDhSufUhay6eo7zTjuGHF2BqblDypCvyIIjhCEKUzhZ/27yavkKHKzxrF/fGr1McshTJQbP9x2vySLa2nx6XNNSPP11KOm3mo6a8jlq4lU6VyGuC2iTbCHEeT+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aokjUkmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aokjUkmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B038BC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731381353;
	bh=5zDcK0behQPjjWbP8KALhWSb+ftQPkg9+h5nwrA7cLQ=;
	h=To:Subject:From:Date:From;
	b=aokjUkmATmdrtwgf88QWURjUPOCNoW+aYXfPPd5lk9BlZ84JOZUgw+jfCGoQYnGij
	 cSzpYcJVLiJ7S6MEh7td/K0DNPKdD6gAQYqvvj+2+aLW3HzVLuAvKs9Wyd8A+4dz8t
	 LHgBICe+Kzr/PEeVT1fDDnjSFIMN9R2IrdK6gANKcu4kKh2k9NAm0l37t4snDuwNl8
	 JIPXAErWQT48ZeB/PtNYmz/JSyKaAm3y3/3eNXCivOEjf+qT0mgrlfEJSXoht/y37I
	 FenoMYWOppG6dE+8O5bIUde0ckgxD+iOZPsWhVjzlcKZzA2ljrrAR+hCckC1B152lq
	 nHzYY0gmErOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9606FD41D4C
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173138135360.19960.6477256480367571904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cb4a745a0b4f6248c0f5ac743db999bfb46ad9967ccc2c0382cd048a56d33e
Date: Tue, 12 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731381353

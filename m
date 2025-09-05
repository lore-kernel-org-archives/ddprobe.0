Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C66CDF71
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757056194; cv=none; b=lzWeuze2EMHTcW+YCGSIASQH4derp4v0Qfwg9mCCTm21AJe+vqCAEznfbXLuyzTEB1MT2WNrQy1YS/EZXkFSw2FB9ZE6aQltSTUYEq6UX6Bd7B+6vjPyOZn+w+QNSqenAvvZD1daNJm03xbCvn6l5yFnZygGbjPF2AlL62Wyays=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757056194; c=relaxed/simple;
	bh=fCzpLUEWMJ4VT/8gGATcRmIcLtWDTF7UgfgcpcJyDus=;
	h=To:Subject:From:Message-Id:Date; b=SfROZGRQfa0riglh5dlKsvJk4M9/czP2QTQnephRxEIpN3Ny3WQ4161sxabQZ6afZUZVOIQY6bcwzGGtpn/aEbroDCV2Jfvb7heGWc25BUcqA9ezIGf7jz7nV4BIKBe2lHmmMUl5dJwXagnnF4Uy5CrTrCUEuUSEO4AXT3XeZOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXdstXDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXdstXDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0482C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757056193;
	bh=fCzpLUEWMJ4VT/8gGATcRmIcLtWDTF7UgfgcpcJyDus=;
	h=To:Subject:From:Date:From;
	b=SXdstXDiVhD6eSFaQcxMYaQ+lP1kPzOCv/Sb9pf7lppThb795OTMVRIhJQTU31p/B
	 KoT6B9XY/gi1pDNvmXe/1n5cAsdxeHmzvvlYIlZ9swih3O9QySeMWzk0VFSp/q64rH
	 QIhe9x0s/icLYZyH1yGfOUarj6eoUHpH6d6ZLKt6Pktn3iVvhNfEW09Rhe8/dC+0IT
	 MfOyvlTPi3W4+Yfq6zS6YozrVfvkOMSblwsvohoz9xVV6NV1J6KkRtvQazWuFvjfO+
	 DmGGDgOieJ4JccMHGIqyMUJoVRKXHRvCZI9+nsatOejI5n00f7mtTELviHOcNpi1Ix
	 tf1ajSl1s3Mfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F331CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175705619357.14702.11175407080589571712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5131ad32cb4b575eae3547463c2470e149dffcd6e62784597ecaefb63bb22d14
Date: Fri, 05 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757056193

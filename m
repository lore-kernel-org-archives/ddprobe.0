Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27387342CBA
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777613854; cv=none; b=eA/XynbPP+7u6izMRlUR91+thbLX86DMfmskmbnRa5jELhCYNM3t6p7/rJTzvSMWP8XUI6jVWQ+Qk7ctQ5QoYVz4WuqNc/3e9VHLYkYNzuww7WL47/Nvd5mZN/YDCaIvoBUjq3xBKl1v7n4vDHorBHXBzWhcNR11w47QbUoCU3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777613854; c=relaxed/simple;
	bh=vOAnJsIqq2Kg6ph6Yy0PGR6BGCs0ocU3GXeaXSOAx0M=;
	h=To:Subject:From:Message-Id:Date; b=IQVQLPr4bucTvF42CSwxOgHiJkgiTYCrVsCebadony/ETbJw1up8/l6GdofAYmHXgMgfh1vnggof/760JeErIInk/KrKVYT38AGjijg8F5xpkdXrXo4yz1GR1xCqalfawj+6G20/6tSBwblP+Iwb7QyZ2ICWTFgsDqFAZDFDsHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIfUlm8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIfUlm8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8E1C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777613853;
	bh=vOAnJsIqq2Kg6ph6Yy0PGR6BGCs0ocU3GXeaXSOAx0M=;
	h=To:Subject:From:Date:From;
	b=IIfUlm8ycet3pZ5SrOefFVzYWlnc5gQVCSheP/ju1w25DyJKeYIJzvAD5/bW4JvBE
	 Isv5VuyO4dtErbL2eJDrC+u7Zvhw3KooEknjREsoQ2T+u7ZJUo3bs6dEijyyX22KV6
	 Bm+lt4FyT5+pyv4zUUzrHnrj/brohCuLXFAUOJyWlYYnWl9qJtbmBtkePZgFI1uijl
	 DvbZxLt6T0ZX1f2g0dQsi7M6h4bEerGy5c8oevukV3YHH84mOQVFqEOLN/gEDjJPlC
	 7yW5GEBr0YQWQr2a/oDM5nlxThoKM2E4hr6Pl3GmoNsFt55PrpH0oakdZwiy6cuFct
	 zDSRy+GfBFKfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE891FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761385369.21285.13777500393525299760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dad2364a8ba87f42aa283bcac8e6573186f78651024e4bc3748cf615bc1846
Date: Fri, 01 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777613853

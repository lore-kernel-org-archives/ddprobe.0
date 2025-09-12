Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C8E274FDB
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757654994; cv=none; b=Necb4D15yOtDN1zTIVbkr/+49QoYHahDIgsZUwt95TgAGrJGTWzP+vMEPtkwDTQmbGifE47H0TSGWjqRuQa43GMKlQitZP+Oa6IILEjaSsvuZBOETHTw4DqO7tTPvo+zcAjY7GYIBve3JPX4Cy6B1bLW2f/W++U3a0xomp2iNOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757654994; c=relaxed/simple;
	bh=+PFoZDvfUnpqJHT37w1LghXDSTPDMyL+LJehC0CKiI4=;
	h=To:Subject:From:Message-Id:Date; b=mVt4FFUS0u38gt840lFPXVlYPKNwkoYcbbG8YpywoQ0i5klMFwuVcZXGIVZoxAcf97bpvajIGtjAT2DEuasDe9cnMOgfu22W00VGGz0HAVUhmaizrq5piwwiubNkyOXkSczf1MONIKT6JtQacn7KTgo/J46SQn9IQZIuwTmg3/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgAyLUKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgAyLUKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCAC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757654993;
	bh=+PFoZDvfUnpqJHT37w1LghXDSTPDMyL+LJehC0CKiI4=;
	h=To:Subject:From:Date:From;
	b=tgAyLUKLgxK9JfMnzcEnFJAsoybrKSlo8CQ/LmNMFFBjM6I3VoTXx2ylETUKPytdO
	 8+SFp9huJaEosYY376bgQxtb5GB00dDd4DI8uemPb438+67YtWO2N6Mpwi+75nJsfs
	 id6PS44AUneSFkAgWeMoCzCInTe3dMF4/fabsRPRPRRuXjM9ZZ6qUovCNNummZWYgL
	 iAPT3P/IAQOx8+FdGpCzzSf918K021s8ebRCLzHpav6OwOdgUJPRjiEddslQIvEZxm
	 9dZLZDLcO6H/CLCe7Zs6hlcx+vIK/HnerIFxTNZT2jU2MyecJTkCT7ZBnthsyKpplG
	 Ddb1cUV5Rzl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F928CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175765499357.23491.16774842288211069519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5291e9a3b7f5ae768023d6c44bf4c30a1ee7205a7aec50e2261484c425afb0d
Date: Fri, 12 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757654993

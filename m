Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D43C37F32E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791099634; cv=none; b=sk57FQq8li+/qapLuZdYFPCsxGF4k4lOXiWP6h5QlgiCh2OFFVaTH5Mkm60oQjnaDFByaBbFEXS5OOcxQh9NQX9M4u0P7akIXOJuvv934uMi9Mn2IppfQNUT8sJ1bRFYmh1ZaTQXSJsF4zNe0EfEQ7A6ImRrHAzluf2YPoOrnSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791099634; c=relaxed/simple;
	bh=ieDOZyTV45yGGSjQrcLI2Tb1dGJ6tDF0ibEatMGJ7N8=;
	h=To:Subject:From:Message-Id:Date; b=CedlSvJBmz/V2fawsr7svff0A8DE/LUNX3tz3IzbvF1AfNRKMARM/EdEDIw/UehyOvf9cmFUlV+h5ZdCEPl7h0kAMsmSFu8zQh63GTLEzrY35U72FTkG0aGJYLfJchhNP4uVxU5SvuG92kiBH4N9O4DIyBXXSbOnJ1Wwh14skfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7/mKWjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7/mKWjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791099633;
	bh=ieDOZyTV45yGGSjQrcLI2Tb1dGJ6tDF0ibEatMGJ7N8=;
	h=To:Subject:From:Date:From;
	b=o7/mKWjgheJR0geNpYIRxrbP3JHNkjgmNYPq+yDnc4yFCKHAf49SPyfIZuUuYg0G+
	 g3gF0Pq8iNACboH8GalLZ5N7qDaXhm2TDI20GvxEj6SEJi2das3ZjvTlH3e2BlEW/n
	 hLXiewq2ANDn1pIY1EiWmKB3iIgnquYudxQD31rJZu50QdqtrPWFKnbdGyH8ZiyoaL
	 Vpynuo5DiFJQ4y9giQELbw9ARctyMrBCzChNwUQu654RTBmOWQIBvk6541lLx3LdW/
	 /Px4d5xaot9c2LUuR8oi1kbIPPWuvG3dKEDE1fceX/5NROLkTjVk6rFpOI1uOpPEof
	 momukpEth2VCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC894CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109963369.31806.7404880993018061507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68742229fc7bbab49ba39852f72edf238fa6c4633e31931b2c5c7d47e4bde43a
Date: Sun, 04 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791099633

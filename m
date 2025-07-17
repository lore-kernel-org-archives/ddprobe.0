Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B091509A0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752712194; cv=none; b=rY4IhgLnTf9AI0V7pIIEc5ZtWVQ/w1Q44WCSNEkfZUKrxhfw03I4N3AdBdIdtHH4hUjywcsTclDyjvWAZeeywJWFcu3m7zBTQltcIe+dkQgfzH8FDKM+88LDMXllp6j5ur6Mopream0U8UH67NDQ8mt00GHbSyTwarHolU8hWpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752712194; c=relaxed/simple;
	bh=mwi0KEYqk6eJQ5C2ou4N4u7FwlZvI8NlKERjvg+C24s=;
	h=To:Subject:From:Message-Id:Date; b=LBFemA4jEnPLVv3FOcZX6EXNfAPQvD8b5LBQgdI43EkauefPHv9Bp0TKTmxWHpYhUDgdlDzBCKYmFqh/SDrndBWKbiyfwTGhtymVng3hZxVibSdesMQU58FLqdZ6vtLvn6VdAXKEINeMQUiO6psjwaO9Tx9KRghLRF/7x6yN0UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vpa/+Md1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vpa/+Md1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26C3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752712193;
	bh=mwi0KEYqk6eJQ5C2ou4N4u7FwlZvI8NlKERjvg+C24s=;
	h=To:Subject:From:Date:From;
	b=Vpa/+Md11ruFHsWgT5PPORBRaS/mLCsXGX3Z9VethjA6/mlwAhBXlfHe2nutQ28I4
	 bQ+JxcFhbT4rtDUVEAk0kXeTtlHBnDYf7qAE1Qnt6k2lsBA1RslyEQUgMXIi6+O8MZ
	 dcYzFpcJ9XaC4ZRM9RJjR089ZNOBZENSVAjkA41UAqjRGlwDPxaUaKIKFIl/hfYeyY
	 bT8XIxsDwybV319nTifQlKOGS1s+akq/+Bbf5CJHisVwoQH/w96NCCfzA+R7o5ISKB
	 7ScKkI5/CJlfy0eER2296BzQi9tJHvYbuIuqmbq1HJp+VtvLG69hZjtAD8FAluqu6W
	 190iDBdoUQhSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C5C83F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175271219358.19429.9049841820666248127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfc4e5f664c8b62406f1c6cd596e62330372d2c213d33ff3cd292d984a5f7cf2
Date: Thu, 17 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752712193

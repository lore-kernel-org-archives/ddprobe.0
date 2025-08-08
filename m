Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151721D54EE
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754694595; cv=none; b=gmgIbfJ86FrOZE6A1dersttY4gfKZXgd4KQST+CqlUVQXQjLKI2MoIX4P46ubQCovMMBhHlnoSZ6jKemxrZmcmwbavMfQUcu/9tTyApbrgItUYDau4ZxUWAYzfR3XvbmI/jdiTsViH3i3pTrpiC8wal9jUgbIIihPqx+GCYnNHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754694595; c=relaxed/simple;
	bh=8YcSPKzBW5HjoUtFgyG7Dl9jT/Zw0e4JtJwTKLIMp80=;
	h=To:Subject:From:Message-Id:Date; b=t5KpzD7IbhlGH9eXyI1Pne6GI7RY40jwkLCvMlc3X2uQpHzov7wfWmlupFdhU/dPeeoVBU/wEjlf7h0B1YCotEBeUkylmUbluA/p33p+DitLavpNuqfAJLtUeI/BPnu+VcrckuDQyNiq78Qa4JSZTwAqW1mOoqgQuZ77W+gv9JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YeeTsLap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YeeTsLap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFC6C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754694593;
	bh=8YcSPKzBW5HjoUtFgyG7Dl9jT/Zw0e4JtJwTKLIMp80=;
	h=To:Subject:From:Date:From;
	b=YeeTsLapMTr+py+rkcMsDnbGermjtVDC6zXhXxrpJF8qFEVDXWpklsb5yyx8Oh7tF
	 ccK7MTPn9wXbxk8jy9WA+1L1KwR8c/2fx+2IqXobKuWjbK5GC3OjDv/l2UFKMs8r1C
	 G/dhWCL9Bm5UGpDjUk+2mxWADJnmyu7LUM/fXbSyQB71oYeivW1g0g4mbiYju2vfTT
	 0KNchYb/fUgpF2ePA1aGiUzVP2DERC5TvG9bT3k9I9fv/oqK+ghKBZQxdT5qkUHZiz
	 g55jq9LQeuxwTquTXUp/qDArkYEW3ZXTC0jSjKL6kMR/wANHxXSV1V9dOCTnBKRW1A
	 x+MvKflV01cxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F333C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469459357.2667.7650367468648275342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8ad0001d13e2f08f33c7546063f5ae22db4ed5b1db5080a32c70886d91656a
Date: Fri, 08 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754694593

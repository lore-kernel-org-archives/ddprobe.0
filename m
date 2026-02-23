Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B233345CDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771827894; cv=none; b=RV0m7SDkDdUot1Un5dlsiw+XXCPX1Z8YhNeTusAkTUmCEPRi3OTawyrm7LjHIPeJ54rlWu9a0609SWs60DzD9JJDW7MzWy5TKAq0DRcLY3YZB+zb80kmGt9GcQBx6qr4uU6MHgdYa7lVLAqswetWAoD/FrNOh/hYDKA4BfIHxe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771827894; c=relaxed/simple;
	bh=Z9YYzxlUiIIY1AkkeDE4/IiVsUvLpRIcthatytS9zmM=;
	h=To:Subject:From:Message-Id:Date; b=ltH/KwQUzeIWPrtyjU862OVJ0rq6iqmSRYZSYrHyV4n2zak4vwt48ROMoXgxfg9giOud3veEwWQplylADZtFabratZ6ZwxBYVm8uxifI65NRcp/iT29aS0+ixCEg9xQQ3i4Ka2F6UXQea56wL8JUhUSMcBdGZBvXRtKfOLwx8cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBHbUPGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBHbUPGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A580CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771827893;
	bh=Z9YYzxlUiIIY1AkkeDE4/IiVsUvLpRIcthatytS9zmM=;
	h=To:Subject:From:Date:From;
	b=kBHbUPGXBBtH9tx0eI02Ojapfe6yEXaB1gcEOEejFyqMYaXNrxjNcdRJy5eFqDRpx
	 O0uPtIpw0ctVSecRqh93BBGuQPAaELUwXB4GN+mPFPVvWX00sEHCOHtoDuH5SzFu/J
	 9xH+ME9n2voDiFcpIJpiH5tEieXsWbwjw0NP9xXdnuG2ftXOHEfpIFo8DdXZNsy4ZK
	 akLw2waE3t2m1FmDIdkcxG0cbyoRlTkYcJI8cwr3UJwRhG5VbPGoeCBbu7epUKRXcc
	 Pj913Z2qLws4fbitnzd80SeqZgD8dKKAwar/e/faPBDg+bTRi3ZNPJurwrYxcqJdDC
	 sU6mI8rShfGtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93223E98DED
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182789359.9480.13772287386139427673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc803ff05209bdc9828562058295161c882f68cf847b327e6922da45139d059
Date: Mon, 23 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771827893

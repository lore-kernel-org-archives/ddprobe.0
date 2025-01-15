Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E740F9CB
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736899554; cv=none; b=QH6dnMUHaBmr9NsnRN/4bbDnY/PEzbJUI7D3JKIgvvmOfNN9TkDiv/v7Z7E2OD1WIyn1WJ8ovC8UBLtK88+6B4R8mp1DExyWE8O+g3jqyinUVGOWqwlMwASeN0Gf8hvlMFr9oUgmNkrKAB4R7M2+Z4Ou//2fhUlU9r2xeppqmN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736899554; c=relaxed/simple;
	bh=EQSHJXLL+WGgA4883aYUwma9lw+wnmyhkQDWGmu56uY=;
	h=To:Subject:From:Message-Id:Date; b=UCu0uyIGOy0D08AfB8dGuoS+9bPwHErDDP9ydMG2Q5p1WIFXoCzHmaYw8uVAl8V6HJgNRe83htTImWA6amMjdnbIcfgWcE9FxYvZtfPFqPSyfkRjGihEoszK4OMvzhH0W6L9bL1NRiYjMKWtkKq3/EswRUNhun8IToztjRtZNig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJJAuHsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJJAuHsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D191EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736899553;
	bh=EQSHJXLL+WGgA4883aYUwma9lw+wnmyhkQDWGmu56uY=;
	h=To:Subject:From:Date:From;
	b=IJJAuHsbtOAGz5SNuU0ke+gIEfifa0K7SU35zcCCX2xAoDiJR9LHO62ihpKaRZ7Mt
	 lRuoQqqPYrXNChfSjkgDni9elfsFmv14UrVXyrc8hWI7DPZDn2S3UCikPN3xmnXyyx
	 8itbKSOMfmZQVUkmfxhI+QsjEzrhQJphCDePqQOFL6grWGXN5ONMUVlDfaB+Yy2xja
	 t/mwOMpKI88UfX7GLnQqz2TUSa4Vh9WB+iS3nPLirJXkTsuQ7aH4ju1stSUzGZX+kX
	 I/I6KCX73TNcmqgF5qOAP9KEcCbzAM0Rh46LUKO3JtxxcTvTxxn1vztUKeNcy6YIUU
	 IrqDFUM8yvsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BD0C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173689955364.24611.3503560830592648079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43dbfafdcc442f5fe5b56c62b103c93aea0d1cf62479e32a27de7f849e84e45c
Date: Wed, 15 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736899553

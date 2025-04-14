Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D14428F4
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744610994; cv=none; b=iFGiIFLEFjuNeqfTjJpIzV0RnNahbEoxTIIeifgAp/TnerglDTN2CbVweXTs2wfLoIQCG/ViD+/rkXpt9XynWKneosLg1frryK5/2bB01RRFKXtRe8QFg6sMMUT2nJG+DvdtRUorq2wNcK3Egrj0PMpYbPgirnJwL8e09OSp7xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744610994; c=relaxed/simple;
	bh=G/oqp1JWJb5952LsOd2byzqYtm/kC2X++oRdrnl64hI=;
	h=To:Subject:From:Message-Id:Date; b=txFM650yjENAnGyC3e0uSmFpPU5lrMpwAwOwpX2v1u4ebYq0dFYRZ0LTJt5PPgHJh1UPexJsLDxfkIq/PgvvYtzixGj1TSTm8ZjLmY2yUzv8ZyWpAhItUlb5Xkg2uMfQI7qGQDBVfF+mDe4JNCP0NS/8jOoBeM6J7OUfeUAK4Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZO9TJ4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZO9TJ4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D2C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744610993;
	bh=G/oqp1JWJb5952LsOd2byzqYtm/kC2X++oRdrnl64hI=;
	h=To:Subject:From:Date:From;
	b=jZO9TJ4CCEvsyGjsUMPYSrYpDKpvu8E3KDmyq5B+7AOsC52uQGtknj6DR1YGgLwAK
	 bJIpTRJms7EKIUYJ75+FEFg77fM/orDy5b6dvLTBBZfEEt0sGQGacYxq4XCyNs2fNA
	 D3OCikLsRAGqVJ2jSKPQ9PtuOqsbNTLPjRFf3j9QoEuzo/zOS6WQqjHytWElTztnbF
	 UtpfIuwhcExPkpj1uaJaZKj9RSZWBSoP/I5u3nxt/KoTnt2A3f4MknLG4ZQA4OGq5b
	 Bv9wy99n/mtlDe2vqJ1btNEXxRkPKgiUCC3Ch/odQXZJsFW1COSaFWy30HeaicRGQY
	 +CwozBLaj05Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4EC3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174461099359.23823.9850091983888949165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886784c3ea03535381d83be2e681ec1febbc87410b6ec9c0b40666dccc223d2d
Date: Mon, 14 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744610993

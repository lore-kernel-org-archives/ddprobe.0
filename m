Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CF01BEF88
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734536154; cv=none; b=ZTUdOacypdTqZijQUHlahJdrq4af/Y+Ut1cty7ZQbH58fMbmKS9VFNf0v9lTusrr8b0kL3hyVUdrxdqWHbKjL2+q4Pwloq6QjtTDbjQoQhsY8Pez4hFNB5CrXHU5hrudn3aeECAwrrDQrUIL/Zw4eyYLvaxrBnUjpVNAZOikwlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734536154; c=relaxed/simple;
	bh=xE47oMm3eGGK3NzccGRXFxsOAbrqVZXczVU+KyNoVRU=;
	h=To:Subject:From:Message-Id:Date; b=b5wOCh4504kA6daCHkw5cgg8kZ/ooHqY7AFIZQUb5RTJ1A2WKobhpD9Q7+mYSRvCRasVQrCm+San//uIHEVFu2atCuAMKE6T9QTIDX4Ihs1qVHLcvliFvTIFbYU14KQuF40QH9YkPmeX6hEUmR5HjH3KfFFdyoMundSft4U6uzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyKltk3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyKltk3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C6EC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734536153;
	bh=xE47oMm3eGGK3NzccGRXFxsOAbrqVZXczVU+KyNoVRU=;
	h=To:Subject:From:Date:From;
	b=WyKltk3ViVbMoq4v8m0Id5GdUp5GS1HSzjDIAvn+oRiFj9TknjIj20AEj3SgpV4OQ
	 eFw8hLeKfIm15LLV0SOK52hS1ph0TCvgkqguJlbgZBmN0YxM6UTd4gXL/JT2T7FUQp
	 p0TOwzeLGEaGnp2Rlrcw4O7gX2toh4L+KGJFxijnk54H0hOfZ0u1mRzd45S+RkR1su
	 9uIxnW1uZoPD3n2vvMVVJ//z1HlaRSpquq64niKtmtUB2E6tcwxRSp5Zm9vCVsxhaI
	 4HpZQws6+rE8aOX201DpNCil/eMDIzeFnuJ68/QJebXoQ29mRPPFFtcIUpsvhSUs34
	 z2iucvGMmOwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C58E77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173453615361.17250.9119910213882788496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47f9491310051aab6373bd0cf598f64907dc7aa8c7decf5027b5974040e3c67
Date: Wed, 18 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734536153

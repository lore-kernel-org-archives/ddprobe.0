Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AAC2D2483
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783471714; cv=none; b=kh6N/4SKf6MUIuAMOhKZ/rQ79UT2mvNTlEUGybxfZHYK3Uf9fU/3UF2X/mSye1tMxAjxl+xHYj5zt6CPD4c9Dqk3L/b+VzfMh7QY07Fpi2zRX8MsBlSQSvM6y5J1tetmDy358x01pRjORIvQmRR13Ce6ibZlCpgUvp+2SY0dKyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783471714; c=relaxed/simple;
	bh=Fje+I44mFMzm0vuhrfwLzOy9BR++qjBcpCXU9JIux9c=;
	h=To:Subject:From:Message-Id:Date; b=OmdWUz2ui/elGWbJj98qsFYNVRuwikJe6zKwcwNy+IFVCb9bpomlutvoDfOhLz5NJrcwK9BtAyfXMY/Gnx24XSBJFaOfnTAMtSzaZ+qJfkx0Y+Bc+gOMb4jBbgVh+xXwfGGMbLHPaOT+qAKLLbosgt+DV0lhcUGCtvAsjdNUbWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=benbh5q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="benbh5q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7EBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783471713;
	bh=Fje+I44mFMzm0vuhrfwLzOy9BR++qjBcpCXU9JIux9c=;
	h=To:Subject:From:Date:From;
	b=benbh5q+cpP9d27pgF3STyvb7xmIUSodx0VH9cmbD4rZ+alD4vj9DPmvNi5C0MZL8
	 DSvYOePyW06Nw04HdzA5JoSI9QF6+T3N59e4+YeqHnTobNsVzSd9rt1qGjNnqslAQl
	 DzFNVYlPImKf70+oJdTWOiq1RQUhZYvUGniohSPoxBy4JdKTp9CSrqobKdKs92FkGr
	 o86NCwzoQD8u0iPo1qr4S0Z0AWXje88jrIR4GAgKQsGYEdB/HbelXpDcdhxnIjMskZ
	 AIMbRRWRHq81O8Q5ylXj0f3QxDf7QW5C+scyvrIM77ARij16cSmGqapTdQk9zjDtaU
	 JSbQpP7XKJVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB07DC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347171368.10327.14581227093678549737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1317e605b79f3aef8a325bf497d52508b4c13cd5b0ee7676798fba7d7962ec84
Date: Wed, 08 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783471713

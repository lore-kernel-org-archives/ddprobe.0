Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66861A9F9F
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759067993; cv=none; b=kTJxnJE6NAnuyObhUroethZknGoT/ezgc3zvCl9aPIWveMUmE0LP6HOuw2xhtSKxC4ZgYIbEEn9NS2PwrB7nPColyGHHQF3Af8Y7aCKm7wJ0nSav86Yqum5Vtu1iAV9k/HOmXfPNP1OTzHIVHbG8cEgdYz9e6VVnlE1S0n+njNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759067993; c=relaxed/simple;
	bh=LFP0UYrhAfUutzqCS6/9GAs81vDr1Sgalmk1FnP+jZI=;
	h=To:Subject:From:Message-Id:Date; b=WlLAL+LRedQQluHbUGqkQJstpZqHgUZl0V2FPy5siE75ZQWd4gKPEJ4Ng80RfYU6SCQmTeo8j+Uj1m8MDKebobomhoj3/2spKNNLqQPWkAJP/6YesSuveP5fV1MzZ7WE2A9psg2OlFZSO8menpCZU4ieGMz2WubmfPYQbBJA5I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIeOkTz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIeOkTz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C8EC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759067993;
	bh=LFP0UYrhAfUutzqCS6/9GAs81vDr1Sgalmk1FnP+jZI=;
	h=To:Subject:From:Date:From;
	b=nIeOkTz1wjlct2Aynu6mVg/RpSH26vyZ4Wg9kLhPbVJhDHP2xyWreLhGXt+KFvP6L
	 3uXyiXSn2jr85NH+MBuSY6avn7Q8G+dL05U2zY4gPYjvbHcWtQAxbvi/2RwEVX4SOG
	 Lz3az7WSXgfh/7HuYXlfJE9W2vE0pDf5iNVJlYnUb0olFnPVwIfHNodyHcNbu3gky4
	 ITP+2kk9ufMQQy2szxC3vcZTk4/IPehRnVMA9cgp6d7tAYifdg6slvUR/C1Hm1bsYU
	 YVaQLQZrhbA0GcaQhZaHmXvxqeMPTaHdHPMnOtbHRP4T/+qRIZNkgfKiywHMLxFMkp
	 8o+vwGU8jS+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A70CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906799357.26291.1811031369817599869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706ed932d7dc44ab72d017fbb1b3c3a7b42d5011640be08638bdd9d2dcbb18c3
Date: Sun, 28 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759067993

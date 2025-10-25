Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4504E2101AE
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761422394; cv=none; b=FfBdm33XCuf4OGOdVgBWfo66HuZCRD6VJXN8w+eNxR8ZFiLv5vHjtOT6v5zWWaQNTaMF9/atQFN8IVpneYrOCqT0OElPdBoJ/rWvVbQhLREi3djUEn+qI/OS21Nv0gO0kIyJmcsQgk2T0IDSSlW5PuLX3lYzmi6BXY07tZfoVok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761422394; c=relaxed/simple;
	bh=Z/weo36/a2OJ3S8jcnyLLJjt0H9xEb1551iHFYbNdyo=;
	h=To:Subject:From:Message-Id:Date; b=GAXfMrMuiE5iIO0l3IrOxr+tLoPntX6GlQrHTWdSXgydVoMqqmlnspc08dB7zgVa+IaK3fNw+evailMszwDuvdeZV6e0VxWgS0PGAI37Z/09nnqwp7nt9tW3xClyxmvzv6H8OyvWx5+TmZiG5ro6QGa2VCGo+a6hiQcxsBcVUq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnlxUkRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnlxUkRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47AAC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761422393;
	bh=Z/weo36/a2OJ3S8jcnyLLJjt0H9xEb1551iHFYbNdyo=;
	h=To:Subject:From:Date:From;
	b=LnlxUkRpLHufoAu0GDnbFj6pzkINzuPcjWB9knCzQrPviaClhOTwkwH4OxGar0D/9
	 iesRSItMgEX/1CDY8R1gZC5JvktDvVCz0YByVXTSruNGKDkSNM52TAOQt6FOHyvy5e
	 BeddqSdGQP+JSRy2o3t/9fIeUwnhCTX/JMW65wUcKr7rpKLwEqFlQQa+rQXPn0u7tV
	 ptP3TE68tSLztnntsOmrNOjZhyLFlMnnrRiP188sZ4i/nR8D7A5MmzoxS3X2m56TO/
	 YoqAKosp6WaSww/hIDJVtsHJwLt9V8zQMhaFRGF3tDqGUevnfY7Oxny6acfU6ICySY
	 bsNUvvo8ruMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72D9CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142239363.23172.7640297335571066923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e39ff6a464e78d25687e09eab8b580ca775af376a615cc797580123c5696248
Date: Sat, 25 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761422393

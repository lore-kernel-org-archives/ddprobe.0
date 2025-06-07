Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8601C5496
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749330594; cv=none; b=B3tY7YxcGviVIExYCBQS49/LIqf9mOoFaQOx6e7nWDNVjl2ueMN6OukwWcdrXB1O9yIw7WI+Jv0gxPE8HUi6tK3MTEbCAncXuKln26xW1I2bVdJxq5s4zpgTlMxz3QbVgTEpIFTH33/vkmTSEcEDGsWUVPER/8RuINFV6pOoQ2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749330594; c=relaxed/simple;
	bh=VhR6uz1bgn9Fl0JOUvO86j4umPI8qGekrPJsiaus+9Y=;
	h=To:Subject:From:Message-Id:Date; b=G/objAi6rWYWcr8Q7UlMj+LLRMP08JIAnCeEROZpnqXwibJNaKz5Oi5EjkOgF41p2bQcrikqiswVuJEhQBIYcmYNcTMPv18jrOJCOvLSIS9d98IOs85WX+xkwiE9GeizVnFEfBVp9Ov73oM/j4/mYq8rzUkohm1ikq9QI4UUC4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbrpqCYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbrpqCYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749330593;
	bh=VhR6uz1bgn9Fl0JOUvO86j4umPI8qGekrPJsiaus+9Y=;
	h=To:Subject:From:Date:From;
	b=VbrpqCYi1Ojf1faDYRRHq7qvyqx1laGJqyGlEiSVK7nojegANRAKAh/u6oUwJKCOl
	 Rk9UZjd8a49zCRV/vQG2w01S89QimpKyO2ISr2YMd3cMUskUX9CJgjzRuovfZeGnjz
	 3ZVbtc3rhecL6QxLDcx0kgArkxGSItYkNfzlbEtTc7dGc08reGWWmxwbvzqxbQiLSB
	 Cj6Vbd9pntwCL6EihovKvy4/thp/yYt1h37qmMs3FVc9LD4q8dlmAWAok+W/9cKwZd
	 qiOczDtY6uXLWQGSlE++n1ujJG/YqVNXnrBaNDzbAbLgDS3Yypl7FfrPmDjClBhh4l
	 MYHy6k7gFssxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F514C61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933059357.2951.2605179937236274930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ed970bb0251fd6e3145e988f161c4989c51c394a64a3b09906052aacf2b056
Date: Sat, 07 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749330593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F66F1ADFE8
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732177554; cv=none; b=ojbanlf7pWaz7In7nAes/vUvftMfANEZ893k86xQgb40UXucXmPsxgUiiE0F4RmhaqKkXJj8tX9mYKqDF9v8b7DlvY1SjS+pcHZT1fflgXy0i6r3opppNR1+ALxuuedIt3DyKLUn6pxAN+ujbTUYL7kQRqytoEPNnBTaUCCPQ1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732177554; c=relaxed/simple;
	bh=BuWM7XnrsfAbFDN6xN2uvi6dJ8zsLwVRzhH2n7nKWI0=;
	h=To:Subject:From:Message-Id:Date; b=ss82G0MUmwCLQe8pFlw2CA50IEfiMf1tgU3VwrennPOPcw40ylAzPHiyizHkzwnI9S2nBESknj/1MfcZ7zR8v60ihkGKvR24Myz27Q9tR2Vvb4A3789YULZeeDj8N+JL31J8CncXQR8z3ltnTvOgdHPcubHvRMzH4KxLAYpRBUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFCevx3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFCevx3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F77C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732177553;
	bh=BuWM7XnrsfAbFDN6xN2uvi6dJ8zsLwVRzhH2n7nKWI0=;
	h=To:Subject:From:Date:From;
	b=gFCevx3NYbpvqmrFxcv+VZooryw7NORGGK1NuoGBKeMdtXapr1hq0hvnA2gmG9zks
	 ECszKVUhhHiIsiPNgDKo8uW5jE5HiPburwR9wpw5jm6j7hkKi52PUHQyFuq9u7mvdv
	 YOJiYuozeZRuHvL3DZrAPZ6FjM9CyviQ1GF3ExuUKYngRDy4p/GCSWxC1wJyk93fRR
	 Kn8quYRbHiQ8jGnGpBB5hkJdCISeoIbzyoxQyotl256QrXXZ5gY7iBJqxO+39HLx2A
	 XyeHSA8elewVXEQ7k+V9DRbmnbQtA6vCTnqDluYCK4h1b3A62u1H/W+RXOh0CK6Z7g
	 BSqIFOk5G0KXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93033D75BCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217755359.7207.635944724364891063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d947e48d9931c3799ff74522d77f7c9a16ee98ae3978cb04b597ead80232c22
Date: Thu, 21 Nov 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732177553

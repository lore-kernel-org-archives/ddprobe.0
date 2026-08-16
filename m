Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A4F2989B0
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786866634; cv=none; b=ZcsjqPQYieA+ARc+7nFIqe+UWJzQBkyZoRPD5hsyd1VzFEY5YLUxLXcXftCmQZ/tIX2sL4PEIHqL5zRlxipgctJrUOO3rM30q/CSDnbl1dsDcFSTTczdzjv8VPVVdH0xjGxbu9qD/X2hRTwJ2TCui2cvUsTzut9wyYQW+8aOnkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786866634; c=relaxed/simple;
	bh=4zhgCBRPkvCMq2/xMkYtqs7wUQnw2gx5GIJmEqpVSo8=;
	h=To:Subject:From:Message-Id:Date; b=Fa/UkMPu1bo0e2NGVQVv3Gu5pGMJzmQ+Tvth2/g9bBUxJ6Z9z5ON3xh9QhfdKpfo1Vbw+agAnrK/7QNQaKAuONg+YnyQTjMMn9qJBRqwAc50OchA1275L5JyrhKbPD3hvY7OxdcFKK9l6XXROMPeLN1bpitZXM3UKbZGrzKFpGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coH4TdXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coH4TdXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCFDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786866633;
	bh=4zhgCBRPkvCMq2/xMkYtqs7wUQnw2gx5GIJmEqpVSo8=;
	h=To:Subject:From:Date:From;
	b=coH4TdXq10zHndXJQQKPogOmwk7vM2Y36Y/T+9ilAQOS4tc9tBqEW3RW8u7Zl6m1f
	 pU1o+22UQEml9WbRZz+B1KlEc8dwCTp1w780Q1QbSmB/eEgfUj3/G0v8WUYTMtFGWW
	 1vYz5p1lrj5jbdY3zVDI6MQVR+d3rtwP1i6ZnPVDi0XCmP5OpgVATh+8h5z6KQmB7r
	 VM3dWzkr+CXj3mhcFc+LfhF2T8DVxAeA4zd+mn9BDY/mEVlMwbZM4/rSFB8sawPnle
	 rez9slSaOngGFjwPmfpwhfUbioevzX46Km8bL8TTxBYxQGwDfhl+Dxg5Gc8g15j+nE
	 Nn8nZVByUehGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F4C5DF6A
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178686663368.30237.9211778506916947671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e660392894cd54fc7f08fe5719fd20d57bc7bdce25172b10b3f6ff9a7da164
Date: Sun, 16 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786866633

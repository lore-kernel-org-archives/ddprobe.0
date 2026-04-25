Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2049F2C027C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777142854; cv=none; b=o5629LISjZY9YPLBhgZCuqLJjM5BU1OH9fVKJlrFpu/Su3FfquUqOPfIQhDyCHCLtIULoxWC3hHF0XWAexQxn3TsSbZXrtnW6PrPJOngWAChlzWu9IQxJqRw9rj6JvHyI4rfiKTYjEBs13qKeuIg6qa8MgEC4YWn+AfkRWe1a7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777142854; c=relaxed/simple;
	bh=7jv7gxK1ipAKIzZ5AqZREL40h1ms95reriqTt+cAIjs=;
	h=To:Subject:From:Message-Id:Date; b=PXfZvC50namccxpFAYRjbG4NCT1WRyiulbAJvZicOuK1WyKfXaOHn2QuXMIYPuohffxtQDF8jYr2fQaPv/Xf9HsqzwPOpzCb3IIysjmGVCuj/uG05FcqVYxqpq+9fbMwje30yQtcy28k8KoBZ4b32vs0A9pU0OnEL2AkVpWtD2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsY2AMfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsY2AMfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA91EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777142853;
	bh=7jv7gxK1ipAKIzZ5AqZREL40h1ms95reriqTt+cAIjs=;
	h=To:Subject:From:Date:From;
	b=DsY2AMfCTe0M7RxxOkp183jeTnjwCbCQmaUhsHqLrQDRmTxj6gwnZfLHJSd3qBTch
	 80SpSreG8rFVrhSuOmUr/Q/o0PQ9cDF7JIAUIwICblD0CfhnXFx2PPyb/oUNXVL+6J
	 +wGPyA1sXGwRxkccijns8SSBlYSXNg2exBBAJheShKYdnqhS7145rcqjAJAzvRzXdz
	 eHENSDuntXTkRLkSbaqgLfvtibw788h6Eldgw7/+KgfFmTWMbGJbsb3GShBsjsg5ib
	 dywwp3R4vAgLxRHXpCD1tve+0WqhRrogAXKRY64EOVCQL4htAKdanfcjX2sppW7nKP
	 JOHVM2w+ZTwsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92F0FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714285368.27080.8560611646012277163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7347580d10ef5a71c6507191fdd9e9c74369cdb186860ce266912c1516917e
Date: Sat, 25 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777142853

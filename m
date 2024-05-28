Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C9A13DB92
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716934463; cv=none; b=D1XfhFOBKOja/kXTd3d5qbYFIJJRJme738PNr/+vkQwftTDss7SMErrhy6k9JXV/E7hORfub5D8TCPuD9g31ySaqTZ7izxehueid6dIXed74z+xUr7vFP6DVEj7TXAumuNbF96jkz8u5qYPzJVjsm2yt2GTfLMqaXDMhJvqX6M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716934463; c=relaxed/simple;
	bh=5rchvh9oGx/tEyVxSqF4SIr4O3UAMnaU60OV9LS0Jdo=;
	h=To:Subject:From:Message-Id:Date; b=gGGzpp9TB3m3Ed5qG0Mks9tuhfJApcQ2MRUP0pzmyWnnFoEEQyHWsOg8lYSPDSJ+pniopio1zjDfvQBwUBsZg7WT4MY0GXheiohg3QTlEaqgVXkLUp/+7O4D9feDUwhXj4XO+QBYXqhzpRXcXcexTdMMmxcdomluHxUIp8mRjNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvF989fC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvF989fC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA449C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716934462;
	bh=5rchvh9oGx/tEyVxSqF4SIr4O3UAMnaU60OV9LS0Jdo=;
	h=To:Subject:From:Date:From;
	b=EvF989fCIwEwvaT04KCVFT48W0Q5rhjH9f/XpbPGPGKgxmtdZ4AnCIu42C1k+5bH/
	 5pLT0CWqNcgFM267miF1cN4cf+fa8PB/ToibwSKUEmfLld1M7bB0l7AZmV2fhbPBO2
	 KqPDpr925064+9xKvazG53LDg9XKuQHUB7JeiTmgUlE+tkL0i6dhlOHcDRc/Q1haWM
	 vGF+e0UzOQX+LiSkrFYgIocCwA5SaFpganr8czJCLXKl8XYYAlmytPxjEvb6FuSuLh
	 0WEUbQ8hs7Uw9AMN/oyeajMLRaBTMpMn+qp1WPPvDKka1DIIkwHmrQHiQS3nogmGxV
	 huyOBuPyN2c+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2448C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 22:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171693446278.1794.5164190605194667395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32170e1996a78084d18cd4781fdd490e70063b990cd117af5f571ab9986a9f92
Date: Tue, 28 May 2024 22:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716934462

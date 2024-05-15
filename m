Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0F056458
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715764943; cv=none; b=ZlplAYQ9fahQSqNoEcbe1Zitxq4uMyMOILLUH3pfTx7ZMylO+rg97+ZG9nJ4DjMOGJbAe5jRpVhMUC9k5w9O1dT8JD/I7p026hThFJnA50eMnxMO4AXallptyaQkIbGZhGx12sMgkO4o66zW48oWeI1uwy62aibs2TbZf2h4Wos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715764943; c=relaxed/simple;
	bh=aNC4MN1W3OKI6pVSNSRscuiYNylXbmIhBBahkt7iI5o=;
	h=To:Subject:From:Message-Id:Date; b=L68wed3g2V2cZSAokJW6dSvMAGoV1jZqv0op0a1Oz62C4T+a2VSbkjJAT77Kwr/PZ8MMlwGi4HgZH52wBKDV8jTrVYjKJ+3Zn2Kmvrlz4TqKum9rsPMbTjhSIZm4AlP4AAmWp7epns8IcctDYDL/WqkEZxVb7C5dlW7o2AJxjUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qI82ZXb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qI82ZXb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89C2C116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715764942;
	bh=aNC4MN1W3OKI6pVSNSRscuiYNylXbmIhBBahkt7iI5o=;
	h=To:Subject:From:Date:From;
	b=qI82ZXb1L/hgd8+JEk/i1YoPtJwCar3i5WX89kD1lTKeLHsau5KCwc/n8FRm1mWBg
	 H/KxwkTx8maadDQq/8Css8B4By9jB6mrKx8RXngg7GTVaxVzBQofmOz1E9JF5OtpOu
	 8GlxSWYVVpyQVp2Cw6zup7FD69ZSql+l6P9Ce6I44/Ml83TpAJPSrxOP1DJj+qO5WE
	 JggBH8fz+8EQpKgD98K9srUb7EDLkARpNdTnLpTC8/KdMVET2zYYetLMdWHrzDzkjA
	 LOYAoCnufHfCefc6OI6QTsGJBVgJ6tCc7pB0J7Nhk1C3slFRbVp9DiQOnyQSFDGtjl
	 XOKQe4n9rcXpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5DF0C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576494280.13593.13870274149895928887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f4b6c18d80c44d39afbf4f1afa3636be780a51b424619bdbbb359c165ab2c7
Date: Wed, 15 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715764942

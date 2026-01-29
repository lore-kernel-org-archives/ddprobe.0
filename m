Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CA23876D8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769688834; cv=none; b=uPsNGf8lXLdCwSPfop7K3pqnay+0jzMp1VQdLFnSIrHIEyQSGJG0fCdXCtB4RL4+eYDg2FMn3Y5fZdkV/viMUPUPQ+0yaCcIwnAhR0SIqBR4Cn0x9BUsrIBWSZXBIyo6Kk5FWidAyviDqtU1VKDScPOp7gt9TYZTsLcSy5jZ2l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769688834; c=relaxed/simple;
	bh=6mGu2wk5Dc1mBMWPJyNeASC2uBeGfNvkXVKHzsTTtTM=;
	h=To:Subject:From:Message-Id:Date; b=CfqiHWL4K7MmqMrmQ7DKEuBDZdfOAIkLP5Ti9jJ/Dh+iO+2lqM+hQ5Y73bx3fF1C343oeo9YvkUwfjlCFzutCBcUl6URUwRWwA0Lc5ssmxjE51Zu2dS1KmPxJkJJSRtvlKI9xPYCUf9ae7OvZX0pX7m8iillFQU2VOx4rP3Pk7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSbHA5yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSbHA5yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6225C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769688833;
	bh=6mGu2wk5Dc1mBMWPJyNeASC2uBeGfNvkXVKHzsTTtTM=;
	h=To:Subject:From:Date:From;
	b=JSbHA5ylUB8UWkbNmQln9dR/SaWVgvZoAK0IUH/BN99ELBAnqdukuNn9rprmqknBe
	 aFk48rkaZokzMy6hG4jO6yNQFGkOnenBL5bWkqrHfZWqbATouDwFtJ0qUrEi309Fdl
	 vPbFiuE3CKi+gwDEo5dHbf+QOUHactwETMyrI0UO6T9q3BKJprPRDYDA+z6h8iVOVj
	 kKl/Ck02kTUmXtJDBhjT41ARWZTGQrr2VGxBYvdRFOt8tMNYB8Fxe1QSfLxM3vOdyt
	 oL73ssmb/mqq+9FTBIK87zzC2ZchTs6mN74uBArvxB55dtL13xZxTmk7vxHaN+8/Jj
	 nMFdr+AzrW88A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156DD61010
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176968883358.25444.17953254096857120207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d14570adb780f1d5a3f22a35960c12dd1ae5e31eae182dbd6c49aff319eed07d
Date: Thu, 29 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769688833

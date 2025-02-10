Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5224A13AA53
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739172954; cv=none; b=lpYNXLPcCQJtsThQo2QitlDbFiJe11IX7sZcPILtXWIb2L08p/eZ52ziyJ0Pf+ODXLtE7aBTMbSj/Jtgq9bNHgZN7mOtmTro+1g1Dx+L9/OQ3oWxo7+2Uusg3aIXxKu1ISDJMXMrFavhw0ZVSTzU/VuOm+8VytfCefB+dE8bgZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739172954; c=relaxed/simple;
	bh=8m+W+hGwZfMhHGHpU5giwiKGDP/MoFPONnMe9Zje6BA=;
	h=To:Subject:From:Message-Id:Date; b=CZ5pBZbuLZuf1TTWjM3ggYw5tAi11FPKWq2OBjbrdLEbmOxXtuEfVGmR/Rujf7MvP/mVfYpwJCpdK9hA87LOuX5COwIPakKTGdIYEGoAeY19KMqF4+wKPQYdfqd8WFnpHW5eptR9izwLLurdQRhWUj39gNJDkY9ttq0cI1nXWTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgZM/xN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgZM/xN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6935C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739172953;
	bh=8m+W+hGwZfMhHGHpU5giwiKGDP/MoFPONnMe9Zje6BA=;
	h=To:Subject:From:Date:From;
	b=lgZM/xN6Vwtz2N1CxrUa2mFxQ37gQU7GwdrMCkGAsp433PjHUeaasP3+74Cb0eLFT
	 IG0Re7AVIsqziFgfffIq4SH6/fqtFDOip5OF2OOIORux8V5O9G/p7qHxLQdxJxyYA4
	 5Gz2eSkCOGxpMnNwScGP3h1PZDWy/AAnDZPq+vaRGzYTzOmdH/0WuV66sgYYuYRqOy
	 pK29f2qVDSTSRciQWyMSjLBkvwMvPXFXEc2RQCJavWWS88/reRVp9dowDK0hDhLn77
	 OVui+zUVjJkEGfk0fpn2MTsgUoArsk8UHdTZcnhIlpoDmuLKoafzZUpBg/zJD1fxWy
	 we4qI1Ko7PaFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A184FC02198
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173917295365.14882.12912427486642762093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d091b2f7a0e864fa8c5964c91ee062f2cad152872157bbbbe2390b2916382a2b
Date: Mon, 10 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739172953

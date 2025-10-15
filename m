Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FCA13C8EA
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760508594; cv=none; b=DbAZvFQ8r5hH9I7+BOctNyoA9DCPOlOR+WdbQDCst8CGhY3Mm5GwIeJQ8WtotOiJ9QpxgSSie8UYAAfsDM2vJMY4WtynkNyDF+A1okSgH3sOJmcBa2QdgNIDTltQRIY3lDbUZE4XNUp7j14NQhhpx5iS5jjDWZnPT23MKUWojOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760508594; c=relaxed/simple;
	bh=rMGmlkBRkWT0rKawarGrxYK6tpKWe+nXAPE3ioz4ynw=;
	h=To:Subject:From:Message-Id:Date; b=SIJa6K4PdvGUkJMpBd27sc/1j1ARtR6hKIWvyc2bsr7Xf8fSIV2JPDG/HERkwDNtBue0xbJJydaVVsxLIz0qtGwwAfd3N5oWPpaejajD2WsoE+ISZ/EPMY5pEo1VhPmA1y7lrqwauKMrtodU/u7p30/+JxdSWNyBZLLLOk+IK0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPff/4+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPff/4+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F7C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760508593;
	bh=rMGmlkBRkWT0rKawarGrxYK6tpKWe+nXAPE3ioz4ynw=;
	h=To:Subject:From:Date:From;
	b=OPff/4+oTdJTIX5QHupvL6DLvmmazG1bajqAHsTU0vMc/2wD3Qj7x9snvYVKcUXR3
	 bV6xplpykl0z58cJ/asuBE0d5sydZzZBVKWVoARRN9AQAonpRUPGPK4+wpxVZe0mWh
	 /sMvkHUJV4K1ZGGdPx9K5W495rCGi+JU3Wbq2UqBfTqLOsXpYZoTGVwUitWjDBWGG+
	 3PMp0Zxi5sh+wAZ/jWal6K2U/DonevyDqfG95i6Mu1eh+mXjjRhzby2h81+NIy0UoI
	 VnogpBIISm8zS3eNv6Dtp67UX+Ol3zzuPpdRkdjw6/lW7ygyNVF2qkV8nLtySLdnGB
	 w69IfmApYsodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900FDCCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050859357.13174.6505277672583606576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7194e8eb79e58d7972206df87385fb36a05ec0ca3f92154d89cd362532051a8a
Date: Wed, 15 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760508593

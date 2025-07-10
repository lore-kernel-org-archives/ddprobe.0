Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D02F2340
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752168594; cv=none; b=Aj2sBAsHDt1GTlxtv+YdU1YXMN3PvhmK2ql3dCyW1saqtE3F+DbuFYujrM/X1sCRpV2qapCRPF5c0nU13mbt7VktCu7dWbpgs8ayplq+tzZQBSc2+fpW3gKR9TQVCkAr9297lm9o2iWR8AlD11SigjeD/Ddfd4YTpdHZ6RX/qXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752168594; c=relaxed/simple;
	bh=rlYAkXVE34fWXBaKFCLPIGN2WQ+S0rlDf2JCtI1250Y=;
	h=To:Subject:From:Message-Id:Date; b=FU+/huc3mXUVPf6AI6pmYRnFZnZ/+TvmzEXaWjJlPg0jC56mtZFHaFZNeVgZPNr2Dh9rChyCyjO2WDUlw89ka2euGklMLh+W2h2T1xvEsf9fG0kOSKyN1ftdkDKB66KNuCnbqGupOGRju2C7Vxi4kC74A1NBnE0V9grI6Rho09s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riMxHrqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riMxHrqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0AFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752168593;
	bh=rlYAkXVE34fWXBaKFCLPIGN2WQ+S0rlDf2JCtI1250Y=;
	h=To:Subject:From:Date:From;
	b=riMxHrqTQ1b2342HRWYwFzEh7ogpHtz9z+aIF331OIKFwxEluwQ5K6wphNWG7qqso
	 lg0+BSyevAztKPyCGXoekPclf5mrWd/+8s+wN8sXSHcg8v+g7HwYfFNez3ZONGd1O7
	 /e6BeUjZm8sQ7YCDcqlG+yrTrEMYnlyYjq7jtQfHqiPlMdBENGvcl9uTopNchhc/qO
	 nz8rc9+ksPUV58dci0Dahs46sNpAFCM/wEAZbeW9zun8NybXiHxTtcExHa8mHDE34c
	 wYs+x67ksshf6LDhrAWrUF3/ZoH+TWx+vpLfEjV7h4W8eSguUA4fUY6pFoXCesN6r2
	 lyjnKqMGvXx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F435C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216859357.2581.8406960673109611535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b3587bb6937dd11d1cc5a969eb43560289d0d003c5482357b77af600e421a9
Date: Thu, 10 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752168593

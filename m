Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 849BC7083C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777053454; cv=none; b=BWJG44Mfg4YenOQgoOmjszBXQRxQ0+VPIIZ/i/9fMzazJRLAjKt2/TsN6Y8fiNROYvi547M6+UPie4zEZ37SdTa6RzZeWRqj2/UJc8F43a+et4YPc3GYjJr1p1QI97m+zLj8x5Bidi0BaSKyOPYOZu14wecg0jgu9y9nx873Ft4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777053454; c=relaxed/simple;
	bh=5g0hjkQCXuKbluE+cn4cpl2ZfU2FccqAtR8O9pmp3qo=;
	h=To:Subject:From:Message-Id:Date; b=KvilMSEaOFjEZbz3jAEx3+GPuDIBgQNYBRLowrMb3yMXDnhFg3cq7KH2iuCOnKf+9oHTrxFoKOuur5iZ6aNduuR1i36HqcRSmhfAuMrA9MF70DKfS9sqdXwkKhd0JYj/bTqnWkRLpF2Csa9efvUF7ixECkAt3D1bqwmHo3ZED44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVvbF1WM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVvbF1WM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8198C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777053453;
	bh=5g0hjkQCXuKbluE+cn4cpl2ZfU2FccqAtR8O9pmp3qo=;
	h=To:Subject:From:Date:From;
	b=KVvbF1WMJHLGcpF9ihJpJ4yIut239brKoeY+yC5LR7Y3X0TTjt4LF6svoKCbxvab1
	 DSM+5OVM0DCOwzF1Tb5ZnhxcA2Twl8tEcfsW+HnfYeZ9dmixNP1jhDsPkekDFec5de
	 oaLdIl4mIf5SLjhUSLsomXjsd24PeFm7UIvNPFXiJeNVJzS7p1Itn/eyh+zaG+Ab6i
	 T4u5LLZiW8U3IkPqLdsQctEUgX5KRpKSiIii2xmd79LhQOUyuoVWoHVh7c1edBOi4H
	 nU7eslVUaXLGj9hzUO/AnAuBdD9Lku7a0p/B1X+/HJcUJKWbt/KCSLPEiW5R07e8Dj
	 JfAPuD4BNTZcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9812FED3F2
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177705345368.914.10931239665236260603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2671ee4d4119ac77babda2c55f307ca4a53f915d9dd0168e9076ccf7f8eb838f
Date: Fri, 24 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777053453

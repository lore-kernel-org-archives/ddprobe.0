Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AED170838
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747213194; cv=none; b=rkkMbnjGbJKbdRAgok0r3xVEQIfh3Y4xGBvazmEnfLWyMGzW0DNuGlM6sY2I2XiYz/v5TwMU0CQn5keYJTJUsVqD/I1lUIz6b+KITBqE2JeGtcSA2OvqfXzJIdWfgKUX3fipyXdzkj4jCAotbelx/FEQQgFwGM+O5/cAzU/pzY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747213194; c=relaxed/simple;
	bh=S8m6eiLwljpVIionr0igPfcQikefaD4Y9X0zrCqB+pA=;
	h=To:Subject:From:Message-Id:Date; b=J6XN7kvyt7WO3QZC/kGDMNEeP02xZwniNfrNmigJyeg231FP/hDW/yhxYZzpcH1Ji2ho17B9uPYOvU1GHdmYwajcrgtJ/noY0Bmk13bwn7ZoEZNHGrsSwOLHhaJAW7cjIP/tYyio0FNH424M3pQYklDgM2DhBHNS+Nn6cW1wPps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNuB7siL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNuB7siL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEBBC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747213193;
	bh=S8m6eiLwljpVIionr0igPfcQikefaD4Y9X0zrCqB+pA=;
	h=To:Subject:From:Date:From;
	b=ZNuB7siL59BXOxPXM0CAgEr+ARZ26silGhvbKBNdyeD2zH68lSUW5jo2rQ22zNfRt
	 RQOL/sA4yjZmzAIPla64UIbFCADqNpCBMmdcmMah0kAbTGCDqe809iFHsyOwE2fPSH
	 6w5NDwBnBsLUnNs/gnHFopL6OORlCXNz0IBL+jaqAuIFU07aWKup5qx77U74A7/oB0
	 P2+lp+VtTy+mYLHfDoOms0+T0IiqNzmhlr6gmWC6h8he6QzBeqqi2LhvsU0Pji08e2
	 Gf5WMx6QSypAMz7zv2H/Sf18O/GFpxGn7afLlfkXgZ3WZhJgqonPVrXnvw1l2U8yho
	 AGbkHwwkgElAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E38DC3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721319357.16644.14984297734364563176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18703bfab351dbcf8ef5b11c7815c8573e3304662835ccb9c375f66a98b88899
Date: Wed, 14 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747213193

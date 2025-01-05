Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4820F35945
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736037954; cv=none; b=OHTV+cPAuS2OZbJfM5T3L3hZElGvfXgAavqoVL45V3JKI3suW/QQe2ZcDB977VWpdGMzl+mgVyqp7SWPHEalHLC1rnz67QLLvwJEpwv2oszjvL4STNwJywnmu26r8uFCqLz0mUweV18apIXwslOzW9JFVIB5LPFNmbs30RbYI1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736037954; c=relaxed/simple;
	bh=Q9LP+HX5OPvCTR/qZ2nIyZqceMuWX+3Su8DyUn6s0L0=;
	h=To:Subject:From:Message-Id:Date; b=QddLnDq85yUm3awPalScIOtGKKbfkfJxdpN6jv/73bsyP/udpFyGiBleKcd2XV8u9rtIbfltyOkrvTiCWa1Bg0uGLYcQZ+AXwt419/GDu8YWTLeW/yrhZ9mdyfwoSyw3gjNAYijIhxDwJ3x0VZatirf7fPHFjV/vW4Rovc4qric=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8zFNQRp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8zFNQRp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A90C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736037953;
	bh=Q9LP+HX5OPvCTR/qZ2nIyZqceMuWX+3Su8DyUn6s0L0=;
	h=To:Subject:From:Date:From;
	b=b8zFNQRpsOWl2jYRFck3G9+KVobMgfeGlbLVc/I2WMRsImUbABsvZq6f4Dk9vY1Rj
	 rdU8lDwRirtGlpW98u5GI2FyCt4EBbjyYQMWshPVPxBA3dWqT5cwZA1sktJE1QxZbV
	 gD7CuoEd6nQRMl6DbVRwfnWs+jklwWeVIkrDEXPmC7kFeuAt6Z4/LSkC0D1/ywQ64B
	 /djR7/Y2mkkTgYviImUY78sLWCjSO1n1dC5bmwscK5qM9ZdDenwMByxX/0IlyJxonw
	 FN62dGDQtJ3BmHnCSDZvvhTkOYz5k9bDfNk4eNqTO+Nqao8MY7gqCJtCWOJKiJL1ky
	 5ltMeoLQumN1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BE5E77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603795362.21539.5129179900835710662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7ea8a3d6e5c655717feb4afb2959ec380b468ea950922e14afb6ba4c54cbcd
Date: Sun, 05 Jan 2025 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736037953

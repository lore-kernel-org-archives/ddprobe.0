Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E671EFF8D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775412934; cv=none; b=MNtJAlV9xq9z0jNFk+BvjjCuWw5DHsAodtXDAWXdRfoON2Z8pPKw3L5VLakI7ut5eLPR6j69N5NvPweTMzMKAxr5qYGrPqql9hqY6bjg78eTuISci599OsVQdK2v3lucHxae8zRBct2Dp9TlQsycZ4y5naNO4opf47qtR7DKe+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775412934; c=relaxed/simple;
	bh=yYsIUy6t8lo2T+IYdDMl+Zse53IzWYWGGAvvsMmg4MY=;
	h=To:Subject:From:Message-Id:Date; b=crva6OEpocPMVy8oAKPuKMOjRwUfotTlroGNPAY5bQOnu8B7igM6ZDDj41WIkQ6wyLxMYmQdbSII7pqJTfHdAWx5r2AOono8miMTTt6NhWoryZqtknSMx1/PVlETmpdTy9GuRoBq7QxTpPYn3Qt0NG4gabC90ti7i9c7FIRkD3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQWZjuW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQWZjuW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFDEAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775412933;
	bh=yYsIUy6t8lo2T+IYdDMl+Zse53IzWYWGGAvvsMmg4MY=;
	h=To:Subject:From:Date:From;
	b=DQWZjuW+RqPvp8vw4Z9GqVRsuVEC0glM09jPKweUbVNDM8zLj1iGUIjap/FrgWfxv
	 O5HsKb0EbbeALSAz6bLB3XpyG66cfs1CMey/9iYPkwQDIXKuivOvWkurafkstU7ndh
	 d/4GLDCSerKTrmVWU2oifQd3CY8Y2m0qJxZzuVivBRPR0V3BgTAm0nFVFMaQRUDMy8
	 2zudy9VcIaqACb2L2F+Ykuj6+3IpDt2ND/sls0gUDjQZhMkeCsirE9GtbzONXiwStt
	 jMtpPCAGvirkpz3HynvSSV+C62BwwI1k7DqUope4cl24tsPZIUSdhNvUUv4HZHQJMw
	 qEPiswFJX2usA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0918E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541293368.26434.16893983920018726761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5288c1dcd0a5f27fe088e116f30297864fc6280e7f887dd7cd08da4ee6e110
Date: Sun, 05 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775412933

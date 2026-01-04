Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3438F18BC3D
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767519834; cv=none; b=KqKZQDg9H9F+YxYDZEq5YxsWcSc1Sxsi7OsVjNb6gjf/fAzTNYYfBmqpUj9fC3eERzHLxqSKHBI6zLctIUWKYURfS1LEjNRShRacaRlyuvujh/GoVeO/dXXiJh48Nv22BLP0G73tdkd/xQ7GJ6JoHzALY2QGEqAowwTz5hyq1/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767519834; c=relaxed/simple;
	bh=+Oz3R81vQE3jQhg4yOvgupPdsWx2IJYa2SPBsG159Z8=;
	h=To:Subject:From:Message-Id:Date; b=VTf5MAiy0wcNtsDhmH2EO1Xy/7S1k5oVO6Rvf76ZhYpS61TuwYpHeuSkKu0w5TvoAC0vMu5uKRchGW2pe1HAZvru8PV94OqyoJEMLNt7u1JxmubBJoKvhtIKlZcChdwJVMONN3aYIc6FevtgAnTEB0vQ3K1O/UHLuZW2rh1XhSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czr1JijF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czr1JijF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767519833;
	bh=+Oz3R81vQE3jQhg4yOvgupPdsWx2IJYa2SPBsG159Z8=;
	h=To:Subject:From:Date:From;
	b=czr1JijFAncIuG1eOnE46Em1xW/Q2OZmTCZoUyCac8uhrHLpJn/QZsSsBxGkeBXgx
	 vw6ef/fLlHbVYTiHrWW/ftbO07bz0+XTyTw0NSVPdINRJiLTScTBY2e0gXvswQ6dWW
	 s6hcSazcuUBaFZieqMBLAJ5DPT/uTT9gYAEF/qrDORS/qqIgmF95crmLqQwVVqArcB
	 zODlQSKJAshHm6AAgm0KxT1kPdCD68+bnnJ2oi1QoC+CJIlOhu7kqs0GbbtxvBXL6u
	 Vh50DswIvMbS/AFldt7YFQgsuioWIaxY3yoHIi0b59zoTZwtPntciIHC51jEX/QQuN
	 H41xs/pGviVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9106AC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751983357.937.5835776158598079874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37c3a77595fd31e87fd97b78332f88dc99787b6348ca8e4b2bccba8ff55d3d01
Date: Sun, 04 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767519833

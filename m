Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1531FB3
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756109994; cv=none; b=jg+beKSuCPDqSIEN9HhIzetASBwsC8K7Q4WkCzV1MVQWSlbNLm95X/+ibXBt5dSreVBuuwBQvmDrktpIlvg2b2C6+ofsgOId+DXaeb3kNXrV8VXy4oDmAsU6QrtzT41GLJstgGclymhWHaFkTSIgHomzTbQmy5n9aHKdd6v1BNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756109994; c=relaxed/simple;
	bh=ibu7zJ3GizPTx7050z7OLdZRSgoixbAFuTex3WFVU4Y=;
	h=To:Subject:From:Message-Id:Date; b=hq/Tk1o6dEPuJSPoPRPWLdrHdgH1EK8iImyYqBbYq5/UchPNnASrIceOctQGyGMuCvkx+sUqcGzyCPtc8/QeJ50+QJpD2SeNiCrm+MycKV8B1TQyIBxeHf3phZab0oQ3hgCYEt46Amt6Vn9mC5/mCiPY7wyBWGlWsJ2yOg855bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMLh7KKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMLh7KKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2916C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756109993;
	bh=ibu7zJ3GizPTx7050z7OLdZRSgoixbAFuTex3WFVU4Y=;
	h=To:Subject:From:Date:From;
	b=nMLh7KKIF74sQNRpe8jSBZng7ReeWzfy9HjhFxrjnfjtV9LST/ebWtiGWY9txFqXk
	 i9vlWEF0B7VHjnstJHZrtVMPv6k0Z5R/eHJ/VoMIgULeiF+C5R/3FL1vY5jhnL2RHH
	 9nGOXMsb56R/GC8ea8Ug5vwyqxqtT8D/Muj9FBwEq/gKJrvJoD0JLdQ+vx+GibRp4o
	 V8eHw8sOwwofIoVS7raDtRQb3hVuY/AMK5UZxG4Sl6I+Smzpp24bc9uEQkD6reBiEj
	 5NBGG1B3ApwEgYUgScbclXYSHHI52ab84+qsldosHZgdlB/5ot+IuWBjU7ejg1CVGY
	 50iHSzD7pUQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57ACA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610999357.20351.4032846814182178662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d10049297531d9dbb53f5cedb3790819e4d1ae928f5f3ba5b648d92d4acd704
Date: Mon, 25 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756109993

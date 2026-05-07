Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AF92DF136
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778158654; cv=none; b=TTIFt00FYCVP9Hv2I3rMU7UDZw+Rb8nLUrVVCw3F1g7RKKm+ta9uPDORE4J+BN0G5b3/BvgarvRc3mgRt65+iaxYPNKNFgwEHSJzPmaDJQUwsO3cxyhBiAhxSYVPF4xQBjts+5NOpHAZyTZsy8p7df0P1QzT+Fe3rAZ2tK1VFXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778158654; c=relaxed/simple;
	bh=16TM7Oh1LqozSC4eAXiQvf0GYpkWct3FfxsF9zqQaP4=;
	h=To:Subject:From:Message-Id:Date; b=UehuhvmLiEginuwr1biy2AfAtSCvQquAGey+aNX7j7mg3MZoX+9B5H5IIdudF2TZ4jfhh9FRVWr0XNd1Ms8sscBfArM/3V7GJGeGXCuHVWOmDbsptY+yVBZKSHZGi0gFJPxhP4tiEgJsSYAlmaeoM7TJMpZR7y43jOW5o57sKts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZ6NkNbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZ6NkNbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB176C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778158653;
	bh=16TM7Oh1LqozSC4eAXiQvf0GYpkWct3FfxsF9zqQaP4=;
	h=To:Subject:From:Date:From;
	b=XZ6NkNbBpPlw+b75E47WEMHRO7FsNtQa0K6zAlp/taBNSlr+5fOgvsXk52XZ4XN1O
	 8dA5bKyfhpI9tZyFM/w/oPIrjVK4ddlKcmgmcAWXqJSMUkBuXfgY1xISsrFrx8VnWe
	 zdSQXnh/RmB+CB+dl5YMhi13MJM84On5BSXUd3J44f24b2JA2bUFynKU36savzIL3f
	 CUrw+sHgepEUSdYVp04ng6EAEr8wTYIJtcvyiJpiAuTS9jJe30pQj5H6qP+pbrxlzH
	 LVu4qz+Pg7db1tfu75SyvmVPFI9v67ig2K01YnQxxpZjUQ9cD6fULa8C8tSUms10YM
	 HpIRZLUY2q+BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC388CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815865369.26796.13711288050161877584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c569480ccb709f31c439b0fca74067ccf4f7678f72f0c4af3d4d630ab218dd3d
Date: Thu, 07 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778158653

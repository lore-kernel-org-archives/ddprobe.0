Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398DE309F1B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783805914; cv=none; b=C9cVffxV+PXiPpvTWINKHPVLgFJjLD3l5XkrtfVqjtYPl5jQkP4nsdJTAhKdN3pTtHbVncb2qgoD5BskDAoVyg61yueKaFD9xkRClHFPAv79P8D2eQOxxeN9oeh84ZhMPTawqwHD0o6GOM/pNVrE1t+Ps3+VJPMezUaFx5A7Rhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783805914; c=relaxed/simple;
	bh=xY36/kf14fCbbW3noVnfMvqakkem/eYSJ3HiAeoU1WU=;
	h=To:Subject:From:Message-Id:Date; b=ekh/2DhPWcaBEcfZ6BuQkII4YQepFC5WfWS6bMudyCfOp+rmrxxaniwQbUw93bFaThojKr4dzbK+7v0jTAOIzpx5KqQPLCQdXl2HYqh8RAuNACwm+Ucn5zYDOv3uED6vZS4Jv5rVdU1ReNnUaT7Hl1jTSWIrXOPRXljzfGMvQ9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mivs/8sW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mivs/8sW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F05C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783805913;
	bh=xY36/kf14fCbbW3noVnfMvqakkem/eYSJ3HiAeoU1WU=;
	h=To:Subject:From:Date:From;
	b=mivs/8sWZ9/QQel8PGCflVXIa2CecBMu4ZuvtKPJNExo9AwipUsfu+5iOGTK9lxmD
	 ph8DvXv/b9mv5SX6vL8puyrT33BBBREDcyRFvi0ywrkASFFu3iQWRqTPI6m1Qlk+YI
	 5IdwA/v/VCoumvyqSUJbRGpgsFOxP5U2tzXfB996PdDxk2yFgzSr/pBD2inx4hGsMx
	 DeQD4hu78LLggUHCZwd+MK0JwtbK77cqtIMgVU62OoHTBrCPDmTSyOBad6Ods9/6KK
	 FYNP9d9xYf+bKZdQFcxhiea1+t5PFs/yB+fl/BNlMZpUliLjpNyr/wtBs08jjrMtES
	 x7XTWjHoIk23A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8016C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380591368.11713.5483232115840514433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55065bc17dea2674690b64f3dc1ffcefeb8f75f928b97cb69368e2050560a212
Date: Sat, 11 Jul 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783805913

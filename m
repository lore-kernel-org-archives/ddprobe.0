Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6740F5025E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721069723; cv=none; b=I8pq4NGbWJLHvTSdLkRSbK0LQShfuX+1s8hEAe7BV0aRWwG4RfTpteGYAjk7Srh9NmsTUqpezfNojKL6zxswSV6czyZv/If1VpHba85T9A25WCnxMJ5uRzvN7x7eyUSiOSmKiwlA0utKy6WV96KTSnBbCYIlrXnJk2GN6e5Pud8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721069723; c=relaxed/simple;
	bh=D78GUbApBsD1V0OtsrO9wl1Od6WsccLpbZT4fvkoIRg=;
	h=To:Subject:From:Message-Id:Date; b=qLXlXJMccBTZkLBgu0zJ1FSZny3NRREM6ozGHyL15kiYeNvEwWNugr6O6ayyfvhEDl3oGYABGH+y8pgUl57EV7FggXGpFLK+GsA89UG3txarFin4ZNwIeqpdrj0XCRTUGpbSUPEH3jnSyZq/J1suGIpZU5UOSAB0P+aj4n8+Jyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ab0qfVtz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ab0qfVtz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD93C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721069722;
	bh=D78GUbApBsD1V0OtsrO9wl1Od6WsccLpbZT4fvkoIRg=;
	h=To:Subject:From:Date:From;
	b=Ab0qfVtzru3hv3s9Yuh20yD1/av8LQY/O3DPUEPXsQzWK98NJ8bsMTpo9GKpFn/zt
	 TtsqGEbuWLDLbo4BHO3g0BW/1roUVXCSa1lBOKrN2FcUhrLIgmVRWxSzBj3S/VzI59
	 Wcv/b2QtUiXIAWOepRV1rBdjtCLnbHaancQu46rpz+ul2AJDNllbAv8KcfM12WmPxH
	 7m7UomYSlrO/8KHfaoXVO7hQfnvir6U06qnS3skdE4d+ZXhNysyejEjb17JR6p/i3d
	 0dKrQZVavo7lsQDC9wwMrvrDPsdcLcqtjUUM/9EVWbUS/RMdtpIgMqbAuBkQ76khsZ
	 K4FC6qMSh9/kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7940C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 18:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106972280.4835.15124587168065057416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32709db2adb21fa373cefc9796fbeab51729965bf6c4ebc032a8ec17a9dc5af
Date: Mon, 15 Jul 2024 18:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721069722

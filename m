Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC18EAF9
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754615994; cv=none; b=hoJRLWR8xLrhzwKSLxXOQpuX6k2AQtxo59lctIh1l27KroYbpQbxRozuViPHiYj8P+7sD4BaXkLJXnpexHMfLv5nujuek747aitTYxgvOGZFuzGWMZTiuBWvIDdYlM7foxCiZNLdFCh7SsZO8WwkXs+YP9ru7yfqttprw0hqDms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754615994; c=relaxed/simple;
	bh=PtgXo0SQdyeThRW1pi8ia8aB2JMWMM7n6Dj0fPVuxSk=;
	h=To:Subject:From:Message-Id:Date; b=IYKQbV2s6uLhCv7JOj43ykikhuxjyhSfzE7AfK4l8AhVMpNy0tsgLWeRZjkcYIBGJvBJMXJdHbAtG5yYbATBOWJ6GuoVQSfS5yQ3gkb/C0pYVNjPVeKyp4r96Qs87pMLeocQ9I/Ui1MydjrvY90z2L8ftTAiprOLtRYjQdbI3gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEHNxi9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEHNxi9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7641C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754615993;
	bh=PtgXo0SQdyeThRW1pi8ia8aB2JMWMM7n6Dj0fPVuxSk=;
	h=To:Subject:From:Date:From;
	b=uEHNxi9m0Drnf3kTZ7rjAGbQOxjza41Sk39xwSjNS/xkTg0v+toEdANOEmDmMZpWU
	 4cYfxx7Ez79wqnIYU2C8pigt2IQywtJlzy5bDWx/MQ9DnEOUvF7SrQXkbvEdN8o9RS
	 zKh34Rq+g/pLLTkGNdMVgZ5QCbSgDWajAygm2yeDs1xGExxEpYsIfb02xncnfPA4LS
	 jFegf8KrdlTUn8H7COEZg7Vfjnvy/IM0/ewr2QCB6dsXTsVdZ9a2AtVJJR/4JVmn3l
	 AdJ4kyYyWwL2LiHSSrzSg2XWhFCPmDKtLCyNJECizY8ix/Ixv0HUvJIk1wsBHeeiGw
	 eXDRFm6/Ni4Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CEC87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461599357.10025.10131860095299784484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9628a972eb19bb92cb70ab3df5c2d2167e9691f106bb49da2e9792c01646d69c
Date: Fri, 08 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754615993

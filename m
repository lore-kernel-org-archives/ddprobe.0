Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0DD35B155
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761151794; cv=none; b=TZHYNpPP2vopBPJ58jf/VP2xRrLi1WTQMU6CT8+D33El+Xvs5XfeHCKCmhIOf9WNRG6B8eX3K1STz1a3qvDKb2daB7kQc1LG9B09ItEq0OFpUT6XPjnVgATyhq0IlEekAS7fFCONSV0m1Hm2blVLTH2bl2lmO9GsIpxkPkaJGn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761151794; c=relaxed/simple;
	bh=L1rJTosMcWDN0TCrg++1XShZipSYUSUqVgS/j1S7xO4=;
	h=To:Subject:From:Message-Id:Date; b=tBsRntKJ7xgQ1VAuWfkdjVkhc9DCLAipkUFzlIEenOGKTqno1o9q+7XG6W3OrMdhRoTWDAk8wxfT/FNxt7wK4wv/KdsTviBjmjjprIApMy6W5C3OTGA2714ypIG9H2xklU9UiV8xOVoE9gURenXtwlnpQot005EmUxg+e/vRuOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7SQJAtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7SQJAtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761151793;
	bh=L1rJTosMcWDN0TCrg++1XShZipSYUSUqVgS/j1S7xO4=;
	h=To:Subject:From:Date:From;
	b=O7SQJAtPOTMcvcSAhN0STbEcL41z5s6iotrlEo8v4cMnf+2nzr7HWI00Vi06FtoBK
	 TmdCEG+t0EEGzrzKHeaEB+zEf38L90lWpbiYQZoYfO6ill70wjospzHaKt+eyx6VcM
	 NRaTGuNdEUrJVlOctPFHYcwAzqn0S4BlrAWS5L7UkfY1CtFbzI1JEgTW5N9VJvtSu8
	 jRJQFbMpzYnNXULT1PcXYMTT18lWpb82ldJGwE52eJOUscfEIqn9lmjoH2WdcGAWJ2
	 9r9IvEZ1YKRevqz0Wb9ORaDYz2eggtQzdeA4BZj2aQfHk0325uLMvdvtgWTnk4IUv+
	 gUUa7f0yk+lBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91577CCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115179358.24778.4125043122864320614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d9d0ca7d7c36e1297c40d2f9510733ef6296263ac5c163b1ce7b55e5e8c6a3
Date: Wed, 22 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761151793

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D6430100E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783425514; cv=none; b=Tm7CmVWt4glSPT2W4hBfpipVbHkRbEpiQxxm6dAL8fejnak3Q0NpArBfLovjrzmFaBeeug/TfwbReC8gtI50DY1c2kV2ypARDEdGb/nYkFYCZVGt6M1EYIQtQ3yo6ij75y5rqRDeQ736OK6T2CBiXytpS9uczaLIee/FMKSx3P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783425514; c=relaxed/simple;
	bh=NczD84ce9biJiGxSJIN0izxXL7xjW/iKsu3z0FIy9Go=;
	h=To:Subject:From:Message-Id:Date; b=d4W5rKPnMKc45eckJ3HUaV5m26R2dExnH+kWAFI5TICNR2iJiqUypO6XDWnHvZIXMpvLtvd97siHA0hHsT+ndASy8v03c+JOJkNylKTDs2z5cW33u+8M26ipTV7EMYQiV4wGkUwEVx2cL7CTiCB1+XB3ARszcfWa9zxqK4jOfWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft1uEhT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft1uEhT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA013C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783425513;
	bh=NczD84ce9biJiGxSJIN0izxXL7xjW/iKsu3z0FIy9Go=;
	h=To:Subject:From:Date:From;
	b=ft1uEhT2nlwFXXJRZM6j+VZdhdk+jeLQMAWCGPc+ftZB91iqoTisn7dFgbfGKYcmo
	 5pFlDjqn+PuMmkfz0qjBxpSeRVbvVExuhOn3hkNTIXP2Pmv8qq+w1GXTVy0XL82f31
	 sjSZS5lLgRs7B8iBsSrWce3qJOeK85skh8TveHQnPzM4QMunyNN5dFaKf1PtqZQdz4
	 LBjzy/jJz31qMqyfWLETgK0pxUndnGOcQ3z77mq/QoR9Hv1un91iV3ylP9BTf8M3Ke
	 Q90Gz/25F2D1gvK5QmB2N0Aae8nL8GR5ancohvhaBQnKaL+vISAPsvAPCZxWd4GsVG
	 UdqhDWINRijRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BCDC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342551368.12617.10332537823662307925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b49f0eaedf1c2aae9302699ea3c3fede77a9e611bbec2169a2d44e15fd11d30
Date: Tue, 07 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783425513

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBB827A92E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767711234; cv=none; b=eW/afrpXb25FOlqV1cG+hU/ntX8v+fuw+GGADCMfg3yizB0d92/I+UbrittaSvKr5OL1KRT55qgH+pQIMJ/x514LRXIWS41/2RHtp7MjU/TtqSWfhVLSXCWXYc+eTsI4wyuQlkLR/lky2M0daWSkHVVBDzTS69owqShZmZoN8rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767711234; c=relaxed/simple;
	bh=stXPjbgf23QuzOSaL7JmsZ20WZpc9WnLb749miUjvVk=;
	h=To:Subject:From:Message-Id:Date; b=dfR0ne4i1HIRoq2n1F+GxeLp2erxj/KG5ZJ3V3hUK6ADoKm3pbfbbJ7tJ3HHqxij2d5zCDqoMAzBX0H+WHkchQZ5xZg3BQaWkUaAo9MxLnrTsiqLtmQb5K39A41LNWDzzDdFcOoF3XJwJenfjT1+T1FaFrL5D8yCGQb/GhlXjiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNPjvV59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNPjvV59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D022C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767711233;
	bh=stXPjbgf23QuzOSaL7JmsZ20WZpc9WnLb749miUjvVk=;
	h=To:Subject:From:Date:From;
	b=YNPjvV59I+huhynlF3uOHVRAOEl9+ICSLtqSI0VySxXPf+c23gJhQxIzssd6eT4pK
	 MrPiGPuBOv2FhjlyG+SEHurZvr+ejn/7Dc6F+wcyosZd88oZuNvFYYlWgh5hgN1Kto
	 e1J0fwKCevnwu8vCwXatiHn13Zrc7rb7GpS3BK8Qc0yeCumDVBLkO4r5cCqJgwiPKV
	 tVNMR8CMFikcN+qXvaT4X+LHuNXuisK68tQx100VoJ7bYrB4ab9yj4mJtXvz4uYcne
	 oFfgXtpvkNATO/OHnXBJ2bi5k503dHz9m8X3hzvktdCbmCimqIHlxWsw+a93gVysm7
	 aQkfhfZpmvhdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC8CE9D42
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771123357.692.17111241336042845259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84caee3187e56642cd0cf55ecab2c5b4aa2731095a2bce59791908bedb0cc72
Date: Tue, 06 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767711233

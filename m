Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 962144086A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783746514; cv=none; b=FZ+xPr9BIqd/iy4IGCMu+4I+1iOU9Ht330/tSXFV0FkLTwhB3AMySF1dJ4FcMIN1Ew5SHrkay4vKKv+XfM6GtWTMl0pR7mccQY2r0ibjN6fiwPE2x90/gCnOvfStXA0pg1e4khPiJfA+lpINKM+WwwQJmqhuncBCapklGZ2eT4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783746514; c=relaxed/simple;
	bh=8ux2/t6y1xEj6eH+ZapBD5jSLLmKem+JteFNmjmzSd8=;
	h=To:Subject:From:Message-Id:Date; b=smmHvBUms1W4HOcKFTrt2xjP6/xcdhO8q6gsoVZCxe2s3mV2B3PIH1qxm72clBxQv7VR/ykOqNej7xhrCvNG+t462geOVtdCk3eKCU7QVNV9Mdleg7BjZ8bsB1PR37udym67NAnHJDLQL8CmbEh2xG/ofXgxBsBMEyOaPb6fa0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o83bvePM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o83bvePM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F83C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783746513;
	bh=8ux2/t6y1xEj6eH+ZapBD5jSLLmKem+JteFNmjmzSd8=;
	h=To:Subject:From:Date:From;
	b=o83bvePMMZY/kscO1nZVBW361Nw8p8sphSbniAELIdQRNpeFvzMbi6oV2d/tqjD8F
	 EytefWXoEFYU3ROCWSzBlPMKNPNOjV5Im/oQ3q6VUNJoeKMo60qQmJRoCTtUquzqK7
	 +7kQrei9YOX3G6XFJx4r3E21nKvC0qGERtAFWAZl9kUgiOVn/hEMAjXf7sxppWlATn
	 SGLjAnISHa+Dx+5YDQqSgIX4zaZJbQ/LVfXP36hxsi8T/YKKqG6FEvvV8EMcgvvUVd
	 WTJ396/P8MlRhuNr0EVVIUhjgD07Pbnz0JF8NtZWNcxTFb8RTWQO65xage3rzoVIiN
	 GP9+VjkL4NDoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC296C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374651368.26659.4108330924773372085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a621a927c5678fcc15cf342174060bc6c008d7ed29723670f9692f24f4056510
Date: Sat, 11 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783746513

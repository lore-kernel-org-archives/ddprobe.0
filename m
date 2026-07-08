Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE05367F26
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783504714; cv=none; b=m7gRFIBCP/HojG3QJb97E4qetz1EvCvaTD7VbVAzTmBaoEyNM97kA6FUwsmMtphSmsFuZlD7wLyT/2y5hWXHEFBQ+9qyQd1SCadhGg5Ats5q6UtLWk9Rumf8+PhX6W8ZnJRe3qVKWxuquaANV7UZHeavzmQiDMjyKfZTQctbYXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783504714; c=relaxed/simple;
	bh=OWrYBKh168qqZqg07vzCsdYwyAEeEW3R/MDqdcAdb2o=;
	h=To:Subject:From:Message-Id:Date; b=HibWUu9Rytxfk9yPnvLrmN/2PHiyCOTyPnbu1Cm/2WVINnR9DQBSmLprZ2RY5WrBFSO1WRjrxJG4X+detXPCaxdnJHURDw6fJj9GJu2m2rwYOx66ZxqvAS8UyrGc/BcHTo424izuvy2KX1MLU3WIp+ly5EqcKHJf/szVEu7fC4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnXKR4TP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnXKR4TP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7962C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783504713;
	bh=OWrYBKh168qqZqg07vzCsdYwyAEeEW3R/MDqdcAdb2o=;
	h=To:Subject:From:Date:From;
	b=ZnXKR4TPiPh+GfGCtEDq1JnwE6UZRgopeTIrgzL1pGtfcUBqMwngSu+TyLMVfQh6T
	 Qra/O2RFHLeyCYe65TItR412Z+YX0GLuv8ov1UqYEfljTWdTBgjlESMGITwgX0+VaP
	 1u8+ojyO1aNgajjvmRH3W5u7kJp250fUWViKjsr8/wK9nOcxJ+b/m7Au+ZF/P3WTE7
	 8AUm/PHxAVUxw+bwjxNgQZNt0/Wq2bcwAy7l9QpEtLFWL2Wi2MGAd7Hwadp+QoQqfn
	 NsrpzqhQznoBodtOk6o/pqeiTDbyVF+/jGLYxBqTslnIh2/2cBxD1U9nRDdyHRPuzb
	 bsgB0y8kRWsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8750C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350471368.19779.11754630299662969445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11e9d9cb9d16fe74d6d630a0191aaf996bdc08713baeac190821692bd50c244
Date: Wed, 08 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783504713

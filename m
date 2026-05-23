Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491E54204E
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779512554; cv=none; b=SUZDHyaCkh1BUaRt/QiG7uC8TmckDxlOICiS/xlltBpwi1Dtuu8OFQIFmuToy0JlEwveDw6swseEYr+eAKlFz2osQyzj7OSs8l2pSceWQ5WtYHiqDdl0mW3aU6Wv5E4F86StUsRJFk61UJ88bHpPZnQEOS3dTQ8si8Lt0VP0fIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779512554; c=relaxed/simple;
	bh=sQmDz5WNRcq483yQSWiZr8Xfj/QlMN72te8C+wTSxA4=;
	h=To:Subject:From:Message-Id:Date; b=Ca6qF0R8+RwLYNDOJfhaXsCJbKEmru31Fi8NtNlusCNwWVy99EYQrYTZq9yKJbkCg1Gf21yF5JeFn+nMnWFpaKv/fa7QoNBu6KFmUo10B30NxGeKsY1hYOqHHpWRhfLMCK/6MQnh+3kwjJHa/fvW3kNvKeiVRZjkPUwSPK15c8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFMCt068; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFMCt068"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44EAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779512553;
	bh=sQmDz5WNRcq483yQSWiZr8Xfj/QlMN72te8C+wTSxA4=;
	h=To:Subject:From:Date:From;
	b=KFMCt068zvkMfptWBOcT7DOnGMS8U9/t+LlMxPRG6KodM6BvEHRAvATbzj7cEKCht
	 0GEleKffXLGfYTgQXKKdHg8ebMV5HHuxS/l6wIbgn8czQsnNNh4AD9dc3Xi9E0d2C0
	 6gSf0MBcBI+9Mtsm7HIfLWV/tp8ijxwD6+eSZB2T8b6SIBwYQPoiUk1aLU8CdBIq5v
	 SyUyx8SoNF6mgwUxUESOSeiOFCrkPQGtBIoQIOZNYuoQ5UggUBLj7jxICXWtYlbnvm
	 4OSSRxBc9ElyfklD6buTze4X6N3MxkuylyDtrDbWsnvbYTPpNCP6QXBrXBpdwxKSLa
	 IkFlvtWSayOxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B240ECD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951255371.7138.7377169135445083457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa41d60863cf88444a3e50edec2e536ca85d34979c9b15ff776bad303e57f2f
Date: Sat, 23 May 2026 05:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779512553

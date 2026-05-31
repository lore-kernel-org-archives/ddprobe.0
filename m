Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBAD3299923
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780236873; cv=none; b=kj9VV90kAr9l1eDc7ePZuOXKdbgQG+FBxhmGunudbi62VIclx0rxI3ylcvrBvCblKP6tbvrGvG13ljdA99tKTrvH4N9ySKvoiwIX79AiCz9jrTGVUsP8CZ9Xu6tt3ry3LLJZQzUDz74D1DsuUSLCfWP1Z2/gDP2CVLRK5RrpoDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780236873; c=relaxed/simple;
	bh=xOvrCtI8jMXCstfBTE03xCBPfRM64vp8vC0BQhxgIfQ=;
	h=To:Subject:From:Message-Id:Date; b=pjzbFDY4dCbPgBousDqF7Cq9rf3WE3cQxlsi0z1P8pIA2LMS+r0/dtQ/S3t7k1Nn6pTQ7Rf8npLAmVAaqGKFW5Z76UUKlG0MjEUHz0M0qkBudaLxBjZ2v7dLhcfrKc5Pp+xS4sAO7+ptVVWvt1l5YrgGe2kwcujZ6Bo9trhAfDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrlzS3FI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrlzS3FI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1E0C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780236873;
	bh=xOvrCtI8jMXCstfBTE03xCBPfRM64vp8vC0BQhxgIfQ=;
	h=To:Subject:From:Date:From;
	b=ZrlzS3FIAIW8pPrZya8inG+3fKPYxYdUR4qRCVqY61jKkiusFdOA0rI+exA39ekDc
	 AMAM7T9jfRCDIuybvMJyCF1V1/Ch/jewI5Vyw6ri3PLxLSZ8XFUDiOQBzf77KSd2/w
	 gRDhLM/dfiPf4Qa+YqxOWBOg5/rjo6IJBAuDYJNMN8otCGwH2KLL5N9mRccfP1BnkX
	 D+qHt6B99iuTBdSKmQlvamK4l0v0J8EqlHgt48BQRJHGids8LJwdx//VhpbZOrQ+RU
	 62AAX4TJxlkgI6114VLweg4RMRknIsnOUSfJjdV1ccA1wYEPXD6Vq808vB3tvYO8pu
	 ioNph5TQlhsQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE459CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 14:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023687368.16414.8562281154283848858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bbdfa3fd8b12bdb089fc14672f4cd547b2118e0b1bdafe1664cb3cb5dd427d
Date: Sun, 31 May 2026 14:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780236873

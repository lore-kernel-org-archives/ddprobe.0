Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A4322129B
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757108994; cv=none; b=R4WHAoodX49ZVk34EK7DIeSUYQjzr/lN45sMnG3mtriewCRqhjGLl0SJ1K5VbM9ssDQxqujRrN+BaDNb1CTgNq7e7eBF6zgvU6SP5pePuOIr35X4osP7hHicjEf7SeVKjiqxvRdXsQKa8F8QTo1vAxudQNj6yB1ihZv0pr4w16U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757108994; c=relaxed/simple;
	bh=eYkIDTOs+LLxrbVdzqj+pWFatPYifXhgB8v/dbSrr80=;
	h=To:Subject:From:Message-Id:Date; b=SKw4GtUSzh9m9Rh1JQ8UNIdEJyuyJ7F7f+786fTju6vCmXeq8/vMYj8vi+mv0o0iuZYg6NMIoRLVv+128Lh/BQ470hTLm8zHc141qnY/sfqFYn0xA0xyevx8IBOwSef27K4KQAwZESn6pgO8pygJIoA3LhTY5dxAOn7lSET06Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhruQEFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhruQEFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757108993;
	bh=eYkIDTOs+LLxrbVdzqj+pWFatPYifXhgB8v/dbSrr80=;
	h=To:Subject:From:Date:From;
	b=QhruQEFZXMFVTrZI4W4Z3+dBCZMoYiFZNCP5J3an1z87chwbyjkKjgV5wi8WJ1q0U
	 mkbTzBSgzMDGKNIBvuZMkvBWuuKBwtjzisCQfCcu4HWKhvhDFBPKVu583206BTx2Yg
	 uYpR9FVs6axqYw37x4uc8PYet6NvJ3ZbB7FT4b4gZ03erSGnu8L8lSCu56BHrLb9mJ
	 +u1R8UpiCyPLdxLZ2o2HvSIwXPFlj4aePQ7CLAISybtzTvhMqv/8xY353CJU5196WW
	 T0kebLT2V+ofILMRgyIgbCK7z5EXj1nfGPKjfzwi8Iczlz+T46Q01IWRWCuGqnwGlX
	 wUzMXAR4yvofA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9709ECA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175710899358.15735.17691367872712610983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9cceb781be1017a34e8dab7cca30d9bd0c93c5748e8589a9ddbabe1452a49b5
Date: Fri, 05 Sep 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757108993

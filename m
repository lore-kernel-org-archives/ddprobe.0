Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7344756D3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788279634; cv=none; b=pDF+kmSs5cPcqmKRZut/hTseudxAqnYHKJjsvstUzaVUpxcIeJP2po+deIChe+B/2RtCqHnZIN3OS0oQuTHTJLFZtm8ypEjQanSQtvqvj0oiX81MlvEIFdZ95LzLbtZGH0dIKsfbOYA6YgCbvMFY7I8eEpp6BCVOAQ2O4sbmECc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788279634; c=relaxed/simple;
	bh=GIKutIIGZoCGy1Iu8UhUjysC/TgQwKHFqu6yxrOhFMw=;
	h=To:Subject:From:Message-Id:Date; b=MGFvDkn0FjigbGwlDpxQk97TrLZEZVl4xIzN0FhyvVMDTJEClgXRb9FuRydjcLdk6A/BRpkmLaheRoU+jMzsN0uZP6Cchxuaj+mcOUZd65qgkMADSJr79IgkHHYPJ4WgtrukIMjjg+DV5u+mHTii1RQaZfG2eSxk6xPj5gcDcrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSXD0uCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSXD0uCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1112C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788279633;
	bh=GIKutIIGZoCGy1Iu8UhUjysC/TgQwKHFqu6yxrOhFMw=;
	h=To:Subject:From:Date:From;
	b=aSXD0uCsQoQaGPifLL8GP/4BCCItw5XGdN1fY36i1Jd6ILVDcyMnUzsC4t7pWDMsu
	 5KUeLPwc/uiGK1fCz17mDHkZuHZ9VDep5OEaSblYKCMf7W59ln1peSOyNdtE9uH/8/
	 Hbh+kJGiYM10AqyzdzuwyFNNirGgxuqn4CeVBs1KmHJe7L5r7YqkmV9sRsOPytOhgC
	 We0Fa2zwDvc5r3SoHkjItIVbwS3a2j9OJQQe5rgnQ/b7aY421+HHTb3YX0R2iKl9CK
	 GxlHXTvkKurdCQIMYUo4sJf7MNVxIDGIvqR0matdDOc6jF1lu2Sr7+zqy2Q/BlM6I9
	 Jw8oR2KFygfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDA0C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827963369.10143.10146187901646726943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c39c6bc024bdc5033b03f904a1499702cce5373a53fb53eab9654bdc081a888
Date: Tue, 01 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788279633

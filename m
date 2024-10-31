Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B81319922E
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730414154; cv=none; b=Ni2mQc4S4/1V8SrN6ZUHJenfNykGKgY9G5kirW9I9LaM2K9hvkJ6gAV3SmXB4+acA4w1q2zRdgAeGc6+UgZuUAQoHAWe6nyXpuOoLXGHRlkH1H/xA9i93BcVViU8CShCYnvhzBFXXbrOHa+Q2crjjEkORGHNXxvJFLQH7wv2jzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730414154; c=relaxed/simple;
	bh=muaTaiFSLJTtp91+QFyVF+XjaxqNDZEQGW8V/5iANxM=;
	h=To:Subject:From:Message-Id:Date; b=RZ6doOlIRpd/KrcgCcAaO3K1VLerv3GEJiF8seMvDnD/oFC6W4S0lS8SSGeZgDvGTqIj6O8jWb9YVWPg2nzwOYIBN0LVMc46dPCY2N3lzE41hyZO4x6xQZCay1j/07SuVdelzvw/gvhRfIK4OLliTrvM0No4gLPb4T6oniTAQ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j9wwmiRq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j9wwmiRq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC326C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730414153;
	bh=muaTaiFSLJTtp91+QFyVF+XjaxqNDZEQGW8V/5iANxM=;
	h=To:Subject:From:Date:From;
	b=j9wwmiRqRiKMlZd1Sn185taynQwgSdIKKYRaZcV2yL/BSk8DtHF8bP/FBL4UeISO8
	 26mMqiAzPqaJGLKijk5zssensCGrPTWGS1hyqFwmQ7ByhPqimH/nmBPom+0ks3qjHm
	 cAuCssbrC+0n5Qh+COQAiPDzTa6mn2tjfhlNUgm4ErbDVToHnCwAcuHB6SXqQTsG1S
	 9qncNIXVUG341vTJzf5Uq8Dx2EvVSsfkRLFqMS8rFieG63k/6gEMBxO/KIOS/k8iQH
	 hrL+7Z/eMMtQ1Aqv0XyHg2+An5/yYIJIAwBQjcjPlLqurYI0FYDaS+Yki5WZK/Ou5d
	 8iF3VWKJTqGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A41AE67489
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173041415360.27066.5184113747833671308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506ed1356522ab8b822e5f135ba1b151c1b032e7cd5e469afe90a3486031dae8
Date: Thu, 31 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730414153

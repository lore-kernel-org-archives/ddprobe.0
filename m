Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1B72DA768
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775858254; cv=none; b=s5q2yfvFxE4fkDwCLadWE4B4WI/xxahUWyLFs1subuSF4qdLiIbNykvntwReF6I9sPpRt4lYIkLtpJTM95eTcNo6riQamk9Z7rkf+0phgHnsxpZrc0XyYjfnK3mUYh8bV/fgCZo2lncMqmAAiOHlmSpM6N09pSt/H6YowC2lxHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775858254; c=relaxed/simple;
	bh=TimFt6BCZKOSrNz+zMl4/A9SMvzP/+FyopFfpBmeFv0=;
	h=To:Subject:From:Message-Id:Date; b=SJdxaGqgcWCpGBK73t4hPzpvDCuczSPuHNeqpRIuHWfWfF/JT4VXz3CwYekYRLdKjzPeVI57g8ls2w4lugCAQt73HIxNj9ImnCQTecQVXpCz+VkfBtqtKUt46GSKTxvAQ6NpqAqB4WzFsxDyGwE4SfJE5ItkctkB22obgftglHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUTIArKq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUTIArKq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE634C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775858253;
	bh=TimFt6BCZKOSrNz+zMl4/A9SMvzP/+FyopFfpBmeFv0=;
	h=To:Subject:From:Date:From;
	b=uUTIArKqjeX/simNNponBGS34TklPxpuU/DVK7K4PZNQcQWRbcRaZBRbl3mcOqNgP
	 CEzi3OHfnFv9PA98JuByyYc1L6HvawHQSglwzWi//UOxwObA7/kp2oPTac1pWM+5EB
	 71UuBLlNZlUgEugPYTkzUjiEyfj3mU0Zwhfp56PTltSvqx3hR9uRZ5ozW6LBgfCKlu
	 enICw3AEitATkki52vYGO3WZus8V22qrzp9Ll621TzLuTAxCSwNSqxmtCzMA+MLvZT
	 9XebOB8YFe0OxI54N62BVmYGcZm/RtVQV9upCa3WzL622aFBJU09V0hzvFZ6UiMUh+
	 ouOx0LU5NjOYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB07F45A0F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585825368.15209.15960453538680339333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0644941e02d4ae47f114ef057b1e63924870950d9f414e623bcc31c56fc6282
Date: Fri, 10 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775858253

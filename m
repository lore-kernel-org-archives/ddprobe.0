Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3517B3ACF02
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779218434; cv=none; b=Z0Bgb+W+YJBQVXli1BYHaYGGa7QKS39YccqrkkME9rT3CsGbUvkD7McA9o07pRMJSdm8nkQHpd1j0N/+19Jj3uhlm4d8ZY7C9fKhmkl322SKCNdaUojv3sVH+P4TU94lFShM+mttQIFdUCbdpOVmLFIuWLzW+IOhLMoCsJ4xbcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779218434; c=relaxed/simple;
	bh=y8Yuna6BfUhTsc6Y/ep5GzuL3MPPfkUQMV0v/FqYgyw=;
	h=To:Subject:From:Message-Id:Date; b=o0N6l0EgQj8s6D0Ij7Q6PV7f4A9p3k9kvKU94CLvqTmW0uiMBMzJ/N4smQ/v3DCMJkmjoeMj3GpSTyC+38dnk1b7ADziLIwJfS+yZWpltEIiW7APXApswKbggWEwdgFEgtiThGOw0isIl/u2/BrqBU9y/hZZApoUhlTQLl3YUoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7OkARQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7OkARQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B3DC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779218433;
	bh=y8Yuna6BfUhTsc6Y/ep5GzuL3MPPfkUQMV0v/FqYgyw=;
	h=To:Subject:From:Date:From;
	b=l7OkARQtvgcbhwTC/gBWhDtDfvAmoto/NHM2vZvaTIm6a4mQJCXjJDN9Il8AKQffJ
	 yvpNF9jX9jug1fgbQ17/BkjHzLDtnfXMXYe9I8GCbyp1P1l7GULdMk8avgNiGPGncC
	 3PPY/HKMSYqm71r9gSi6n7ilUOaGYhtuLTWB7o2WflHzvLhMErjuxTSRyACV8rzJ9e
	 vvpNmmEtUr/TWCIPdrQPt715qf6AMdUWJX2a3puVDRsGEKRxv0gStsAhGZhx3Z90EQ
	 Xm8ZV1Ne8nzoVX6Vg508eYsN4JOQeH+ZRG+8YXWjqLMCs3XR7TaUkvHasOnHQKf3dG
	 YqFL5T+a/xBJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD214CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921843368.26624.14744950805830080323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664277312dc3a13c7d50fe857cf4fd56c7c7e784f89751ac90b0f17972054d6c
Date: Tue, 19 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779218433

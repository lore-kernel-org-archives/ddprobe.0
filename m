Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2DD2C237C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758383995; cv=none; b=VL4XFNjh+59J9IL9X550O4TixW62g3L2zVg/qEoLTv8k4ogOckhUEoPak74dN2r4FocQvO9OPRAzroqnfOTdnTZeCaGkwpw2haiMyInboJ8h6DiP6Lv8yjaCzzDrvJ7TWihohD4GG1t1xgK9hRHBAanxk1G3kmmd2UVvPMkumnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758383995; c=relaxed/simple;
	bh=n9hv1Ui4W03yW0OpzuyTm8faPEXBbjAUhQ5XDiIoe2U=;
	h=To:Subject:From:Message-Id:Date; b=cdx0yAiagj/BPwWgEIb6UDA8fiw1XdyTlJJQAsDN291SicEC+pgDm8hmueuT3Cfvxu/JRTjT6DhL8W3hCNkJwMeVaPj7myhfw9lj2AqMM5eIWSu7O/xHFcQIHmHiKD62DblimJRya+2d6IJ50DJd7LKlTy209n/6PqWA1JTk2nM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2WN2kId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2WN2kId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5351C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758383993;
	bh=n9hv1Ui4W03yW0OpzuyTm8faPEXBbjAUhQ5XDiIoe2U=;
	h=To:Subject:From:Date:From;
	b=n2WN2kIdlB7/SlEreNTJUkJHedOJEI0laQ/pWUjo2UjBYVNMrguZCTUk+5iIZV7ND
	 04UqhBVsBWNTIMK/c03GjfiKx6u0rq6uGWm8fU3m82/vsaaEI6+74CyC43dOBAHPlE
	 R3Re46quLGddc/mX/FxPVYZF59t+DgZhyzj7KgdeF6Wjq9K0vYV6i360k7cXC0rpSd
	 jCY/7UoCIn6P2IhGph8HctalX9V+B69xP6MEMQbvfOUIGPHcv59ALceaXa9u0e+OQQ
	 5gmrgcxWwm2OfSqU8zRvC4USSjC5IZcNLpOJ/0jbXh1SQT6ENTid9q1yNtVqOF7LCG
	 LHIOJIcxc60RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D5CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838399358.25687.15312433838653165278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f5181cce49aea14a400f84297aef9e14c503e291ee65b9f1da005fb847946e
Date: Sat, 20 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758383993

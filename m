Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5265B18BC3D
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743884994; cv=none; b=pi7K/NVRddllrO18wb75fcw7kMIZNn3fqCeSr++8sGiQxolwmIQROVsQOqwrcuo0mmvEGZ1ayweOelcwDJL4PY5DPpfwsH7P1GeTyRE7DefMZCSk352XwlPg07d+JGGEO/dODv3b61p//amAIgduiVL/efnRhpr9yTtvIkFu+gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743884994; c=relaxed/simple;
	bh=ZGeNzUi/JXZAqQd4go/fiE7ms6E/l2XIALM5mWh5aJ0=;
	h=To:Subject:From:Message-Id:Date; b=PgohFdGeyZrlx891ODEttxjDN+0fvacZYxylCh2csjMZf19k7EAmJcUUEb/HaU+NhluG+9JBu9n7ZSlsMygqCuZQYFiK9zIfQF+AyCwMFEnhDPph/yrhSSQ1eqAhNIRoHuXjZ6/37qAA1ORf5wpiKKF2bmSmpkkAGFkxO9MfF0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkUCyOr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkUCyOr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C74D1C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743884993;
	bh=ZGeNzUi/JXZAqQd4go/fiE7ms6E/l2XIALM5mWh5aJ0=;
	h=To:Subject:From:Date:From;
	b=lkUCyOr/d0iQ2/MkgBifd6CQ3/X4Q5dGhcgqnZt/LRhRihKGLFF+rVZZW8WHsjq/K
	 eqUz83kJWJ0Y+7ekPidlURuFVUButU9ptkmuwWe6R+o8dF0TWccDvES1OjSLMbuglh
	 KJnePgxhkaIiCdgd2oumXjoVz3/u3sn0Rv0GAs7Jz5GQ3XVBzfDco1hYaAjgdH6iAh
	 TQj+Gl5AgOu9aiuO6cBBVJZqCas1tqDefpD6X1Ry0cT6w1N1/8pcUtvmIikVrgDOjl
	 5k8wDFYULVeUrI9zed1OgIxa4EmOIo6glvpuzBNnrScLcd/NwEun6rU14qn+96nFc/
	 lDBAzrHB7lAmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DD1C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174388499366.10727.7763387095184881150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea070a300a1ee656fef27a1c99c0f0e45d0f4983dbda5c7baeb5ce1e862f4aa
Date: Sat, 05 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743884993

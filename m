Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1BF83C0628
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786818034; cv=none; b=QnqgkzSVHrW2C8ZWcsVjSo8xd4/cbKPZyRc90pT+txQJrJDrfCuPXnqUEfdlD24tioaaFW9fCvsqdfJIzE1LoiqJ0OM23eWofsh+Ul2HXdYfpV8C1Ny/4FdWT3HfiDLjroOEL/FrcdNUtUsOPV5I4rlsM1gguRyQ3K055bKl3I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786818034; c=relaxed/simple;
	bh=WHBg/a2op2ZkIiVnVeDW71jS0ZkOnryPUKFbhOUEw5M=;
	h=To:Subject:From:Message-Id:Date; b=tbPPz3lU0heHGfgNlApyZ5Lf8+17K03Ow7F8JkD0vWXM6F3kmP15lHZVjVSxIkre5UuDptoNhYJ2SAIsFOnAbgbWyXvSZs64mJMPK3V8C8hp++MDOeNZeaMfGbYkHyul/bkxyMK4xxlwm+FpjlgJoesU+4f3KpSN5KWP43iujew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnM3g3tU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnM3g3tU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9CFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786818033;
	bh=WHBg/a2op2ZkIiVnVeDW71jS0ZkOnryPUKFbhOUEw5M=;
	h=To:Subject:From:Date:From;
	b=SnM3g3tUmxUpmCM7yVSUeBAkkwsKdhGb+nZW4EuJFBOiQPiaRGa0Z3t4Q515P891c
	 qmx/GtAgAYrVSHdZEX1MDOWR8+k/MZ5IVf8xPSN0TGf0SQFQKvPHrGf2TFqdGJUBTN
	 C6IOIyhJLzWDyVIqc6/C+HwxepSPIbQ6on9Zf+NGqXUl7fIi6pqt7EmPknATbae6dO
	 gVWgfXdFWogHVsQwvyLMtlabUO25r8vj18joP99VKccq2T12i57sgVjzRgtQH3p3cc
	 d+7LowWgOieN+ITwe33Y3eg2y7g6IJvzr0SZvbORyQxvR0XDw0SyHA2oowoQUTxA3d
	 OgTTXsW8cngCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B344DC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681803369.27121.5025675923419894137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c003dcfd31d509adf88cf5eb4221c8c6938d099dd5ed203e8fb7a3523473d4b
Date: Sat, 15 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786818033

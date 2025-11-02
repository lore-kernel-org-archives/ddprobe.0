Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248B7155757
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762121994; cv=none; b=pyodSs30WpoP9rsF7CNgQdcU/vSPyoWlACrAk6Hun7JGnUdBFNQQw0DumrJp7pD/3MVnrjG4JYIqDXF7ifW23SY7NDTK9CuF38W8RH923JPUWogUHM5zGfwKlu4PGZb0SK/r6cwBLKGHQa/b06gkSdN49ZVGuex7y8SmQF6LKL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762121994; c=relaxed/simple;
	bh=nhzf6Ba2185IckCaCgzos5kARqCL83sXzYZ4s3a4KtA=;
	h=To:Subject:From:Message-Id:Date; b=NPyz+GvZwQbkZyzIr1Lh3c4lAjyPGglf5FZD4tXKB8Q0b9r2tm07myFk/xcsgkzFzCHwhi4FpPwHjDcspyOFsXf7NwvWxpq94gv8sUONJwZCOPD4LpG10q86uang3mJm4Onq+IQUBavPWhllP3AbRjtHKaHyFr8RSpRKZEAh578=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PP6S1uDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PP6S1uDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8A3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762121993;
	bh=nhzf6Ba2185IckCaCgzos5kARqCL83sXzYZ4s3a4KtA=;
	h=To:Subject:From:Date:From;
	b=PP6S1uDiLzvOfZCmPEUknANNkcUEqM1uCk1tb7eNGGMdsG9ryHOS9jpkyWaLMLOmf
	 La4a9adGZs9wzx6euPpgEXB3NR+W4nwJxH0aDe4S/8jKXChpF5byo5r0xR9xD/sW9B
	 Xb4odVrNMBx8u5VtC0u/iIb5CjNfXOjY8YIi4DuiBHPN645o/2ayjIMU6iXiHYocK8
	 X3gegiAaBB4BwtmadP4NGSffHliX6oLVZ3XH48esSA1cpH0SU21mIAtxg6WdgIXk5V
	 0jl/Kozs+nrL8X0cSOHPYnwKZhDxLXNzoMpfZIRXPMQi1Xzzh0/tuQmBItar90Rg1B
	 u9+LnwoSihB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C6CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212199360.23126.11230551783176667395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1829a8daa0afeb48deebb031e0f4d42f1d2b09a19cdc3c77a68bdcf39dfb229f
Date: Sun, 02 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762121993

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C7A3C9EDE
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775841454; cv=none; b=SpSWSIJwEOCWwAVflxihv8RhPnh1CwS1tR3b+RfJhr8lqT0uFXzfVDuym/EOjLZnc4S5DyC2SHSKkLTMREdunkzf4/8ZLsZVQK/M7wp4KK3j3x+3OmXR5ItU7+MNFX696StMdRt0rtEjq9MlFGzzBqnldSvsBQQVxahCbwzB90M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775841454; c=relaxed/simple;
	bh=IRcLzER9RaYuOzA+/sijCK2E1qOQR+Ff95o2RAavwh8=;
	h=To:Subject:From:Message-Id:Date; b=POovZIj1eOPgLNPWTrzM6PcPaRrU0eOggQYC+XRDYfny4u3AblVnMZkxWcnnYXwx1+P/ykoMj4pTDRYOJjzL3TcAH7ZwErwjeipTMv7Smk2vcMNna1Hnkvv/8BIgMGaESdVWMm7d9f0xww9AfwOOkfII0f4321Z47Jwu1F8+1JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUc8i8Sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUc8i8Sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEF6C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775841453;
	bh=IRcLzER9RaYuOzA+/sijCK2E1qOQR+Ff95o2RAavwh8=;
	h=To:Subject:From:Date:From;
	b=WUc8i8SxQFUOxJ+CWLddLZEUh/F7GVrF0yjwyhOr2q0N+XJfOsPDQuHXbx0H1qgwe
	 76qXVeroZZzOrvmxjESjqXOlHoz3Xyf46BKx0iUL3X1VYjPNxtxG7SUa1o8I604xz0
	 jX8C7X4ogrwOz9SVfp069b1JTA4tPnHRcAuBFq7vo7tDmmRG8qSxB2oVi7cWfb+bWb
	 PVKqjKL62Si3CFJwAlClh2nvnBpD5Ic/7qe+2yrRsN0G7Cc6eW6z5+T4xuqb2hp0rF
	 vloVqluGu5lqn8nuq1Jv8SPKb2dV+dJRud6xIj1GeJHVUZe1nrEVKn59HfpUkMXEMe
	 V0Dz0Ln6YVzyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9AFF459F7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177584145369.4695.14263994891612973869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d099ca974b54f17c22457b5af6e90f466c946ad0e5f580d7e31c2beb626a3f5d
Date: Fri, 10 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775841453

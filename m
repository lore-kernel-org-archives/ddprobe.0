Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76163418347
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789638634; cv=none; b=WAYh9yd9X3WM7yYU0ysXkbSPF+jq9ptTxoX6SGWqB+8UOSYEeYPInHUVSryIJhNQWjcgK54vZ1NocUWvNsw+Zv/vsJFcSQvZ4gtJhUwUf9owcntgBtYvF4xFEacXYtndt7cNI34L8qvXUYr4yXals/2kR69c8tVaG5HUJBo4EOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789638634; c=relaxed/simple;
	bh=COQa/wY3KtoojCzM5impqNoDsHNqE2EvWuzlYCF4fp4=;
	h=To:Subject:From:Message-Id:Date; b=sxQMh9RT9skJe2hxjvaZ/OdUunSx0H0ije0UKxf2UYSerJuISqMvrqB/35VO/1jbfefNPcdeJ0S7fDn6IKUkbs+W6S47tQDVFGuNb2PdwU6/Nsp8RZlyM5MDHiZ4FjMBbJLUeVSkSWTAjX3O/DCx4VoIFtZmNhAT0oxNn6Szh90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF/O00dE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF/O00dE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C403EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789638633;
	bh=COQa/wY3KtoojCzM5impqNoDsHNqE2EvWuzlYCF4fp4=;
	h=To:Subject:From:Date:From;
	b=qF/O00dEGS0s4MVftkr9iyWooQPyvEpg2ItbKUUcv8ZIVG28DYElP9xeE2f1tuqUL
	 Ss1vLHCIWJGPpjN32ADgSEoFHL2Od6VOO8hMAn2YX1EyH5N2iQ0ZpCkMRu79L7/InJ
	 qi9XADbfsEJWEVi9rLQdZcSeARWEKaeQUYi7q2Xuh3oTxJYI0UhUnfslqJI5PJHMDw
	 NvMQMRBTczE/cNuMnp0W35iQBAo3h2LvOO0W5O7V3CvBy0eLkQXmJM6db5jiyhOl7e
	 SUU5Vg7KyrD9GxBXExBJeULCW+D4T+cdhy3Z28SPSsGaC9KUDRuWByaAdr1lbXZkqX
	 ZxM7jqvWn0zsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A6DC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963863372.17190.3827469963448185880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df9f981ccdefdfb8d9c318a5876cdca65adbc46f2da8d1b966596285bc7ff43
Date: Thu, 17 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789638633

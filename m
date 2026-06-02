Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2043E38F621
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780424674; cv=none; b=AaqMxX4xXqVgHo2rXnKAlVC6Q4zaqGC1ZqUeweBfRaapXPoNa9z0fnrXJttyrjsqSFmcQ6XJmrnhxhiWZCSuZt8sEtT8fW6UohsLIiVKd6YV6K8FiCpQxRpCLbixm69Sjsk5i6s9D1+3B0kYY2gdXstwGHRGEngiH3KmcHoeQj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780424674; c=relaxed/simple;
	bh=jwV/Z/5ZQL2qI6PgNqn9hLc9+gA7LbIu1SkzScZnoP0=;
	h=To:Subject:From:Message-Id:Date; b=TuAtW1EyEJHG6G4n2fXetFfquPWHOx5m2Rmvh2Pcw4Bah7/NcCYsdaHKt3Q2KlmNMwv6fAWJSRQc97DIxRZCWa6w/PRnbU/BiZerfFNDtcQWZgEcDxunwVWAA8qapzrnQEfnqmkEsYd7yzpuU05KEvvP1OxU7enqFRj1TCLW8Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4R8QiVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4R8QiVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A9AC2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780424673;
	bh=jwV/Z/5ZQL2qI6PgNqn9hLc9+gA7LbIu1SkzScZnoP0=;
	h=To:Subject:From:Date:From;
	b=J4R8QiVfZ/h0eEvXYHmwrLAevb0AYYlLExpzcvY+8AZGt20HOlXiU2N2mEfOgghP5
	 AoCAASgqvKXsN7d+VeFMlbU2aDGFKQEK4K7x4y9q6NFGMsGqm/+2XfW26HEI6k/ZJZ
	 CP4aAcWFDpwJTrXhFyn7NyjTuQMiMg3ARLAqKwk8uX5QCR1dzvuhZVrmz/s2Iy0Vj5
	 QxiRNTKGg/TF4UyfwjYJSEB8doD66w8FPEiwjsYUtwy7bIRpu9FBghpUFMMpcSfanF
	 X9/aw20fU35qb0pRSan5o5KZf/qTR5w+6vUbb3l29sytUMJLkJl4+Rmn5N0S7hwudO
	 kW1UNzOXSfM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E54CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042467368.31130.17008789087394307139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15020d306654cbca833a8680403e7068347960d1344b76987d66dbb7b9198b0
Date: Tue, 02 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780424673

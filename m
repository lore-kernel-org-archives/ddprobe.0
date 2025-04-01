Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4443F1F0985
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743508794; cv=none; b=ntTfAN0B6DbNrAI+JG0GGaeWblDL4QFb1PBD/KvjiD2758PIniIb9qzmKZsA3vrBQsrKfayB5me7a2+c34Fcw34qpBAQ1yJHYabOesRECdU2GryWHDQdJ5OWfilLvpjbbLrGaB4cxpzpWH2sCj7FKHfPxmboOwyU5IksxJ/ks/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743508794; c=relaxed/simple;
	bh=vB8deA3RTzJo4WaaCOwnb8Ye5EWmqWJcFJw+zK20HsI=;
	h=To:Subject:From:Message-Id:Date; b=VfZf5K2cuSgMGqx4cWSer5zHF/tOv0tNeyv7IpXJnH28sKa33juydjDE8zZTPUlV26b2PUP+4oD43g8KuRFX598yMNHeBvLWu4TcB9UH+x2t6Q/ICozy1mz0Ae0H98Q/13eJ2i+9E4Scx9Z3TJBlQuQMCK8y2Ak2tbGEVGKcoEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVKuicU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVKuicU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F07C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743508793;
	bh=vB8deA3RTzJo4WaaCOwnb8Ye5EWmqWJcFJw+zK20HsI=;
	h=To:Subject:From:Date:From;
	b=jVKuicU1+CUrBNvcxRmB1oWnrGmE3Ysgi3hCPCYfOURMgW4sY2VlWw3QGRt7dG8nA
	 w2jQD1nvOzkvNQtumINXmaRhpVnx7YtJdQGUvUROu0mmiRyHJFeg4u/WsMbogaHAd+
	 lG6FmCnhrP2TDW8FsvEj4TJWPDmGXS5ZRlJP1Zhmaom89JsN1PNmltKq9VfasZqyr1
	 Knfl00y608FpPURDnHu7zo8zHaN6CW3EktQa+cFD39z+t3NGCUC4kpUHes81JtcXcZ
	 pCmJ7DNVa/+1Ua+hevn1iLh95OHQ8GyuDP7HyJxJXRtVRVgWU93IS5SY9mTe1YkQZd
	 YM3fX5pN5n8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45A0C36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174350879361.21163.15475912742438668595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04f9eaade8692e3cbcbad9f68425437d92d5bb065fb1e8672cb234fc6e5ec4c
Date: Tue, 01 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743508793

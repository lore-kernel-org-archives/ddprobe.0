Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E782BD5BD
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759218595; cv=none; b=UdI+5SqHV+boccCFfhBk3Z5PV7QjbPE4qS1CwcepiN7mPmh96/uJ3EDm6vzOAAy4VH5PGrLvoDJkwMANwIe6ykrHYIY6PfzANYvpxKGNmp5HVP1hsBdiv7tX+Os3u4qMhu8hlbYJZyi1xXHqFqIkQYbPb6Bb6qKOF9e9h7yMu6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759218595; c=relaxed/simple;
	bh=jM4R38x+WfUkpcFt0jAgAW2YzrttrstD9CZ2or6Jm3I=;
	h=To:Subject:From:Message-Id:Date; b=WrzcQhIuzMw/KJ9Co5ZNThZ//RIOPlVjVuqYtLFA1fK0MRy1Ox2ocIcV6AZlbSJznrD7MP87G9oV8j+ebdrgEs2lkfrtPq4JlNaIpyPG7pIsh/T5ZcdBpJn+hvzncf2U+2z1rdE+cXL2cIiNiVECulmyxGJd5zRCS4g5ES4V2l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLWLaY+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLWLaY+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F8C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759218593;
	bh=jM4R38x+WfUkpcFt0jAgAW2YzrttrstD9CZ2or6Jm3I=;
	h=To:Subject:From:Date:From;
	b=vLWLaY+b6N01k6V4J2k0+W/Xt+edVQ1uF9U/+szOPAsS1Bn0steLIoWApNyi6AESc
	 NfKLknFTpo/2xdoXCTUpzr021CBwNG8onAcGLPFc6LOtrs+uDjZgnQkQRW3tsY7h/Q
	 PZMoVwCiGvla+q1KiQEezJUjyh1tEuqSb1Ovkb3EyM/c0Lw2UO+Qb5sJs/z4SO9hZb
	 SbOcxh6I1wCUIvTrcS8Kt+zaml3QKpqspGnAkg8o2LWYQ4kolQZLmYaE6dxm88owYD
	 rx+0M4Hzc/dOtjFOY3RInARZ5AKHD835ak52jmYcCvOe7p7h1YXdbDqSbAgsoDAUQY
	 StaWbe3yaoHOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1BCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921859358.17154.5242382955786122333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dc4c157b9ef9c956a45c11c5386da5515c2427d09ffd0f3ad5ffc4caa8afb3
Date: Tue, 30 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759218593

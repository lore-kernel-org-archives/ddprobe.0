Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFBD1FB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744823394; cv=none; b=dnSQCrIq/1oU8YVhXwZ5PECIDQz+58V8Qd/C5aQ+e+mfwNSeBC71TGhh23sMDMw0028YcxJUWIvEnIF8Grdp6wMs9inUBAnPYgNQDVuBvdEQTS83p4TfB+e3FW6n2DDH4Z707TE4ZYpNK/ejR7RrLSReKUxX63n8UERGwWOfoJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744823394; c=relaxed/simple;
	bh=R5ewoRLUqdVNQ8hnEf7XFzBXPuO3mEHrcucMVI48Rng=;
	h=To:Subject:From:Message-Id:Date; b=fT7DbWufbP+wZtwUo7xK1vSE2qXhXzyAQN4beKF4NYzGZfuH1PUutKOri/bzwBaZ2T0sH4mQpHGr6vBx+O/cYBF+Sju5YDp254CRKKCfQQpyWTpJ3SXAwy4j10irpQZ6QHRkEMVRscGSE02tmY8WozqrZA+9vR5/GAD4dk6KD8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTBjbYju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTBjbYju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC200C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744823393;
	bh=R5ewoRLUqdVNQ8hnEf7XFzBXPuO3mEHrcucMVI48Rng=;
	h=To:Subject:From:Date:From;
	b=GTBjbYjun3UxgWE1ZrsR2eV3vERKClTwpNxvCWs3RrkKk1A9I5isyR1EqvSS+Lo/U
	 C+nMEr1r1bbsNz7qJ2YnjaxNGYGLzCvajTpNO0gv+0NIu+7wWHhFziFxqMDNTwFUTF
	 bte0WfoMCh06MOqYuDxiWTVlPs6nHEX9B4JQS3j3/E1y8k9EsIHpN7muMr0IZnaZ9i
	 f0+jCffQ4T/r407yBKqc3VkxFEJuWConH2iIeaAxFVuRCvTlxhXy55+Zy6fayEtBwl
	 r026GwyVeoRCtNPk+Egjew/nhFFbHMb5tPYQjpbW4RhIpmf/Vs8b4BEzfKltvpvp6R
	 NEGmiSb6/8OHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EB0C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482339360.10495.7393822648081579057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef05f142380772693bc55f05879a74a3835ef844cd860334dfe43a05b98b981e
Date: Wed, 16 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744823393

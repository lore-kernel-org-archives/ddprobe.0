Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228CA379C3D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783519714; cv=none; b=o8kSueELOl4NGxKEZO1t2DmXYzch4bSVpqB2RZ/txt7fv8k/gDdERAyzpOJf20ZbzhQoXNXoZ3AFnrXozqyA/d56sce6RguRrHj9MnbHrk7yI9kfH0e0+21ietVKc7uyeTrkJgj4YGjc/02+BrhQ4JVItNZIWBFrsZQ6zPHZSbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783519714; c=relaxed/simple;
	bh=j5uzzB9GWAWemHPo9LEFWnw9MnqVQfENQEvDDpSE7sw=;
	h=To:Subject:From:Message-Id:Date; b=DIB5DY0gPt7a3mdYqjc2e4Y3QJoC7pZryyNsBbnZhgdfkuDNsrq6u654xMM+j9WVv29+lABkdJLsPdBEUC45P/45aIIcl/9NXq3+/sICZzmnA3Et+SS/GhKXchxw9uoJiYI3tpxA+MY6IfADa/huV1BIB24R2fwrhpo6yuIRpV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muFfJdJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muFfJdJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDB9C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783519713;
	bh=j5uzzB9GWAWemHPo9LEFWnw9MnqVQfENQEvDDpSE7sw=;
	h=To:Subject:From:Date:From;
	b=muFfJdJk9RtDh3guMUybMjOL744B1e3qZ70mJC16m1iW/6iu6p/1isz1XLb/4b6yB
	 HNRL/JzYX3geFnD+pShHJHewvYohfZNypukRkGRM+Z7l/DojO/O6ZSR8Np7WC0kUY5
	 uUNcipgL5UbJqmFzCZBpXDh2aAshly1mk3SGOHdw3rKT10nad13qvBP255odNloz62
	 yHb4cEXP1utVw8C49usrPpV2MKmz61CdYSCvPW7x4KOw9Em1Hhe4UkRO+SbtlhOB3x
	 ynqSsYKQ/fZib9R8tIa3rMdsYz8hTZPmfueBcAoFutlDMfLxL6dFoYCGcr7ZU7HLvH
	 BcfNpROBJN3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB115C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351971369.15056.16587213150447783911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f2cc24e6fdb42c0dd4dbd799f6cf0e494eeb12e97dc4405e4dfab529d9f450
Date: Wed, 08 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783519713

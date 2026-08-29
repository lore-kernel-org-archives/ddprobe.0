Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4854533CEA8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788003634; cv=none; b=mu4b7VEeeoewsxlidkep6EeezGq/EvrzZ+whS0alZsUWnmO3mEf+vjpdgtw8iZuTXYK6+5hd35H6CXPz5C4ZOfCf66KAjSvN/YMl4YunVuq9bAOc1mUqbK3UVP2iCZQZGV1SZVEHe2XZZE99vZa8+13Wt1jYz1bqe7my2ol+HyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788003634; c=relaxed/simple;
	bh=gD4Xs3ZS7gtekSnmqT8zshSbuDQmZRw7g5UHIc3n92I=;
	h=To:Subject:From:Message-Id:Date; b=i0j47Z7yvxzVEoy1DDLTeN4WP/Dx5XNM/4xCr1wNcALKpVRe5Tj403aA6LLDWmsymwVLqxmNtydK1lLSQo8x9Bvd/KS2LTnmSAiNzmcgsMoZvgx2wHkXzF48NPVwSBCqMfU6ESfGFQhr2Q47FS3V+svUgHr66ZscyAXoBEn/UvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9X0MUPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9X0MUPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D9CC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788003633;
	bh=gD4Xs3ZS7gtekSnmqT8zshSbuDQmZRw7g5UHIc3n92I=;
	h=To:Subject:From:Date:From;
	b=n9X0MUPENK/XMf4GYjzLiH30PZlJ6bKqbeGcIPGlo1QC1XpjF8yFk04jZ3osiEYGb
	 X9tN0HYHPNOAqLYUdSKRSqSbnu0q4cb9crtRXf6VKdH6glTTMzo9BT0YWCfEwUwjsL
	 9eY77YzkLDYThZPTb+W0QL4CAGZWjJl4R4aUIm+dX1Mybsu5PJtyY2Q1fmWJmxtpOK
	 u50kpuAvbfAcwoojRVFq9oEOz1aUkv0kzEuQtumESWfLtH+NV6rGkPxPdXgMdiIkmf
	 i0AqpDGdRvWRV1iyXVq6T4mFrOeWVxbg0ZgsTOr5q9x0Giv2qhkX311QE2ThYuSCWw
	 XeG+Hsxx8vChQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF5C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800363369.28115.14106866038102021419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f83ea641e51f6f26bdc472dac1514595fc1e25a66d624df3befe2b94b3d589a
Date: Sat, 29 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788003633

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8A32D94BA
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788496234; cv=none; b=BUU8CJJ4VDtGiPBL8hNP8Kioh7W/ypcfARfEodHUGIuEUOM+JbmmGidMGkKWsutnIXsvL+Ktp/02g+EymiP9yq5Try8ZmhMpSOoV/x7L6CfwOIAiVp5vEKlKHxevOZSV9dLnXVOahWDPOHeBiy99hunoiDe9v/i1xMukjTzMcLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788496234; c=relaxed/simple;
	bh=Qga77PCGlZdkFl8L6K+DQ2Jvz4XkopEpvYFnExg/vV4=;
	h=To:Subject:From:Message-Id:Date; b=KkdNw0sIejPGhxkqmzSwtViQPaDVNuNMe8v5yuqrWgvX4G86wVuekeXaMJEl3CbfEOuH+OyNuzLYUPut21fHy91tViyvme+MMc/ZXNv/+nD3rZdCRWxw0aNFzN+jYy3VC48Gk1YJ3aiQ4fXVuLk1rLKflgH0ameF1WZfuSPT9Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRqhRu+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRqhRu+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4417C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788496233;
	bh=Qga77PCGlZdkFl8L6K+DQ2Jvz4XkopEpvYFnExg/vV4=;
	h=To:Subject:From:Date:From;
	b=TRqhRu+xDGSXb1KAQFRcfSVqiKCmnPcz5kJyPb18BzoDoP1rjamdKME4Hy82oBNLb
	 0Hd26nyfBrRD707bUk9Blp+INVzl+5qy4aBu/rl4KRFMZzLx2HgTDZDi8bQKWvBMXg
	 g0b5L66wvS6b6MO9qVhSwq2oI2Upr+Y/D/WVum+bLpZOcCAiCqQbPLQ9lc+pe6qK+T
	 b9OkI7A8i99SilsLvDLTr350L0Tpazlh10qwe1RH7HsURktjP3aPA6nJK3CWFAagch
	 ElKz4JvEhf0KV6U6ZOvlxzss/gdLUH6EslKtPRA1lwXr8YFZJBJHhqvTXtINWJQtim
	 lpr/RVaXT5BIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA26C61DD6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849623375.6393.5494136649438666212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d015861a569746737f3b0f86e30b2d41a3ab63e30c31314d30a9ab5b461822
Date: Fri, 04 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788496233

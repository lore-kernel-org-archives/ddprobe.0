Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1D7EEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777672054; cv=none; b=jRk+f+r6JTpoB2eJqoirx6KsdEjLxrJZffBHkcjrXo8CtDvRuhdVSRlTM2fu0ELBiDU5G1WpVW3SF7kpDNC2GJn0IalARGqxmw/a3UKRkwwO12DT9ZcGCGE4OG+jF9h16HFsv/Ro9zUgIJA5vXKntrGorJuSBeUdls9+6jXEsUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777672054; c=relaxed/simple;
	bh=3q2jrZm0qOYFUfaghEouudyT3OBzd8r9pXEq7fFqn6g=;
	h=To:Subject:From:Message-Id:Date; b=TbmxI015iuMhZz01s8tPl0cuBmydwVKK8r9yCIluQ42Grxi49JI0f24a6qDrzTU2Ra/nUK5HdzZ8zXCgTCePuq1driHWrlQoYnZmG4xly7GVHzgIc4dqlRAf4RAeoDJG0nTkd1gHI0sDTRzpsH210sN15oBYROZ1TOaNIxojMpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ToeLJmmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ToeLJmmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2304C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777672053;
	bh=3q2jrZm0qOYFUfaghEouudyT3OBzd8r9pXEq7fFqn6g=;
	h=To:Subject:From:Date:From;
	b=ToeLJmmEQ9fq1o4L9yrENz9DBsEfC3jFhl5s8Klsy4Iu0sjKTkj2f5x1npyU92yF3
	 EyJW+eO4bAKHI8s44yi/SL0HItPbRa5rnN627JHjmeU9gddPnZb8ru1/2TWcQfblUS
	 EyA0CLUIjJc6MhNzzetB6haYlp2Af58Cxc2+ODPfIvSvk0ZEKnmYopCbW2kv6OruCr
	 aFLRtFOC6rafwXkOqdquehkGUOuryXSc1LdYndBjhunDaSAb3DqoKoxqnbBYVkLlxv
	 h3WBW8oEu4B5UkO44zUZF7YSiaA95AkJte8V8OIlYLiPkpMkuSnBDnIbY5y2/p2g0Z
	 gQRK/qSrUaaKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDD5CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767205369.30772.10811963993926819819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d55ff067f8fa63d6dfe7f85b4ec9cd0f837c6be3ec83c6cfe3d278a1ab26179
Date: Fri, 01 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777672053

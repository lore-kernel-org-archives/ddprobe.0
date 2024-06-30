Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7812AEE3
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719719063; cv=none; b=qPzpe+zzl+XJlgN7+UcI9PBqXz4C5cFyv3oIw29Ic4N9Q4b+wm6oZJWtQp6WCqz0TEqPRx8B9jApxlwSKrxOQqLUCCipbbJRJN/fVAidQEoUwfe8O7V4V62thaqjuysAtLg1WYIkocMNhh8eBby3ThKGjvwb7tO1OT6h8gk3P20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719719063; c=relaxed/simple;
	bh=ZIscaEHziRW9sO+XGIALuZnmv/g5mELHXxPhQKtLCVM=;
	h=To:Subject:From:Message-Id:Date; b=kOl/ue9FPJQNn62Mh6HD5XUYP1V3at9cohwlaDVQYB8pisWcYOdCHuz7GZlLF4Be+a/l4KqGl4dlMr7rtoUXeRiqsbNn94BLve74fVwZ82jiv8WdRJNIfqTgIQyO0dM8Oa03KGAri+QPJOMGI9qf9i5cBPWvfb5Z8aLmbySqiNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=um2lkdo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="um2lkdo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB7EAC32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719719063;
	bh=ZIscaEHziRW9sO+XGIALuZnmv/g5mELHXxPhQKtLCVM=;
	h=To:Subject:From:Date:From;
	b=um2lkdo9CWlzHOVfRwLMRJfWvgTy1jkjNmlsZIyFA0u+sKmnR2R439zi9rRuar4tp
	 74kEIjCc1zX2US9t59xz5MRVxcw+MBSfCnD49vnd5oFYKuGOkmsQz1a5uIR+E6E5A7
	 Wxfr6L6SMCoVeIHadw10d9vWn784ASASrGAckPtWctuPQk6P0sCA90gw5V66C46ZzG
	 yVX6oEtvlZnM70XUbDVsL0NQuiA4wmzr/GM7ForeS7n9W8aqaRtW2jrsGqIYi3TDu/
	 6gBtF1HJR+WlVxKn73u/4ddQl8i5vU7R0mseQ5Hz5i5MQPXuHQG0LM1LpF0I59lc8d
	 TMeDpDujPxerw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C43C3064D
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971906281.28967.12346996853406641746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297733f26ef529a84451d3a007fb646afbfecb3ad000a9c7e518300d42606c0c
Date: Sun, 30 Jun 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719719062

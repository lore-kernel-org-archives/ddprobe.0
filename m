Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3A66AD3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747528195; cv=none; b=KxJN3oOdj6gHefuT41n27uYTcJqMRfiZeTPI8uvCNj7at6xxuVvdgppsxapUvk3BcV+SwbkpIIIJiJJE/I6NPgWTGo6vmrWQMvTPvLH5vGESd48sjI0fuRAN269dfjGUbsK49bLIJdZB8QdrBb0vUVzsRf4siWzZa31JJzdquSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747528195; c=relaxed/simple;
	bh=G99Ex7bvQpAN5vd1c4Gn2CDriLYQqZhV8N7sqDWOUaQ=;
	h=To:Subject:From:Message-Id:Date; b=Wy+SduL3ZNtpGgnMe3Q8N5SknaUIb4MHdc/uNfaBfTGZ1K9O54Uqaa96+lYE0VOymRPJfdF0s4yc2qkM1wRcmuK32v9WlGUx9xjBfrtPEsOo9Mwim5ytZOp8Bxl4lBd4pKJeEW9Chmm0/G5oJeqL+pG5z2JAy3jNneutL6mGliY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmxazI9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmxazI9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A720FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747528193;
	bh=G99Ex7bvQpAN5vd1c4Gn2CDriLYQqZhV8N7sqDWOUaQ=;
	h=To:Subject:From:Date:From;
	b=XmxazI9GtPibjqLznOuAjOVk3+HngghbaTojZvlJmRMM22PZafCt3EKtQQM/3otjm
	 BP5UUiAOR+PSD/d09GGV0WyNAvyrPtL9rRiq+8favmYmZplpe0YGmY3mqDJpMK7nfg
	 YLpTxbZOMnu9RBNrolRZYFtl1eqSDtWG+dxnW9GXR2rkNcOYID5vvdlPtiF0jyp2MK
	 ZT+UECV40GFfdNsxuQzptWSfCocHrRXJgYcr1VPlJ9XGpngQmjZ7+r9BHqB+7I34IC
	 ehR+RJeoG3WUlbOHiUnjS+zwE0oi7U4XDJk0m+9u6IDFOgVMWJkL3pPbiffe4Ng+6L
	 KJ7rUPeYQNJwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AACC2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752819357.27144.12359644892251662687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856812b374b08131e20cebfa675073129d64da181a65b14ef585708e95f09bef
Date: Sun, 18 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747528193

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB0914F62
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715499143; cv=none; b=NuKr575+70CqD6m/B9ZeEfvZ4X3vjAVid0MTEW+CkgmF/Q4Kyx7NuPxKEJJSMJQLBICWue/fagLQgS8FxYdNFhIoWCBO3qNXXWXZpPNdjyklwmf/2Qx1kSHR+NzWijWsxI8aEF7+PJq0OenuhcggCx91dz+mTsVGyHA+GLz3vbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715499143; c=relaxed/simple;
	bh=ioS3lm6/lnA6npufJ+hgRg75FpKzbfnGxELGCKfR1E4=;
	h=To:Subject:From:Message-Id:Date; b=TESSYi4ZBkQt+djMZIj5IFnOm/1lvgi7TiByGlMmXwqw7cM7ry71tyDlgWZ7I38Svd5UaL5Ts9biyQ9p08tFHWXy/4QpdzrcOykDsWsBtTxrqAaNuv5SgFrCOg/ZEgZ0v6R/zN7cjuFv4voCHxX1HGcqprF9t2qFUbSb/UGLFMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvuqZRh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvuqZRh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45E0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715499142;
	bh=ioS3lm6/lnA6npufJ+hgRg75FpKzbfnGxELGCKfR1E4=;
	h=To:Subject:From:Date:From;
	b=GvuqZRh2HcqdQN9YhqdxhPfviMxkxiKNVWU/ndxz0O/wCSemKtizxfwWS5lqYwrUm
	 k2RNngwAxQV+I4zoohiovt+5MNhabxUhF2kV6b8ws8fUaAhZmMX4womg3Llw020alw
	 nm/eSYBzHjyGqC99c7r3Mx6vYZjrl6BCrx/ihRRSau38j/nTgs8vgRowee52eL4ytZ
	 5wS/YKBwo9nxUhglWoH3z7w1E05lugdTdNMCIuQhIRrtEOZPLoRlbGrgSNsDilI/jz
	 DTi4Def6AIZO7zeEs0/Y2vvHa1jJHvwijz5VHu1TI+KkGG2LIvdhRHoruypr7+XsmD
	 FLkJWWll9YF4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB549C10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171549914280.26256.8036181157485027309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885585b41f09f022f5b65a08ed6a219db7fd5fe75a868f20ceef92c31e1a667b
Date: Sun, 12 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715499142

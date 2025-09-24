Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7CC22259A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758682194; cv=none; b=cHhR6HOrx3/4ibnjFWkeUywcRC/8EowA+EejNUbFQHXHG5ENDFHGzT8QV7KjphORUrFLMR/eJkwar29rJQIO6yXHRVYRiawjVYESa0LSGGK9gRhcAFEjrlsq4peXYAYUztSL5lRBGA/dtwhbnCzIJGrWxLh3lNfPQQuopZlnuM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758682194; c=relaxed/simple;
	bh=nBkpqkJi8oYl4i5q2IhKBdLZMi7leHwilBKxUEq71Pw=;
	h=To:Subject:From:Message-Id:Date; b=QkXxb4vKp1UZHVaXmsCyWRKjAzmJCCQdLUhpTJ/Ec4i+Q5KQa9zQgVdo8yS4tmFqyGLy/jEtGHIS86oPcy4ORjyzKdHSNbQk/XLnKAiwTr42dslWzvaVc6NQuZMGvlz+q+AfV7mccrmeQ+VaKoro2RD5UwnNjFapZL8zyv+taXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KV68ZdmL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KV68ZdmL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A406BC113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758682193;
	bh=nBkpqkJi8oYl4i5q2IhKBdLZMi7leHwilBKxUEq71Pw=;
	h=To:Subject:From:Date:From;
	b=KV68ZdmL7W1FkmhxTBYxyQpl0tVKh8+cw+i1AkSlFaYsQY48l6jyuXKwiDEEmZi8W
	 aTWp7GKamJSsapcetvaS0YEKqZL7MBoWFLD6SrrrdEWgVYxxOJyYBae5iZhAPWoP/k
	 DPQ+150SBUOFLIa1r+H+gCZMCj1fgk7jUiiYn9O0WXNsVDbT7HpNqi635df0tEAcpY
	 LrTEXk/K8UnCEQG5fcnBasv4OKBRvVpi+IKdTeS4svm3ZFhqk4xaXY3tkvx/M+SnUw
	 Q2h8TOmzzGmtx0n/cyLrmjYCmyCDgp530qDZAsXYtROqsaMq6Ik+gTT7xDwxDDGRSl
	 NMWp3ZRSf/Qsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90874CAC5AC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868219358.32661.11181234768617639967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724b3a38a39de1f5ea8ba86b5de05c3bd1682e32c1e2118b2a03573ad338aa05
Date: Wed, 24 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758682193

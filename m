Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2BF1D79B1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727826354; cv=none; b=gLMGcJ7tTYtbJmV/g87AzcRVcUfx1MgEcwz/neODnWDTDdi0ErqKvdctSsH34YAFFR011zXVM2i1F7w/pL35GH+CkU3hJXPmfK7BABI5RCGcJoEv0KUULbsbyX5OjOYJm6I6rdzN8E39CsUJTI3pxg3KhObklcyyC5pxeSgmOHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727826354; c=relaxed/simple;
	bh=chdbo7t6POnUITZ2LaOuRNAbWFGgNYw1nNmndmqZpss=;
	h=To:Subject:From:Message-Id:Date; b=h98ie3YDPPYABNQsPS2ZsEjXj8rVhsopDApkgzOnf4+Cile4QPeAuNx7h1IubEN7wNHAi2rcZMkWskmNYrUW95bEPXkBvCfErNDOsrxT+pUK9x+j5f3Oi4Ju3Y6fi6tj7WA59PdcHrctSEjvOBC0FZrRHJ+Ws8IxqUGl714GTNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1C/+Aji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1C/+Aji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EC5C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727826353;
	bh=chdbo7t6POnUITZ2LaOuRNAbWFGgNYw1nNmndmqZpss=;
	h=To:Subject:From:Date:From;
	b=Q1C/+Aji7TgB9wjnSqVkyHX/uHVRwmkOlWUeKzXPjQKvdlnUn0TIEQo2TFFvK7+7J
	 uXvgUUIbIQ8c2+VeuJU5TaIUaDAPwVy9lMWO024Omv4ITR0PxZnTaOM5J7ufUayZfQ
	 Ufl7nOSf79d937OC87hLYLGwZSP7rxbNQ3mTuY/uSxc2Rno2wbjjwxjJAVFbYpGB6V
	 4EvZ2STO+/pxOmH85tb5raJRcT6z8OXV4ucPC9xLDlMIw+En6MS4vccCAXQRCdcwci
	 cjf/HGlkxy0SgF8EQF5Bdh8cMF+UTXL2m3/d0DtHQhfrOkvjGg3MJAiZcGtC0yBvOW
	 //N8ZwfxORMrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B15BCF318A
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782635362.28909.3036659335206968605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0316a38848e752b787d6c6c6d4c560634fba77fcc5c8004278cc9f91fa9818
Date: Tue, 01 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727826353

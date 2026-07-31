Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529294499BE
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785519034; cv=none; b=dtxaLUnxwfchydIDLltjs4IDOZ/E2gNuvoV4KvSgJJTqP0V66fy+Wqp0DI5DKe6lwi8wBFUq+fMWJ7DFuSHYZaqOtqAW+4zOp68c6t0+A2gdo0ufwAa0ujY1vydRKzjdU7H5wllHOFtWQMCog/cbrJEDePBkjUPQqnDSnKUlKBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785519034; c=relaxed/simple;
	bh=21aR9h4ds0qFNmGYPID61w6oeTCC95WG1+L2Mnvc+Ko=;
	h=To:Subject:From:Message-Id:Date; b=TvtinwJN7v0MRsq2JsMWaMHBxa2IHUiayKymefRILQ14BDP/D85brq7TuGVZtxQ43jMNGd6pPAI0Q6wOyE64rPlIKdYr2B6q3tMIdNQj0iDYVfk16hbnPFMgzi9DofK1DOL2Xpq953jfXvOoU6wessGWXygnXQ6El591kC35jzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqtvlBlT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqtvlBlT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2F8C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785519033;
	bh=21aR9h4ds0qFNmGYPID61w6oeTCC95WG1+L2Mnvc+Ko=;
	h=To:Subject:From:Date:From;
	b=DqtvlBlTBTBqrCCoC59Wl/o6O5LPI+Ei9IoU6l7hiNb4YWrcRTx3w/dmL6e7lOJBa
	 4USN2mwJdLGNsCzDnTct5qd/6seDyhVobW0Xn9SPa/6AlbbIaG+gOVYsSZw2Keqxxk
	 u07L+lG8h9+dMjFWfbE3HyeyVQlz928i3gmPtki9k+xBL9tLoH1V7jnWxbEqyNGhET
	 NVoscSMzI8WlOSx33jUkTDZBo2kCshJ8TzIm1asrueWXKtUVtpGPImPi18flpoqutd
	 5zXVV9OnotVNip5SB6KlhsxdjhcqZTdJWX8FKieiXSs3m6gzBShJoz7VFbPCc80vK2
	 SF7/4yT2a9Zcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90BAC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178551903368.29600.5874122062176882074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e44a24d52cdfdf9cd7d8c481d6fa6ecad54d95d934403319953b7a48596587bf
Date: Fri, 31 Jul 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785519033

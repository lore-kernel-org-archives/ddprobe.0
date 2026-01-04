Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB432E2EF2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767509034; cv=none; b=iAtqdLU4K/lg1F2RJ/gr/sPHyKPkH+ef9kK8lzIDFKTBX6j1sdw9DTxp+t2h/G1YBjjC0TYtPK5qCwAk7nAM/j/+ddGIcQyMy1hGAU7iSBfxqhMBzv5T1KQShbHAGlQUbBeSj1CW9mRfyhYwBfKUJd5TaZk2/7wIrPwD6EjnL8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767509034; c=relaxed/simple;
	bh=W6mLxSzmFX6XtPpVC3XeId+wplGYQj94+xXkXW+Fsag=;
	h=To:Subject:From:Message-Id:Date; b=t48ZDMQ/qMhGtr4Kf+0tT843hKsbrjMpwnvO1wNXgIYJ+OuaS6lbngWzj2t3ZRGDWp2YlOAJMQ8vbHfYvaSaW2XFauvcYK3p/NEsH3sdbMfzr+cqWgwr2oVqmWQXeDWrJUAWwpJMFXqezvVDFVQwomyBKNE7Y8k8vI4wwyk2RLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0r+NKJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0r+NKJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4986C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767509033;
	bh=W6mLxSzmFX6XtPpVC3XeId+wplGYQj94+xXkXW+Fsag=;
	h=To:Subject:From:Date:From;
	b=Z0r+NKJClmVjV2gN1Dvip9J/rs080nPNYtQns8N07ZKYTMdlqx49YYGSnHoPQ8Fos
	 JySw9mfkcEByfV3BkgaUb/qmagCuVH83/faAXzD+thN1Oi4MivfpLi8Qffdszp0N/L
	 jbX3fgphva222TyaLB0MfB2xwgAA5C226gcfm+GA+npBBOPKonqdXNZO47BzZhHZ3B
	 TZUEAcrjDg9FjWfyPNRDFrcNbWb9lgNO97/qV3jnivVp1a++rVgYX+2ob5CKg97+ZN
	 i6d2L15IrSxy+NtdE3L+FEPqSZuFMru+GEQkVVGoBlnU87RBq5IJvCYhoFSQd9Bkc8
	 8qKps3m7f/hxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EADC2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750903358.31006.15429152455434174095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e10ab9c1f25823f28ad18a3e098ac18d2848144f1861cd5305cdd010de5c644
Date: Sun, 04 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767509033

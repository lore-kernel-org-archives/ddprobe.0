Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152DF2C3255
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770335634; cv=none; b=q1YlqF6sgdfXvyn0Ew/QKqCJ4Q58Zj2CoUNFrYQrp1apu3sJWXc+yqfadubbhXyOcY0TNDC6iC+wB1yaanmk2ivEgcjcc39781juTP86KBPX0sZmVAFFxvW1ax4+jfsus2t1pnh842I5YLqwPb2r68+7Bf8THELfBzdRQOmNguc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770335634; c=relaxed/simple;
	bh=4B0gY33kRllm/18FNO+AMxK70rUpJRPi3fZn0fP+Y48=;
	h=To:Subject:From:Message-Id:Date; b=cJrizQa/vVBmnSm9KRmFlsi6MsoFB+9Dfwdnq0GBriXihEoEkqRpQCuULFsugQWMEHhwEY9C4OPOdWOjcNiUUDKWikBQ/n+H/eFUFPqdKQWkv5QV6D9Uo9dmURrbv5uMvF0/4C0hZBf+Je6jMyaBFfhlqugX8FObcDjUMbkKNT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udmT76pS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udmT76pS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A940BC19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770335633;
	bh=4B0gY33kRllm/18FNO+AMxK70rUpJRPi3fZn0fP+Y48=;
	h=To:Subject:From:Date:From;
	b=udmT76pSFOMJBNU4n+Kw614Yd7pIR50BXEaj/Wi/TPfOs5UADGAx7/zS/L30EC0tg
	 05YG7Ze5YwyYsal178R4BvZursG32jkw8HhURWpTI2HR+WPkcDPjYe1zkOJnDczzvl
	 5z0GlPciV3/rzw4+e5igUH88FJR8RTTsPBoj0xlP1bGu5wamlqqNTIOWsENyDFLut9
	 Nk1ryVq6ZfYY4SMlTQ4mFtlr5olIupjAOM15/nnpfG7RlduuXOh5/+EQiyyov2rimY
	 t8cJt3e41Rj0+ddqQw9vv5XfKoHENGPiC4Xc6YV82bYcs26JFReX9YZR4YrRYm8rnu
	 99L2oYQ0OSHXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96239ECD9B5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033563360.15209.41985384561304601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c4b1783b4afdf605758611e8ca907bb69017bd2903bc17744cae31199cf289
Date: Thu, 05 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770335633

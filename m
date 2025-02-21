Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EF45223
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740165534; cv=none; b=gDI9joJRQGIlIb6OuflX7/JdeJG9eLVi9dkxm2i1G9Qjtz80+3usnqdrYN3i1/v6Q35PGIJaWBb6XIVfkKkDQ/sy7rKhqiwwV729jAlOOTZsTHkhVaAjZPiUuplLcD1DApZj1jNgpLmCi80bgHqJ8mdAsPWWCLYi0XNx4u6mzu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740165534; c=relaxed/simple;
	bh=jcDAgKQdso1fiHmTCJw/OMTLmBP8n7v5BFvAImP7ZiE=;
	h=To:Subject:From:Message-Id:Date; b=bAghfBSduFF49nv84kZ8tm74uZSzZktuNfknEGM7b+sipvhcob4o5pP0SpTz517Tp0SWEUNkaBYuGEzXHaevvPzWSvYhE5T6HvDMh4/vPCwAu91NTqpDLjprayJMCZcTNTkmRu2f6n4c1ex3dDn02lCcMCN87iYMYMeIkPkCwpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQMm9Bc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQMm9Bc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A4AC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740165533;
	bh=jcDAgKQdso1fiHmTCJw/OMTLmBP8n7v5BFvAImP7ZiE=;
	h=To:Subject:From:Date:From;
	b=GQMm9Bc3/rZQoyRaUdcO3ZSeOiCRW3LfDnzLfIO8TU+01Infor+epq2xMnqz8Y4Lw
	 LQx2wruXkx6CHLYaKVQyWhF9flbB3seCs4OX1u0KLKWNlu05zjiIk3d3H9YL7ncN42
	 580+CaziLnu1Io5i08nIi5VqQWPVaRL/xvRxgjyJwzLY2Vo4cCDBc5hNF5ox9Liax2
	 TNjVw1+nq+GlV3GfauhxNl3Evb0SKyqu1wGgSX8O2WFA3GatZ2JJfPdpxBh34+Z3jF
	 UT/+mDfrWAIuRzMA3Z/NCiOzJGCY1X523g7YLhMvOTWRR+0IZnft8qiZvB0qd81Q83
	 yWVJ5CGZtj6xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EF02C021B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 19:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174016553364.22452.5007075543233201400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebf073caa9a8c377331d30e93346176212b321d2c7334fccc1ba95e70045a5f
Date: Fri, 21 Feb 2025 19:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740165533

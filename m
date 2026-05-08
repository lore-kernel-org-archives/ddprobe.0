Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435B4378D70
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778249254; cv=none; b=NXWloTd9mm3zXVIrM+JnWRqNhQoYH/ZDfpLisZewe13Er73Mqy5SFA2gfRhWVgDrdocKTx5chyg9HOTnsW6CjFj9rF8tS5DNfsWRsxObY31i0bD05ETsXcAoQotRilQOF9g90596YGlggJMseabbC4RXhxV25pSHzfbcydnf2LY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778249254; c=relaxed/simple;
	bh=sd/3vztVB+SI1khffbry7bV6amTGGBb3HbKBsvGDUbw=;
	h=To:Subject:From:Message-Id:Date; b=DYRHPNjT0Xxm4DZTvEPksGS1+snxemb8DeBwwuFn89vomMYQesykmeN+nH5OO9c80ll1zprlkkJUJSzvok3+oUke6LhOJ+E04loBnI36TW7cFXtG4enHCKa07WCPidlRp3JGpMpICp3+HXxCs+JsRLtmnKyDhUHUPTExT/ZuvI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z56L0n0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z56L0n0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80A4C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778249253;
	bh=sd/3vztVB+SI1khffbry7bV6amTGGBb3HbKBsvGDUbw=;
	h=To:Subject:From:Date:From;
	b=Z56L0n0XpZ7qUfDS3JeaXpO6TV5hzDQUqgwutC0T/HRvnOk1hu5B3mNkusiQGNmEn
	 lwJc6qaw878biv8IUVmuSUrRaDZIK3xkf0893COvBsvd85IxoTlf0qsmdSvzV++RD3
	 Cw+pivYNsUe84cGjhsbJOc0oIGJGUCwSTivsG9my/kSQb8lJ6c+C/AELP6n30+jSGc
	 J+e1kkNYnyHzb3D0CrQuSfwscwdikLd3gbowb+5LggfU8rf0YxyEtYxoSNqE7Nw7aj
	 oh1rj3fk0TQ6qu73JXMvYHLa2LjIdU88E0ueNBEY4UcV6sMo9/a+PB7uChisyO+jS5
	 MHvCKYGh9Pw+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47E5CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824925370.30927.17906049232394405337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c11a6c64f1180806dd19c6b68b54cb82471eed1870b7474bfb945981800a50a
Date: Fri, 08 May 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778249253

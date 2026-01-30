Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167C51AF0AF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769744634; cv=none; b=hbE7vSQ5b1Xu7HqTlPk8J/x1XIuzG+yTQ3LlMza85jL+fQcHwVEcQtNM73FFwFQY9vdFCYUJRpNU/sTsctG8Kw1Vu3egiCs1/k48/OUpl21+wypUgf0Wcyie7+igkU897fLU5uz0k3D7B9aJoIaLgIz4Ckaig4AkPBJnUr5Ji9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769744634; c=relaxed/simple;
	bh=rBcy9v6dhQJ7ZbQtOC/9rR9/daAu3ERk+LHH+HyfWno=;
	h=To:Subject:From:Message-Id:Date; b=UavE0otn8IN0Tv3y0A5Pjqtak8m66d6yVsBe0zf791Df7OzF7TVkXMu54bNc9wLru/fev4zbAAS311eNsMjhItZnVdeJqq/TJKk78N//uenqr3dj2bqsMZctcjlc0/4LDGqhL3T9he4yaUqqdp0editZ0dTM2SvZlE75e4FGFLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exF8vSYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exF8vSYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAA1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769744633;
	bh=rBcy9v6dhQJ7ZbQtOC/9rR9/daAu3ERk+LHH+HyfWno=;
	h=To:Subject:From:Date:From;
	b=exF8vSYE9lPC+NL4d2fVyXl98adRm8PNspyL0PgRFtktlF7+JNZWJ51D9v6xLrPEe
	 ycR5pvQjs+DvCY+5keYDR9aI/JL8EQgEw6YBKgqvgHq57NFpJ+s/Ar5SllTtdhyIUW
	 3W6UVLh6GAJxz84MzhERkmdZ2WQMUkZCHq/hPr9RcKMtIIqaWzk0nmPIlR3SdZbgJ+
	 3CK1wcmnljeC6Sfb8ZgljLXmtuflRW2EVq/+35rwc9cS91YPrld1XhBouz5IN2p2Fn
	 BPhicnH1BM7ZR4GHBa4J7OPODkz4e2nCtxxubvf76FlYRJ68ecwx69f080pMwqLVSv
	 JVmrQCpn1VmIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F57D73EBA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974463362.4792.12517707638302879466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ae38ce420692350d89649d50950598c1e5e08cc94a1d55d51fae7f8b0c812e
Date: Fri, 30 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769744633

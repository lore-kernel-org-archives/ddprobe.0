Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB5414A4CC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756017594; cv=none; b=n2g52szb1a4NFApPRThJey/B852Ar3Kma5jKGC704EKC3dJngntH3poEu+pWGqqhMD3aLYKIXEou/VpNRdekZMU4cDjAKJljPPJ0gSJNb17dtEsGru9mLTSaGfSXBuzUN48H4gkFHscBPvz20zc8xVt8P5vrLBgavsh1/e3cHIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756017594; c=relaxed/simple;
	bh=oG7ybURce5yLp57AxZP8WV6+XHlsas6++b6Kk/f8OFo=;
	h=To:Subject:From:Message-Id:Date; b=n5ZOHStXDXWTe/nS4L1Lhq/3PleJChXtUS7XS/jIcxFm3TyIeLOcqLOww/mEQx6TpD4yDJdSD0ntZIg8jeZgZ4EMipzTY6hHNJSPipr/8cn+USmQarw0RiQ3IyTU5WD5KdiKJERFFlmfluiEANinhwKSRZpqBSd4MJLZk5hJFCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKeVHBCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKeVHBCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0559C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756017593;
	bh=oG7ybURce5yLp57AxZP8WV6+XHlsas6++b6Kk/f8OFo=;
	h=To:Subject:From:Date:From;
	b=uKeVHBCQgJXUzgRwxz2Jd0UQ93hcxlDUm7Ch5hcLhv+C+nozzMdOVMqfn3DSBJbBN
	 Vuib3Q108hB+1FjCS9JHnlgbLwXeOuGt/iRYj6kTL730c/3JHaVZrmgT76CP2Zattn
	 xBFDYmoFj7ApUh1DgZWHQ73iO3Q9fm5J/7Zdd7IvzETyCf+x+PDepIjB/+vmZrv/Qo
	 v9jL6ev/2HHIOGW294Mw2eHrf2GT4XkEvbkmScJDUk6vC5NVbBrOMuGeTDK0W1APeq
	 pRr6E7uFhKkpG5fGA4ZEG1rGGdu+x+GoMX1EaN3q3NC0Im/chWZA9Wh2FgPKMSNAKz
	 /jKU5GT+AejwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B9CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601759357.2558.13224958989237842442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88738e007e54c90c559ff24a39c7d53c06b931441b42f40aaccc6e4707690d4c
Date: Sun, 24 Aug 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756017593

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B811C5D59
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762096194; cv=none; b=HwrYvlkZzzSh23FPHpU7hmfQ5EApv/o/55LD3c5I8VVuWlsLPJQF+Uspl6/gr2iwum5/KE19Xj3EiDfHTHf3wYWUU3UeMnXaEXPGKweMZYJJLJqNJD8dt3ymCxkTHwU05DSsybEY/ZqFMkFzPhQCsK9FYpZFiIm1X7CQ7A847WY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762096194; c=relaxed/simple;
	bh=sKUVJCiq2usuMnD+Jz1t6ZMWeJeHx/6MAhgL05wTCEs=;
	h=To:Subject:From:Message-Id:Date; b=muHAI8qKnGlwe2s8BRerJcskKDSWczN5w6I/gKwqvU3z1XwMI1d3IaGRJoz6f5YUOvRBMTQUaNSlDpYXDFJn814k9h/lWGAtpFrQbYoG5y72VKg2lXbFmSGCekKnmcTJ+yprOWUP4TAtRpcuZVZGPaccJTTVU3/iNBxUEu0Yox8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEQv7G+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEQv7G+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F03C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762096193;
	bh=sKUVJCiq2usuMnD+Jz1t6ZMWeJeHx/6MAhgL05wTCEs=;
	h=To:Subject:From:Date:From;
	b=oEQv7G+qmhoksBfsdGTiBSeieyPCCbVnCKHb0Oi/uHWhJEil9B/v3a84S28ghn8yL
	 h05SPxRT+KyWhlBx/9ZNKD4fysMdnMkxSfkq6sSPcnAIuTpAEKo4kL7TBx4oks7809
	 uc/UEaChD0bx4OlulOtvfJ7QTOVqnzqTCeLZcIailcVkWAFoVdqRXl5zFthHgJv+CZ
	 Nhcw8f+4Vej3JCMxN3B456Mmsp4DeqefStjz4qXWUIouIR1DrGg4D4Q3XNZshXUlsb
	 aNUc4F8OZg6/cVO8KPu8QXQ09cevRSMoK3T0hmTNskmnjVUSTvGXrmhHywXMIibkcL
	 H2OpfAMEKdXFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97998CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209619359.24930.18396280670294331019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6d491bc640e70d7819abdc487748d4ff6f37617f30ac509d9a684a7ae04ab5
Date: Sun, 02 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762096193

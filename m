Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F38213E9C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781085334; cv=none; b=Uo4KWXxjsIMvcAMK6Ay+H4d5ymaMqKefX8k9T2P/FKeps1uV6hHe7kqq94lleH1LrSxbGDD5INUs03KnUrCCNQbke2OPrH2LAkm/bBaAxvMTxADvsGHoE8MAHMZZmYvGPJac7Z0FOog5p5wr4+fHntYu4H1xzDwFZAujz2w7ohM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781085334; c=relaxed/simple;
	bh=1rQwNJOytUtNPoSqvHF7rBrN+Et1N0VlK4TJwpR5uAg=;
	h=To:Subject:From:Message-Id:Date; b=kvHw/XCoF6upecEm2GS0lq4LGG5eJS0TTGs2AW3j0jPcBgkIQJQcxgTN+GwJzegLNgO2TVEsVUB//tKx7DvJDiYdo+c7IVgijsvR+VeRpbc5VDSXN+0Qob4D7bewO/liyf9iucpWKGYdUL6RoHhs+prgk9ijH7yVcl3wMhn+Tx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r35M7aFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r35M7aFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B7CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781085333;
	bh=1rQwNJOytUtNPoSqvHF7rBrN+Et1N0VlK4TJwpR5uAg=;
	h=To:Subject:From:Date:From;
	b=r35M7aFZg9Sbx60l7bJD+xtFE0ewvjWZrc77f1iTLCaGKmlCJv8R7Jf6nY4RuDiIP
	 Ad9XZrEaDeD+I+h9HFhKlfUnlEDpja3jT6Ob0Rc3n44uqDz3prDGULTOffhYZIj8EA
	 FlY72CkhTPJufIFzdW+8YKyvtFGfbPTH/0tzCURd1Lul4BOTrznLGiVr+fIvmMuxmt
	 p6bc7d/yIClv/Vj8dncgH0i5uCndcEDSZ3kTcB7eTJ1Jup55PO8bHvHq410RiuJlUk
	 9sB2Pbo5H7rBxrEnVHvZxtA8oU+5fzjdZJHEueOUQVBFqhdRBCP/eTu7SACPp2N3N5
	 5o84R8P2FcY/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D38CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108533368.2225.21724043427845813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10597dcea9d33f8845638fa48f044475d4b515d395d5e4be4410ba5a52acbd90
Date: Wed, 10 Jun 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781085333

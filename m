Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1028A1A23A4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779726754; cv=none; b=jSr1PFWeomCJCIoDPRcvwcP442GditT0mj7/iGg6UbYeoazrHW6RLqbpFDgrPjHgW/GTlqX8mA8TMkyw5oHM5ptdGPoBQar7nDGmtGLWZ1nnIYbdDm/HAtBcCtWwpLrZFJazIjvnXJIwLmTDlXxbq49F6n6T+Hu7wFjJV8QeKF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779726754; c=relaxed/simple;
	bh=liNnKVDO0MWa/8EkxdvSLd3SKBjHBsWYXXIfCMOGPiI=;
	h=To:Subject:From:Message-Id:Date; b=eN+G4PYJFebZwkUHqKRG02zqSJGsfpc/JiFEi+3Wzt99FjC8HrQs0naweTqoz0bQRPulc7nnyM+8FSPR89Xaz5FDWpc7aTN08AjpSqTZ2OO+eKQpJg/hiOmjvlxSisZBxPpq4Az4VBU7rR0f3nQmiCdr80QQvySgIc9k/gfkySQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE7D44dA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE7D44dA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C429CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779726753;
	bh=liNnKVDO0MWa/8EkxdvSLd3SKBjHBsWYXXIfCMOGPiI=;
	h=To:Subject:From:Date:From;
	b=TE7D44dA08HRzyfjMwJtytV4GHUim6rbkC+QCupkapPMBzqbVoIYDbtiw6R7Y3M+6
	 Z73+i/j4I/g3kFMQmel6QEt5+anY7n9ifGnV7SoOPRx+DGYRORvjxG8ds5e0eUjQhT
	 omOmTRCNdQy3N7k+iR/9hIbuZwusJqv4XgH2jGSvr6IrY2kwVPhrIoBHapf/JGOI8H
	 LQJ5SFWY+2ZDVVatn9JDpy7O4wl41w2b4QPh1+oFIexyRZ9/tdfJs7bLVUS17sh5mI
	 ghrPMe1/a6+wry9iTpYc+BI5saRyG2ESUODEx3NYjjr5Hut4vmeHnS/FjnTqDlqeJP
	 stktthmy4k7Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF2CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177972675368.11068.1859556090074838656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b0b2895312bb1f40f1be66afbd15b93cee2af2a406b7872bb46e0180c4b0a3a
Date: Mon, 25 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779726753

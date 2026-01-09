Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB74265CDD
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767987834; cv=none; b=jjDSHASWI1WwapX+rzSKXv4v63lo916TsxC+FWpP2/EsCjqxIOJn+Qp/6mtJpQECajBxsWXmnmli9VA4i625KHsd4UBqBg98+DS9R6jPRLabHgsr0NrmoRVlhbph3AdSkCV2HvEmQZ7JzXrWGdPpoiWG9zMJCLgcxvvzBxQeqDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767987834; c=relaxed/simple;
	bh=atD0/M+2iWxQT3/y3ICrmfv06F2OsMAvOg/ymwJIPE8=;
	h=To:Subject:From:Message-Id:Date; b=eUdWoqwVBCfrl4Ig5L/JCRq9ezNKrT2c0GbD6HOi5cs9t0EpKTkhbp0JkV+zV76u6DdvMICleOnf40fyr6cQsnK/4GRJQVk2t0nRo5LeAtRBiib5b3duUc1Vr/EErbPh1dcJN4vEvBxi8JlOUp+clJokoAta4IXQoYEzy8K3j/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+W9ACS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+W9ACS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D0DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767987833;
	bh=atD0/M+2iWxQT3/y3ICrmfv06F2OsMAvOg/ymwJIPE8=;
	h=To:Subject:From:Date:From;
	b=P+W9ACS6sLuKiEsIPNfYoDuirHZD67fDUvQDgoGTmwmaIGOXKKLUlYoVy6PcYHRUC
	 r7jlZ8xgWsr15CoWu4ZwSBI9+pszvlYCyIj0o6tPtviTzGgGIqGrk9h8gjdAVxgDW9
	 tGe/VgBC5+eSNyJD78jhJq7MiF2UUoRm6S5xQnBmsde1Ye5H+ZnYXMaN05FMXA+9QX
	 9DhC+g92iHWb+iuiGQNp/Z7lzQJV7YSYo06MvSueEDw7sjmSj/nIgHc8njhYYzLX3X
	 T0jsepmM2wciME4YoK7qWwUahxMF+YVeTgajdbGh4Xk13b4EQNiUb0UzbN+hy1h1NZ
	 zI1ORLgYwcPTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9371CD26D99
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798783358.23321.16600655906179322307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b421929423f51c8eef98516e1e545f1a624d76860d09e5b908ccee62e76c84e1
Date: Fri, 09 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767987833

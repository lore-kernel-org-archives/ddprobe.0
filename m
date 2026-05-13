Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE463A5E8A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778650834; cv=none; b=MHd9n4Jjp2GFe+idwX4Lc3SRhIwTy9DhJmWxFXws4Emw+0+GVDDV4dLriyCwOsE8jK3dOcVCdqQvN3Cf3WMUfRD1cK6YtdZBba8O+9j9e6CcwVjLVyfljyURDvofCSaweoDijqWnDUYM3o7HZThVAqHwlp6F6RPUfHW11CtKjqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778650834; c=relaxed/simple;
	bh=SICFD8VlvCwe0x6rCeFOBtILfj5qQEXyKlz5kjxgN4w=;
	h=To:Subject:From:Message-Id:Date; b=qzEpATvMpIZJFujClCRO23T7NjIWtxzsagmoq/544zejGJk0KWtzJxdp3mzt1KOKFm3++imI0VwJ8KGWLrpJZuJrEMVQKcee7jBa4RgsqUPmYrpmpHXbUBh3NxnNvvY0o76MYw6IxkFesvkbtD4vqwTpGMKen6lbIuFj4c49Fgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kY60q4EZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kY60q4EZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A03C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778650833;
	bh=SICFD8VlvCwe0x6rCeFOBtILfj5qQEXyKlz5kjxgN4w=;
	h=To:Subject:From:Date:From;
	b=kY60q4EZiLV7q6TgXa7hWhzQf+uYXOYC9Ui/TCXlcr3KYs6eA2hSbs7Im5FfrQ1yl
	 e+nUAtFmuBggx8AU86sNrkK3Cf4l+D7x3RdX/yAaSuUoaLUF/TV8A/Na8VuBqcIYdM
	 akUg04BVEN42bX4IcXz54a6glL2TURJtCNl70Lqj3TAT6/uexGv1uSYUuhSa+9C3Cu
	 Ra1/Z3hzkaD47S/iCl0kwYR0O6H1EITB0K5Aa///dC2NJuxvdy/AMN4BYWBToXFrmA
	 KzabTYj9uDZ7cKTMiwinED+bPXPzQ2zyfAcew9mHRiYlgb77OsxQ/Jb6X1FOhoL6ld
	 AYcCH2fCneNAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84C3CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865083374.16207.2773172560579357526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364346d5b8668169369649de2b1e644eded69ec8e95b2d721c39447ae09b5fd4
Date: Wed, 13 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778650833

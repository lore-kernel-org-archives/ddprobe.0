Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E417BE46
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753634394; cv=none; b=d3Hd+8gT92Mji9Q0e0dzaW23U8R/JsvNwiJ+i9YIyhqPTV7JmD1TpgCMOqMzkj3On/9aoJg0HhkoBAmWjM9HKcT+Ueu44wIvXd+Q2FbDd9mK/dWqHxkO1F84KtUJT5Nuozx32xG6gC30d8KIxhJ75yeL9w3cL36FsqqU82m3Zrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753634394; c=relaxed/simple;
	bh=+MZ4Ay8ER0yiyHaciUYqWT/ppjHGMi+ODJIN8k691Kw=;
	h=To:Subject:From:Message-Id:Date; b=YJ3daMD4SG0Drxg6rQM57Ll+inRkdzDL8uvcXkkqicT9oFSrd08olw+ZtTZdm2xHaQfi0euKngr2bE81Zpxsjk4MNZ+E/Rgb63fXSQFqjWYCSSxNQzx3ViSYPaGvCOWOjypTqq61XChLPZIISJNoC7ZA/zKGFINr3atlqaTF7ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq3XKpmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq3XKpmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4433C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753634393;
	bh=+MZ4Ay8ER0yiyHaciUYqWT/ppjHGMi+ODJIN8k691Kw=;
	h=To:Subject:From:Date:From;
	b=Zq3XKpmcSxeFc3po22dQepWpghcJAmQJhgpoCqIhlIMp+XL66QP+jiUrctqR8ZemX
	 Ez1fOA9/rk+RiTBBNhEKYHACTm2v/9AWb5f9vLPsgyMAfBBHIF0JYR11i4/kDI7s06
	 XXmfh4fU2/FnpcPLa11gRO+Oj4VUYJ34GCXoPoAfSnAVYs/SlkrL290xCheWmqbUdZ
	 vGKcsZVOub7W29vHpyhOKoM8vrh5DvA3UYofNFb5i3fbzwTK3AQi0nYdFCIZqCTHxK
	 rLa//hNAXueOaiMLVCP+rm6mHQKCa2ooyNWCWxDbEIBSpTZRuxYYwus3nKSotIkvNR
	 84dgiZS3UuskQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012EC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363439358.28754.6708072137595110041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0234ef613da739407b339c7e1a6ae005ffdd8f99682ac60e36acc305eb4671
Date: Sun, 27 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753634393

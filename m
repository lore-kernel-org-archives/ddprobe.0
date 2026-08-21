Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525A62BEC5E
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787319034; cv=none; b=Yo9Qei0k2uXFr7Tlm58rutHjX0g6ejhufdABVPaUpBgphZDMBAMpWtnaME4mk8Kygg+YbV5qThJ8q9gB3wfa+KuILFLdiE0VySIM3+z4XV/EgSpTYRSPKM0nWxeOSpAyM5h3bTQ4vbB0pBIbboW8FnrqbGjjV59gxBClUwiGp3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787319034; c=relaxed/simple;
	bh=cM5MY+uI2BrBVgMHv8zUru8f5v/PLqAEYxGmJ9gxqZw=;
	h=To:Subject:From:Message-Id:Date; b=qo8zFQrPxxlsD8sNgWsT4Cz2sgervDKdLxIIFPU65Nl4U5G9tiUUuwMr2hq8QbPGV5CRpAF18017vozcYV6Wz/GRQdGQa/AOf217Kcsitq4BvBwumVAY4TtSKiexprl8KYo/xQKyJKrdgXIHK/rF/xfPNSKTwUq/A+o2tW4klYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kveUd5Dq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kveUd5Dq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E99C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787319033;
	bh=cM5MY+uI2BrBVgMHv8zUru8f5v/PLqAEYxGmJ9gxqZw=;
	h=To:Subject:From:Date:From;
	b=kveUd5DqH1qKKrnfjUHsKWsKM3sTui9qJunlK2FZdJTQGZ7RTTrY5BD0oQAuKzZKH
	 or5+/2uQsgKdlshz7XjrmqTrtGjUBn0wqAaGEiivDoW3vub9Q6igt6TY5XA+FH570K
	 Vu83/kxC9AlGEHC610wEyzM0f+KjQ/JDqmNKKnPFVFQFxmnnSDbg0kMR3OR7IF6h9I
	 3c+V82vCInRyciHpXP43u+/X09EvdnwIRlOAlH6iQ4GZP/YL8cZCSOffUzfnEnONBh
	 sRRJmdOtz7yQfCZo3/WQ8kN4QI9EEIA3FFsVa5A8JgcmBrLnI8BMiONgtUr7wNMaMq
	 AzF9cbaReTHAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB77DC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731903374.14936.1881536478788549250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71de04de4ab715d7a8095debb444b12e6a9c20bf523124b1824653b7c096a36a
Date: Fri, 21 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787319033

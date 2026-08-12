Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087F9384CF2
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786548635; cv=none; b=pfL05as3ZpcdZ8yjem2Or5JHCRN2Gydg9U1Wuorv7sAa2MHuSHKre3Voz6YNu2fzGRuS3RbRW6ic5dRSvrajSNEbQUXVh28P1DnRJmGy6AASgnzrUzLS1g4Chn52wHHum065qIlmpd44gsvM7Tj1YxdQwGry81gsd04FUaDAqeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786548635; c=relaxed/simple;
	bh=hHxNA6k49bFyUt30U/hyTsZHHuvy6jocF8KHIYp6pN0=;
	h=To:Subject:From:Message-Id:Date; b=qWzmooYIo24tIQTuzmvkjsB7xQGfcpmneuNQ65EiUHGjeVbEPmiyIGRLdun2Gx1W05lrZktNoQRsKSOuZY6KKYn0KO9F0oJXUFsNil1gwvFmBtZ9DH6i8AH1O6OiRzLmqo32Ghp1yTFJ+pVB1j3ZthB8QexVgmiOKbtauTTQEyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8EsPplQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8EsPplQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A99C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786548633;
	bh=hHxNA6k49bFyUt30U/hyTsZHHuvy6jocF8KHIYp6pN0=;
	h=To:Subject:From:Date:From;
	b=O8EsPplQ3I0Zj21rJnYH6MvAK8gXviP3O5x/2O7GRmcPSlzI6GjJzPgzSyiAqlfwy
	 FQESITVIlmeKYO4A16on8EovNgufXv4fy8U5w8QhRl7gaLGGrj+oIG9wEM/G2m8WbU
	 T9MYd5MjOkT0/gF64kzx8Ovi1pMq+VDOX5nPmfUBA8M6zqrIa5fOThW3zGPgjZaFj1
	 FdNQxu+ambei8b2diPFSJFdy91nWernJePzs2HgAnR0weg2avq3+tPGhiyS85vPr4C
	 3QjUSTU5zM92XnCkTvsevdUwoosolEHYus+cEwNJEQhegGo9ebxRBphSJxTVr3OmCX
	 +Gcgh/xV1Igbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD26CC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654863370.30960.2401366485285654493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fae5e66ab4ebe000c57c42fddab12ea9a17b430f25efa7a5f67b3a5e4aab9f6
Date: Wed, 12 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786548633

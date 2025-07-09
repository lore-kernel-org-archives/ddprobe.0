Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393772222D8
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752081594; cv=none; b=T6JLfyu+2OErO2w2aAJNFHIfIYljGcLqFDDJUIemU9qGZbVbn4rtAiFFuhNtxAZ0DMuUkI3cjmeEdHLWzAux01yvWdDINGdzgWgdNSYfFERVu4xfA23lfJSQmVi0b2DWFtxaR2xd2RUem8vzi7gPQS+Sr0xE276qkJiiUJIAr+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752081594; c=relaxed/simple;
	bh=rdcBoWisjXKVALPaMzBO7WPEm/Z4kw3O9GTMqrrD6VY=;
	h=To:Subject:From:Message-Id:Date; b=RQWGiREzIYmFEPDfCNQ3/i0+SoHeQrZ3hh2XLUyqF5BMw8HTsNyyqFgCUw5gBRIic5QGJMdyPxt9fUlI2ljwiQz5BQMVnICbuWgJjdHpuLOSWlaw08RA/0QpcOfSVEajj5BmYxwVrXAIeopokSGSuHDENqgV/zDfSWsl2pTSRXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rItmi9xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rItmi9xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5876C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752081593;
	bh=rdcBoWisjXKVALPaMzBO7WPEm/Z4kw3O9GTMqrrD6VY=;
	h=To:Subject:From:Date:From;
	b=rItmi9xvkwTPi/WWw+CR06xSM4enbwLuEbabS/5Wwe5rzNXeL3nMYqCWoQqN4MgUl
	 aYEMYjKjFiLPM4Z1uAQnyUzSYksLeHBxMynrOMDS4QZfmMDvzQ8KXR5EQhWwWtpksr
	 4m+1nSZOy4MXPy8jiOJpXrgakJeagzJRR1HisrkMykkIlA3TheV3IDnKjRzkp5WLk/
	 hPnaWTVWQbDwOf42JlqifqDXeC2g1buVlFQt7/ruIhOVS/fIB5D3LEEBXfmB+G+kfE
	 rTulsr8Jpeh55cIs08NOsDblmMYOMXhEulfM7V3WUZNSa6ukqCl8ZX88qRs+S8O5kV
	 zh0SeT+N2CZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FFEC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208159358.378.15506943050644067310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5e132a2daaa0b9cf1c1ea983481c1add3cf48f0e19541c8e2770291b95d4be7
Date: Wed, 09 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752081593

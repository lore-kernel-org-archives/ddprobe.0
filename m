Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 024B515855C
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722495354; cv=none; b=SJRQkOfe59v1kYLPc3o9nufnBeqo7zpaSeHqzLZQRs1YrK3X0bVnoSE41A2tzFUr3kZw6q6OAnMtaGw6ZwLSkERj8lhX/Dwky+KQQIBZ3MFSqxgpGX+lBtus1HA2f6DfGBoUl6etwNhR9McOuPsCbGedOjzDGB8OhQQJSgVlgWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722495354; c=relaxed/simple;
	bh=KdfqiKxR5rHNLVqcs4GHdAOjpdeFyzOAnd0bFvj4gBk=;
	h=To:Subject:From:Message-Id:Date; b=awplhRMbqTNn2M0OA9H8m1P3X7z7re5jTR2bAdHzDgx2QkG6tS2AnUGgrnAXYIwHksxDKBfWhwL2Jp1ZNMox6N9QhozkTNEaP2n9pNGkKaWxtcNOKEtCG1+X2EEksN3Mf8irjB0PRBAX5M+NtQ5prsiL4XUf9Uw0elxvviPIBT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8ytjL9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8ytjL9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7453C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722495353;
	bh=KdfqiKxR5rHNLVqcs4GHdAOjpdeFyzOAnd0bFvj4gBk=;
	h=To:Subject:From:Date:From;
	b=P8ytjL9l9znmT5dDbV64IMEUGZ7D5UowbR5V8y5jB1x4bQmM4UayD8ziRO1fXa4Dp
	 YVT0PvTesO5sPPRvXh09AK+gBu14uPAL8czWVoP0mjLQqgqCDjTR1Kt35sWNlY9990
	 zxJvx98wgMKZFaSThjtJZIizYZXZ6gLPrCnxMqRh9obHV4z8gEmTfOBmt34WAVV0ua
	 rCNTcFUroCVFknPCiT8iKWwIHYlZ/3qGOgIWpF2bndk3SU+9pYX6LZ96xVNV1PTkXs
	 z5Y7hmilX7BRPUkk/flEjFG3HbpS2nhpTUiArMmAObqhHZTJi8GYkGugWK97QvoK/s
	 Fq55GJ89kGk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4D8C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172249535375.10499.6350133258260928403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a1e2c3b434f22d9585b420e50398fd55c3e78d56b9e6e27c5e3feb07cf3cf4
Date: Thu, 01 Aug 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722495353

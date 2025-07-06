Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E843C1096F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751785194; cv=none; b=m2tlS20ui2f4DDXQbbYB/4Eb1VXXkjRbry2/aVFphVm90w8sXKjdeHeJk2GGKre22znzBwZkzzO5/RH3iWbR74A33i5/XxDezJY6AA67rX0uNaLq0bnSPOUDFhLOYm7rRZvQhP3Qo9yyxN640TzwzoeRj3lIBRHlQhJ3rsjM9lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751785194; c=relaxed/simple;
	bh=K+QAkcWThIsGZlpK3Co3G/80JJa7feYoE5NOtbau17A=;
	h=To:Subject:From:Message-Id:Date; b=F86878q4/O+d2yIOViOU/6D/E1SP49HlSvIoHRoPLJ8TCln7pzi6p/j/pDRYCTNtMF3ABC/MHwNq3DoJ6VVxm3aUeSKpK19iW3o5y2XGul5qp7ohZxN2pBHvtaBcgcw8ehzwhv5fr9gnxcIIhQJ7jdiD95vQwP9JSrQdI7S8y78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR5Dtd7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR5Dtd7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6FC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751785193;
	bh=K+QAkcWThIsGZlpK3Co3G/80JJa7feYoE5NOtbau17A=;
	h=To:Subject:From:Date:From;
	b=KR5Dtd7KfWnlm7GzYf6RoVH2bCdLH4OlSW2rjZUzFliRzFrpRvEy8sHLAIOlrJ91d
	 R1YFg6txF13MUwhBXGhQoIQxdk64UDvuCOGPjQ4HhZniZ4rx6J81iwL4KFcH5hNS/0
	 wG+W12AUIxtbpgNXh5Wc7nrnsW1UgSchZuM/Gt8YyMfNzwG8oxsh8xfsHTZoM1tM4l
	 7exX94r3WKyGWyWtsYpEcKnVFGkf/vjqJy5oImxqa8L73bOVyBNPf8Bta8xbRvqepV
	 QV1VOzNBGEyKR/wZ02nDkgadzB6+gEtz+nH6HmOme77bDRJuAXyB9Rp8EQ8GMsF3X0
	 bsSwinr0RoeKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E228C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175178519357.19755.11766662412223686063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd5fcdc566e43936cd4f9952cf40d0bb4778549caf5d35a46d441cc3e8e2444
Date: Sun, 06 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751785193

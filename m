Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD971946DA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746161996; cv=none; b=UxX0RD3aWVQhMzUUgWxxiB3YxvIIVsIwNjPTU/OljzEAIm/CEbCT9CVWkHlvpaxdcVDUWy7FlnLM4wlxfuNNwLXxqv1WHiW63CliqOD7yccW6/2ktYAaclqvkxxX6yP38/FD6nHP0AsBNnkFnmy4vYcYlVA+/b2Xpuh8ksZznBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746161996; c=relaxed/simple;
	bh=DHdEfbAh82udklICpkYHm2z4QsITHuDi8S91O/0ToqA=;
	h=To:Subject:From:Message-Id:Date; b=th+EdAONKgZwkhZP0GqDyawyxfyZ+vMWJdbIjHBfIK6U4bwT2UQCvIvcaui0+d0a5DewnhKyl2AgvsWPLe6xPc9WXnMUdujib0TjocFED1Gw4Reqo51RVN3HVyLL2s9/LBOuPQ9BHJY6BsepZ+QKVdRd38stxUPQjV7JyTU/lWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W6KRzpxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6KRzpxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3B4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746161993;
	bh=DHdEfbAh82udklICpkYHm2z4QsITHuDi8S91O/0ToqA=;
	h=To:Subject:From:Date:From;
	b=W6KRzpxywXJXYBY8hA+Z3aDqRIDO8xEdZbt7G3MVPazSaeeWybekTwbYZycR9P+tU
	 debj6PLnz0/NbMQ1rGQaoPWGpj/AH9DjI5jNCRZpw6DACqYCTfBChtUNe8PfQ3QajW
	 Q69dVeVdlatY8ZAsYF8Bszi/xZFJlJSoS0lZEsqL9rfQDK2LxcmFjHE/onW8u8sKcB
	 AZK/JXWVl9zAfaqq49i5hygJCsplC7sIuo5iQAcRUyUPwAGtnSXXQV7kAlrfEFJ/20
	 FjcMrbZXh0SDt2ABVxxS2w2tRbsNgR/1nh/+ZGEHz0XF3uueOJsN0IiixBvmweRKFH
	 zNfF+rnWC8xrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79FC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616199358.3880.16806921166731441285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff7a16c3b61a65cd8486e326d839b9acddc9aa3429795577a697b9914a15d82
Date: Fri, 02 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746161993

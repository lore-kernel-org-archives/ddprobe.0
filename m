Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B739395AD1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782886114; cv=none; b=ltHJw0n2v6PprQCjJHyy/bwHSqbaCBfqn9QpiyMbpDf51iUtF9Bhe27LdjKtx4P/uIo8Iy5uzTuYIbkqcoRWz/hUYKwrhP5v6JhmwG+KfXEzXPLBz2kqainCVHNWbj3grNa2Jsy3z/cRsANONIwHP+2q4E6NEF8JmkWAzRRAeig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782886114; c=relaxed/simple;
	bh=IOtQLUeJmnDByxr3Ru5MXZlTixCXE0f2t+CFERnfYHY=;
	h=To:Subject:From:Message-Id:Date; b=Hdxg19nx8EuS7ut2tpoAPgYO1rUOl+zfEjKAdo9kLvMZUyE/d8byr51wVXTmEjcn+fzxvDPe9yecje/tG1UA+1ArSZEyaM7/3cRNFsDf7CVjLgvw6YvrRNcCPQTcDlqksv0S+8PzJ8Kptzf4OwBF2dW+JjdPVx+T0jZdYqPRs8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTycLN32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTycLN32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A87C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782886113;
	bh=IOtQLUeJmnDByxr3Ru5MXZlTixCXE0f2t+CFERnfYHY=;
	h=To:Subject:From:Date:From;
	b=XTycLN32KZQ+MCDCVYcwNwuMdZyRJ0hrbNyVmMyBhJHN1dAJKQEi7FDBmGW96QvNR
	 a+Adi2E84Mteu9wi2DVt8Xodo+JRx4vKL8pJMyyEvAVx03mBDko7xHvixfk0Ki8loe
	 rPqTUFT5bY0CkOLfSuzApuSbTWDmuGWoF15uWGgraSPfXjD7bV1GhRBzy+oKYEjTZF
	 L87jfLqscVfg7j2U3KD0s5DGgxzKlBGErxTI6hPOV2thYaPPtw2heEWktXyYzd+JhO
	 qSBkmeg4ti7/aivQseqg+zNPuFGWZUdM2eYgxNpR15MCzp+Du6odr1RTzhKPv2j3JP
	 dSoSn/hu+C0nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB741C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288611369.31447.3556256619211506701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385988f875996f5ac3ae1bcf6718174535045637976a4b600b65706900a794fe
Date: Wed, 01 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782886113

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E5C14A84
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722757554; cv=none; b=am2Dk++UZM/6M0pzObAjK+uQe0mG2FPWEmQSe3U68OpSSmJ/SZ+scHgiPEsRGaPufsTVaJjNUwm2+nZhB6ixRZxivTlL29xTiI9e9jdE1U6F1BSidSt2ourxnShXUhke4JRpr3VHMvdOIeQv4eRQ3sOWBc/ZF/Sbc/3Vt0JnV20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722757554; c=relaxed/simple;
	bh=7Q8o8OVQ+6KQCUSP3GvAOy2coVgH8LzrGzMKDWbRwbs=;
	h=To:Subject:From:Message-Id:Date; b=EsCcI9wnxOFxpef3HZT/VS+nm84mzfJlYKYCGHgagDtycY0p04WBvM2nDVQ3VBCdMTBtwCwUox04LMRZQreQ9w9r5pmQbu2tTwVFnlcD3AipJZI6r+0wPtXLes6Ic1Yq4AHCfAe4kmh+xY8UWqAtRj8ulaIhm/8brOqkkQVpu8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPjYn/cQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPjYn/cQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD87C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722757553;
	bh=7Q8o8OVQ+6KQCUSP3GvAOy2coVgH8LzrGzMKDWbRwbs=;
	h=To:Subject:From:Date:From;
	b=FPjYn/cQbZ1wjcf1eDKL+C9vTRY5pQ+IrdgPKGqRTkfZ0mN7d81/hNeJ1u37TBguR
	 5zDG86PECBByw8K8Rnl17PWd92v4iv5z1VZhNLwXLLKyWhJUURMH/xkLUTP0wFVcyR
	 gKjVSZrGB1gdih2yhmkcfUYsDJ6NOG8caBJerBZ4WrGfbm7eTiWRKlKIabGNQmd6C8
	 fjG2dzy+U5tvaSsClOF8HV6GSRVSXzEKMSC1ERFY8+3Xba8BlLzo1/91XE7kVePeKy
	 NKxM4HfzZnFnZyrGN5JHJpP0smbKf9H0Ehk7jvOm/FmF9SdbOZkE6stsD7R4EiyFoh
	 a+FDhRj+GIlzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A2C3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172275755359.10141.13884677400899999117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9082b867783ccbf2a68b6949b5a11fd7133db5310753fe0ef52f2b6314fc3e41
Date: Sun, 04 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722757553

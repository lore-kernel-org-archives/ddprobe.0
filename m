Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4211FF1BF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749973194; cv=none; b=nl7BfRRRfV5Yg9I82X6K07n/PXpVfxo56n3LrIsKItWSX0IwJ7p6KbUAavQc5193o4j6GfX1gN3/LIPWEpifEQ8VHkMEaad8aCTDN6vqL1+qXRyrpfjBh5yxWlz366s1mPqO0UF1mY6+irqn4sTWeQOSz8gmAKEywyqyR+cwB1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749973194; c=relaxed/simple;
	bh=ttN1+JzCwWzjTdDjh5rPpjLGT6X9wBfjdeoXsBVpha8=;
	h=To:Subject:From:Message-Id:Date; b=upTuIcoTmwubas3Yqt00xoIXJXTvnVeelTAR5vGOdaH6u43esYa3VhRQupgtJLhA1ABNlAYvxEHWEYAjunkgleDSpG4c1j6Ga+wFOu0iiFhdL1OE7SlxBsV0ge9Z7NTOoe6IPvcw7fc0a9sztIFM2Rf2t3+xzG8QNs14G2Z+MUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTdnvyVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTdnvyVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FDAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749973193;
	bh=ttN1+JzCwWzjTdDjh5rPpjLGT6X9wBfjdeoXsBVpha8=;
	h=To:Subject:From:Date:From;
	b=KTdnvyVqRiAWzgmHpagU2TeE2f/w80vLLMZFtarRi5iaKgE0JbZMfH5v1cuaK47Xr
	 voS+A+mzYakczjXfQh9xreE7YhhP5JjYrgFG1XEngWUFs7mKGfFoq/sPip7V7mtx05
	 NmXuQWv6w8tYaDGaXx2Uk+tksM+8ajPKDInIU3jIz1utjKEgvMpp8uzD05rbEWe2b3
	 oSSBoIlOvsy7CmYqPbmED6Zp/NXQCpUouLuABc4muOfe9VCDBF6d9NYYuH6+5bqQFH
	 8tuNMYLUc0oiVQC5uYv6MiFNhFtu3pQ/7/tgEzKKNIZFxIFUk3VXVwIBUk3j22aoAw
	 71psR1MF8Jhbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A18A9C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997319362.9197.6923709212809884753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7aaa48523be44fbf1a4a8b04a8f36790577fd509cf0467287daceb9d08e8d5
Date: Sun, 15 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749973193

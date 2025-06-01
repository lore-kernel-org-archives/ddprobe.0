Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E407136351
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748805594; cv=none; b=bh9xNWuNQyLo4gDqQQh+PWEcBESG7bCQUZXav1/1C/6Z3TAk1iTpebS4raNLAt6JEzUf4q5BW7G5sxMb58xUqKRUviZFdIMuGT0PwVbzbXDKXRTY02T6PS7uq/FA0ZEkpcd8ISJ/dtxAphAyeRQeWyDj69aOdzTks/FbinLWkPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748805594; c=relaxed/simple;
	bh=527z9qgfNe36vE73lXPT3mjWNp+1AsbQ9yMWL0DJ5ak=;
	h=To:Subject:From:Message-Id:Date; b=ZuNDPQnHFr+wq7valtu4mMjzCHVrOTeTBM/wJB4M1Nk3mLT5GozBdF8nRinHSC4GeKvCUQD2+fpwCe7IkNeW1GfFqKY658p7TGztBuLSdz4+vde/xnzcntjzCZkp1+LVLl+pVNsGBCQG4vB/pN8tTgixlrwHwh/uR1mQOgjWx1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5wjZ3v9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5wjZ3v9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3261C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748805593;
	bh=527z9qgfNe36vE73lXPT3mjWNp+1AsbQ9yMWL0DJ5ak=;
	h=To:Subject:From:Date:From;
	b=g5wjZ3v9LD0ryaoCugvspR4NKg/zLlbNXDJmbqVDCOQZtYu2hUuhAR9Ce1gIbNRxZ
	 sHdkpCqPwFFLWBt+m95NrNUo+a8hkV72Nj2S0wTwUqvnnb5CGNJP3BsDfB0Ng6bsC0
	 3qgZaakW8XGaz98S+4huzyaTZIAovLPhQsmkQyl810BA+VqWBc+9i9SbcxO2It0YQL
	 Pv+Y2gNHz7zcln7JU7Y1/KgQ021fHFywNRt48LUDbD31cjUToUjJ16xlk2ht+OZjkr
	 Btx1C6QL8gO2xJ6eK9DOFV5Wj9c6i4SWp8304vOJkin27AZ4K6TxRv9Pi/ztq64VS7
	 dPmCnu570Fq0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF82C5B549
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880559358.27453.12467609266177387225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766c58f7f1e0216456df951625de68bc923be79e7e0b19af25db0dac5b3eb44d
Date: Sun, 01 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748805593

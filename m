Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCEB2107
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723134354; cv=none; b=XZpwgGfqEga79ghMAt2koBA2k4pcIgmr1ky9n78jnaceEqPP8tDEJN1FYWlHrFueU+wiNyR8S/b5036k3NzFv8QhgGuoFlPSXddLNffefseNIin3QTqkUiuD3RCAYY1qep2lSIcFHOJpFP9jF3MXh1gpQK1wtjSXzWHA+EWFFl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723134354; c=relaxed/simple;
	bh=YnpqdBnM0MUtFmQpqDdqKNlebmiF0VvD4XAxK3tdk6U=;
	h=To:Subject:From:Message-Id:Date; b=mHdBMzeFPEDZTQei5xWsLPV1sM1jnp21UiEp28FUYqk7NGrnlJjTh3UFwWaHLYn9+M4dXcbBV7eElniUsSzO8I7sZcUmDBp1gYi8Om5VIlbWxNRcM4RF89/gFLS6vvL++F7/tuRD3+pgjKFTIeYmhEamFMBYBsN9cuaqNa4Ukkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhFboviU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhFboviU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EF3C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723134353;
	bh=YnpqdBnM0MUtFmQpqDdqKNlebmiF0VvD4XAxK3tdk6U=;
	h=To:Subject:From:Date:From;
	b=BhFboviUOCMj2wFjny87k3nMz8gCmzbHAM2O4khmzWLskirPB1MyM09Rchn/u/qBH
	 JeLiqzjoK4OSuR6AuOvv8hlDNaAUMP6FVrmqZWQHMZpGpHwTr4t6dFrX1kaMDDtQ4f
	 2Vnw/O9W3zgFW0SRQOf4WwRfxuRYdjjQgOfS/Utoj8uhsmLXPHYb+S7ny0yPx7e/PB
	 wYMrVTxMnfUDseyBBpsmOOJ2OSOivg4zLCPBRwUaAfB+1g6OAmmFP9A6nhenIfRirm
	 zoc7Ik8GLKlipfzptOdxULtKyzqFN3C6evahirTCcH1qUqTIXMFiyt8dzdau7nouT9
	 qk9E0dlu3OmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7518C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172313435367.24971.16731718369329760566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 427cae9700a6c654ba2acb3ae2b9506ef75a425a620b5251023bf80ad982bbae
Date: Thu, 08 Aug 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723134353

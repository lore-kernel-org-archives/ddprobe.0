Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307DA194A66
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739605134; cv=none; b=KbRQ+zRx4x6zxt3c8xqBCwQGcCdpu3M9gu5cDmTx4YXvFQEqLLaFFrFh7imxWso11LwowNumnyouTsxwaPjjrUiH1bjMwKZRVc/t7UoHFUpXTkkMfP8qOImg2ZED5Y9kMZKP0DC7aVMnWF81WY7FhgeVrE2+FSLZb9SqchIbr8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739605134; c=relaxed/simple;
	bh=E30Q4lRxdKVSGkpmDBTMeL7sRsbe7Cg1mMuBO0glWNM=;
	h=To:Subject:From:Message-Id:Date; b=HHDWYY1CSW8huezPu8/2xTCaj4gDTNNIxpCaG3lWAa/zy2ftg/Z+rajIHTHcYGSdkr4MCrZ8hExd6wHzH8Nl7ZjQ2KKNbxlKczbZoNryL60muYr4dMeixym7yeckzK49cKZdRTroGD4MDiNclpcSydRcwG3ixPTrpZV00Xl8788=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R3PXzqQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R3PXzqQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4999C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739605133;
	bh=E30Q4lRxdKVSGkpmDBTMeL7sRsbe7Cg1mMuBO0glWNM=;
	h=To:Subject:From:Date:From;
	b=R3PXzqQ9RUE2fq4IAIYXRtTFPBUzGRwSc2MLigoNhXUw+vsbA2qDE88bEFlJYhtkd
	 tj4A+dFPblETNHf3xduadEZYM+BUlg6P5as7Ne7MGscpXPduwbvAPBro2xPj2iCBUp
	 lApQgRyJJqEZceHHk2lskOS0B80++9RWWBVHq4JQ1GPINRtnkS6RXi4o7Ib3uJ5tXZ
	 2nuSGnRmtOZrrsKQLgrDELeIacDZO3wwZZ728jg37jV8ofhmYZMfM25oqwdnDbSaRG
	 H5FdAwq8y/L5PV/whRf4U1IqnDAIPLbM38sGUdLvHEGC/mIcbrs5JraGRbQ6ospCwl
	 2tlQ3nei6zJiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD8C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173960513358.1911.10760515907730798110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcad5c86d0f928827cd832eb475c278c309063604c24c29ed17cbcccc7d18ff
Date: Sat, 15 Feb 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739605133

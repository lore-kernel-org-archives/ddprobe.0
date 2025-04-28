Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391A51D63C0
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745824194; cv=none; b=PbKS8ogVuDgcnsPK7jjSCo5bdO5NNiVQbexMNqtXjZDCnNkd5kCbxxeuQVoCdoSXcxe3RNAgK0tj9EiqA/B4FwZORZpaeQDcXCBfosvsEvdmUgdEWzet4lMHYWk4vshz4E0WWaObj9hNAZun1ywpCZL+7I6kA5orP/48EWTg+L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745824194; c=relaxed/simple;
	bh=Ie/lE9lM6gFLiCmHC7jhEwhoK7MBEC0juYUJ7dASYLE=;
	h=To:Subject:From:Message-Id:Date; b=V/z75ph9rM61mr48ZSJOSA+ttDPOMuKtYhEolyKUqaEpF7Ng2veBsyit4/UkUNtoEjZl4mORzi4YtBefOjDLroX0x67/YnM26YKBglcsE/bs/80NjOHIUtUZ78NBk/4K6IqEmi1jbDEuSSuPJ9uRm2ctIzCIvy3qfMQ+ShWxFdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2Sfjokj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2Sfjokj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC9FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745824193;
	bh=Ie/lE9lM6gFLiCmHC7jhEwhoK7MBEC0juYUJ7dASYLE=;
	h=To:Subject:From:Date:From;
	b=F2Sfjokj2o81gCJLs1dneowvaX1aTfhQxOnuRVhXTgf8iTpNjrQtaqD0588I+cFWx
	 b6s60GkNTbnigC+K7ZhPR5y8XFUYeB0oes9PML5TAxrdcmzgaJ09DhxcfG2fGjUbv8
	 m99No/iSX4WXBQ7TYVfysYbXpCmKYJecSMmNvFoCc+64YCeuFTg/m0VRQW6ICpk5/i
	 LYdl5Xw8UDj0Uvhs5WEzxpZdpYVcrikYB6rCCNYzb588qzCi9BKsNlgua897yRf2Ef
	 2+2KUjMcaMP8JrEEd9QH+GUZerV5CzqKtpByjbtQCyWi637RtrVo71JJB7++XF5TUT
	 UIA70TaHIQf+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFBFC369D9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582419357.28851.15454312667339340125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9dbb242a066b3c128e3686d461224bf346fd7dd6930e16b1bf4b606b3087cbd
Date: Mon, 28 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745824193

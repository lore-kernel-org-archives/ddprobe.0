Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DD133062
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737149754; cv=none; b=HSxnBcYUAz+WWZliuR3kkOZCOMdG6IYmD0x3+eeEmqLbMeDdRMzouTX/omSHxCHYEj7pdE8tx/6Krvnt2g/krEIGGmGV1Q4s13K6afYe4/v7LoXN1NekFeJ6QPNAGhYMy6L01W+dZbMkmQ/BIcH0+HPLcSs0QZHTWHVrBKbRUs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737149754; c=relaxed/simple;
	bh=u3Ot5eEaaKprFsdKJvgqPU65bRTKdj8t2LdR+YWiQPg=;
	h=To:Subject:From:Message-Id:Date; b=F1cMxcMf5nhKNZDRfFPIOq23wbV06c/SeCrHOkr0tBl3guz3ykzG/9WQDqZqguoX0T0ajnFJo8MPHwT0R9zzcMI7gjuJJg9cd6+sjZJOc3t0AHndtg89IFeK4n+zi2G6w1RA/K+IAUAWREHY0eU0NkDYNiavMNPcp7apYd32/r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2goKQoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2goKQoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A419CC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737149753;
	bh=u3Ot5eEaaKprFsdKJvgqPU65bRTKdj8t2LdR+YWiQPg=;
	h=To:Subject:From:Date:From;
	b=i2goKQocjfW7AO5EjHW9osk6nRg5Wr3sGl7URoZULbd7zus1Jyre5gZpIJJ+Bs/tU
	 XG9X6KAhSH+Xmt7bnkwnMLFSL9FiAXWcnewKAEARn1n0vW0dD/0XDhl5Kc7Ym3831N
	 NipC3fz2SMRvyjYDnMpJ94Q0C0AUe7irrMWcIbfABwj1brIpDkhbk0non73j+YIeYh
	 x33FqTUjkK6kxOIOLt06Tz+wEC2k7OJlp4BbN27vnd/C9BGnDZeHi50zXwktPO7LOe
	 +0cYbqTyjzlwOBv5UhISzkZ8YC48I6avcMRjq/VWvlTv0l7aKMh6HUb8aKV55RUxVG
	 jqK6wYA8xa8WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91157C02185
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173714975358.19398.6582435137998830350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24467d66b5f2e2d3ecd245721adaa5c9e11140ffd4c44da36270acfa6b9bff7e
Date: Fri, 17 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737149753

Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2263B1A2632
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754113194; cv=none; b=Gr9qZO4duvBMhhlYTlilW0V6zwTZeD21UD3Fp0qu/HD29EbXbxGV1MiANEC+Qvmja39TF0sezBhNRc5Mndx3+Mkd9JWqHFdHKADdzxy+KiIlUOBCRTRSQaxawUrZ+BPyeTOxxoqz7g/+k/fAG/0WVCSirEk7ZkzZpxFIbQlAZ5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754113194; c=relaxed/simple;
	bh=ndv/581Qyracy2Dz7qZr6lRNpgNhjqPQqz4OvXMjYkQ=;
	h=To:Subject:From:Message-Id:Date; b=BRC/9HopmVd98qLTru+4JGF0sic7Y4BuwyFPDuM933lmoBXJCWyOuQlQnvHGTEhRNegvqYI7uQS9NJByy9Euqhh4HqATU79cmRh1hS/qmDjT2YduX4F7GQcFi0UVEX6grVEdnJTO15yfCu3kVWGwpEbdlh7s+Uz1i/DbEwBTA0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMSTltVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMSTltVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0782C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754113193;
	bh=ndv/581Qyracy2Dz7qZr6lRNpgNhjqPQqz4OvXMjYkQ=;
	h=To:Subject:From:Date:From;
	b=VMSTltVSsmWW4hdkV+r1aMA+DjOn9IQPN+nibdFw03ukIh9GenyMIFLJd5I9B8sfs
	 la78ExhUbLRVbZKhdGkAmzHrlf4eApFLgUyD1HBb6MBDt/gsemrTHDhbjT7yf9nfLJ
	 uIQRnvzmr1EWZRrYA94OnEhCXOcYsPnz+q0Zu9Ao2WXOcnT9NGtWQ5T4nAWPe/3U9M
	 4sv4cQAkrS3tkO0ucrWEXNigpixRLdv6cKAHUmD9aXQkQF5yIrBM+FtgOTaWprp1HE
	 jpCjz8kptR75yhBy1brtFc2ZaVVHR/wUuRM9sMq51ODZTfMj2q1Ze2BtkSSlspY1Sm
	 4j6RRNk5RxalA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6FC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411319357.19662.10690723096561145662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34efb3db10e8f988982df12a1199c7ff8dc2639465fc69a962453792265a06c8
Date: Sat, 02 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754113193

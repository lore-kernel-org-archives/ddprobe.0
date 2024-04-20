Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D51205E26
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713592823; cv=none; b=qXxSKkYzwwxT8U1RJgdoc2iDzd07/TjTvbz2kEt3Rb9lB59DfbCoyiyLnzZ5jwaIjuAQX3qaew62b7cIseld6iTOF7ua9lBvCJWFfdoyLTBx7WwAYA47ve6LrB1pTDUEcIRKMGZ8qpe+sISjpfAP4anZ3UyGbaDIxuCcN1Dojd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713592823; c=relaxed/simple;
	bh=qH5vAboDwjjVmTP6PqjEL8WGWICIVGHZ4ybpHbgtDDk=;
	h=To:Subject:From:Message-Id:Date; b=L1dS29/UVfEwI7zd47pGks+wKn6hkGGfIteYKUisKhNjBVpMnCPjvVXiVOlRtXQjBEn2d5osS7xi7FS2kMA9RiJ1WbLiSxHav6FZqHJJS2sh4WN/gCOuz/3/oQnWtt8HuHGkHibs6xv8qdDLv8MZzM7MK4r6F52qJO4DCM1Tgf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sh9BPO6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sh9BPO6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1AACC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713592823;
	bh=qH5vAboDwjjVmTP6PqjEL8WGWICIVGHZ4ybpHbgtDDk=;
	h=To:Subject:From:Date:From;
	b=sh9BPO6x+sBguUA9yGACTJp75DEluCQrxuzz2nIjmJ7KLbrdEVyUKQIobxvylVb7r
	 F+bgBj5FR5fzPr5lYt1Zg07qNwko5PkT5kJ5W+pEGkZXUh+o+CKxDuqSajrLmYxFhI
	 I00cEoocRN0zqdRxPfxqJCESuU9kejA8AuuqhbKNTzpfVktxCN4Pe+HdWe9SLQnMFh
	 8Ek4TPxNqubZjie2mCCuLKeH+ZuIjxtC6edDghZ4B6EC+lT8wRJ83JO4IOvMSowyS+
	 o+VI+Xe/CudrNW4j2f97HwE1+irZMTPAdbwd9+/27fZZVoflT1lhMt3sy8NC5lXG0E
	 kk0fC8jByun6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD5FEC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 06:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359282279.30722.14494033466044174522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ade892bf38df53710506eaff4e422893fdfacec8d7b5af4ce3e7feeeaa2549
Date: Sat, 20 Apr 2024 06:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713592822
